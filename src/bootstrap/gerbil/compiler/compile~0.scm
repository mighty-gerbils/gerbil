(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712124235)
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
        (letrec ((_%hash-e143700%_
                  (lambda (_%id143702%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id143702%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _%hash-e143700%_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp145069 (list gxc#::void::t))
            (__tmp145068 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp145069
         '()
         __tmp145068
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args143696%_
        (apply make-instance gxc#::collect-bindings::t _%$args143696%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp145070
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
        (__make-promise __tmp145070)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx143688%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self143691%_
                (let ((__obj145044
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj145044))
               (__tmp145071
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143691%_ _%stx143688%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145071
           gxc#current-compile-method
           _%self143691%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp145073 (list gxc#::void::t))
            (__tmp145072 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp145073
         '(modules)
         __tmp145072
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args143685%_
        (apply make-instance gxc#::lift-modules::t _%$args143685%_)))
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
      (let ((__tmp145074
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
        (__make-promise __tmp145074)))
    (define gxc#apply-lift-modules__%
      (lambda (_%_143658%_ _%modules143655143660%_ _%stx143662%_)
        (let ((_%modules143665%_
               (if (eq? _%modules143655143660%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules143655143660%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self143667%_
                  (let ((__obj145046
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145046
                       _%modules143665%_
                       '1
                       '#f
                       '#f))
                    __obj145046))
                 (__tmp145075
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143667%_ _%stx143662%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145075
             gxc#current-compile-method
             _%self143667%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords143674%_ . _%args143675%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords143674%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143674%_
                  'modules:
                  absent-value))
               _%args143675%_)))
    (define gxc#apply-lift-modules
      (lambda _%args143656143681%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args143656143681%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp145077 (list)) (__tmp145076 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp145077
         '()
         __tmp145076
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args143651%_
        (apply make-instance gxc#::find-runtime-code::t _%$args143651%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp145078
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
        (__make-promise __tmp145078)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx143643%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self143646%_
                (let ((__obj145048
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj145048))
               (__tmp145079
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143646%_ _%stx143643%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145079
           gxc#current-compile-method
           _%self143646%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp145081 (list gxc#::false::t))
            (__tmp145080 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp145081
         '()
         __tmp145080
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args143640%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args143640%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp145082
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
        (__make-promise __tmp145082)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx143632%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self143635%_
                (let ((__obj145050
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj145050))
               (__tmp145083
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143635%_ _%stx143632%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145083
           gxc#current-compile-method
           _%self143635%_))))
    (define gxc#::count-values::t
      (let ((__tmp145085 (list gxc#::false-expression::t))
            (__tmp145084 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp145085
         '()
         __tmp145084
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args143629%_
        (apply make-instance gxc#::count-values::t _%$args143629%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp145086
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
        (__make-promise __tmp145086)))
    (define gxc#apply-count-values
      (lambda (_%stx143621%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self143624%_
                (let ((__obj145052
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj145052))
               (__tmp145087
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143624%_ _%stx143621%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145087
           gxc#current-compile-method
           _%self143624%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp145088 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp145088
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args143618%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args143618%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp145089
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
        (__make-promise __tmp145089)))
    (define gxc#::generate-loader::t
      (let ((__tmp145091 (list gxc#::generate-runtime-empty::t))
            (__tmp145090 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp145091
         '()
         __tmp145090
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args143614%_
        (apply make-instance gxc#::generate-loader::t _%$args143614%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp145092
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
        (__make-promise __tmp145092)))
    (define gxc#apply-generate-loader
      (lambda (_%stx143606%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self143609%_
                (let ((__obj145055
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj145055))
               (__tmp145093
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143609%_ _%stx143606%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145093
           gxc#current-compile-method
           _%self143609%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp145094 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp145094
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args143603%_
        (apply make-instance gxc#::generate-runtime::t _%$args143603%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp145095
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
        (__make-promise __tmp145095)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx143595%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self143598%_
                (let ((__obj145057
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj145057))
               (__tmp145096
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143598%_ _%stx143595%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145096
           gxc#current-compile-method
           _%self143598%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp145098 (list gxc#::generate-runtime::t))
            (__tmp145097 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp145098
         '()
         __tmp145097
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args143592%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args143592%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp145099
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
        (__make-promise __tmp145099)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx143584%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self143587%_
                (let ((__obj145059
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj145059))
               (__tmp145100
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143587%_ _%stx143584%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145100
           gxc#current-compile-method
           _%self143587%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp145101 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp145101
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args143581%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args143581%_)))
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
      (let ((__tmp145102
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
        (__make-promise __tmp145102)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%_143554%_ _%table143551143556%_ _%stx143558%_)
        (let ((_%table143561%_
               (if (eq? _%table143551143556%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table143551143556%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self143563%_
                  (let ((__obj145061
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145061
                       _%table143561%_
                       '1
                       '#f
                       '#f))
                    __obj145061))
                 (__tmp145103
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143563%_ _%stx143558%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145103
             gxc#current-compile-method
             _%self143563%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords143570%_ . _%args143571%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords143570%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143570%_
                  'table:
                  absent-value))
               _%args143571%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args143552143577%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args143552143577%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp145105 (list gxc#::void-expression::t))
            (__tmp145104 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp145105
         '(state)
         __tmp145104
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args143547%_
        (apply make-instance gxc#::generate-meta::t _%$args143547%_)))
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
      (let ((__tmp145106
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
        (__make-promise __tmp145106)))
    (define gxc#apply-generate-meta__%
      (lambda (_%_143520%_ _%state143517143522%_ _%stx143524%_)
        (let ((_%state143527%_
               (if (eq? _%state143517143522%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143517143522%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self143529%_
                  (let ((__obj145063
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145063
                       _%state143527%_
                       '1
                       '#f
                       '#f))
                    __obj145063))
                 (__tmp145107
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143529%_ _%stx143524%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145107
             gxc#current-compile-method
             _%self143529%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords143536%_ . _%args143537%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords143536%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143536%_
                  'state:
                  absent-value))
               _%args143537%_)))
    (define gxc#apply-generate-meta
      (lambda _%args143518143543%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args143518143543%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp145109 (list)) (__tmp145108 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp145109
         '(state)
         __tmp145108
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args143513%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args143513%_)))
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
      (let ((__tmp145110
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
        (__make-promise __tmp145110)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%_143486%_ _%state143483143488%_ _%stx143490%_)
        (let ((_%state143493%_
               (if (eq? _%state143483143488%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143483143488%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self143495%_
                  (let ((__obj145065
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145065
                       _%state143493%_
                       '1
                       '#f
                       '#f))
                    __obj145065))
                 (__tmp145111
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143495%_ _%stx143490%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145111
             gxc#current-compile-method
             _%self143495%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords143502%_ . _%args143503%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords143502%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143502%_
                  'state:
                  absent-value))
               _%args143503%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args143484143509%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args143484143509%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self143412%_ _%stx143413%_)
        (let* ((_%g143415143432%_
                (lambda (_%g143416143429%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143416143429%_))))
               (_%g143414143479%_
                (lambda (_%g143416143435%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143416143435%_))
                      (let ((_%e143421143437%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143416143435%_))))
                        (let ((_%hd143420143440%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143421143437%_)))
                              (_%tl143419143442%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143421143437%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143419143442%_))
                              (let ((_%e143424143445%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143419143442%_))))
                                (let ((_%hd143423143448%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143424143445%_)))
                                      (_%tl143422143450%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143424143445%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143422143450%_))
                                      (let ((_%e143427143453%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143422143450%_))))
                                        (let ((_%hd143426143456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143427143453%_)))
                                              (_%tl143425143458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143427143453%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143425143458%_))
                                              ((lambda (_%L143461%_
                                                        _%L143462%_)
                                                 (let ((__tmp145112
                                                        (lambda (_%bind143477%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind143477%_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _%bind143477%_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp145112
                                                    _%L143462%_)))
                                               _%hd143426143456%_
                                               _%hd143423143448%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143415143432%_
                                                 _%g143416143435%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143415143432%_
                                         _%g143416143435%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143415143432%_ _%g143416143435%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143415143432%_ _%g143416143435%_))))))
          (declare (not safe))
          (_%g143414143479%_ _%stx143413%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self143344%_ _%stx143345%_)
        (let* ((_%g143347143364%_
                (lambda (_%g143348143361%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143348143361%_))))
               (_%g143346143409%_
                (lambda (_%g143348143367%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143348143367%_))
                      (let ((_%e143353143369%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143348143367%_))))
                        (let ((_%hd143352143372%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143353143369%_)))
                              (_%tl143351143374%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143353143369%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143351143374%_))
                              (let ((_%e143356143377%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143351143374%_))))
                                (let ((_%hd143355143380%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143356143377%_)))
                                      (_%tl143354143382%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143356143377%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143354143382%_))
                                      (let ((_%e143359143385%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143354143382%_))))
                                        (let ((_%hd143358143388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143359143385%_)))
                                              (_%tl143357143390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143359143385%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143357143390%_))
                                              ((lambda (_%L143393%_
                                                        _%L143394%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _%L143394%_
                                                    '#t)))
                                               _%hd143358143388%_
                                               _%hd143355143380%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143347143364%_
                                                 _%g143348143367%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143347143364%_
                                         _%g143348143367%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143347143364%_ _%g143348143367%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143347143364%_ _%g143348143367%_))))))
          (declare (not safe))
          (_%g143346143409%_ _%stx143345%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self143286%_ _%stx143287%_)
        (let* ((_%g143289143303%_
                (lambda (_%g143290143300%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143290143300%_))))
               (_%g143288143341%_
                (lambda (_%g143290143306%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143290143306%_))
                      (let ((_%e143295143308%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143290143306%_))))
                        (let ((_%hd143294143311%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143295143308%_)))
                              (_%tl143293143313%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143295143308%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143293143313%_))
                              (let ((_%e143298143316%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143293143313%_))))
                                (let ((_%hd143297143319%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143298143316%_)))
                                      (_%tl143296143321%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143298143316%_))))
                                  ((lambda (_%L143324%_ _%L143325%_)
                                     (let ((_%ctx143338%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L143325%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self143286%_
                                           'modules))
                                        (cons _%ctx143338%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self143286%_
                                                        'modules)))))
                                       (let ((__tmp145113
                                              (lambda ()
                                                (let ((__tmp145114
                                                       (##structure-ref
                                                        _%ctx143338%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143286%_
                                                   __tmp145114)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp145113
                                          gx#current-expander-context
                                          _%ctx143338%_))))
                                   _%tl143296143321%_
                                   _%hd143297143319%_)))
                              (let ()
                                (declare (not safe))
                                (_%g143289143303%_ _%g143290143306%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143289143303%_ _%g143290143306%_))))))
          (declare (not safe))
          (_%g143288143341%_ _%stx143287%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls143239143241%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls143239143241%_
              (let ((_%decls143244%_ _%decls143239143241%_))
                (let _%lp143246%_ ((_%rest143248%_ _%decls143244%_))
                  (let* ((_%rest143249143257%_ _%rest143248%_)
                         (_%else143251143265%_ (lambda () '#f))
                         (_%K143253143274%_
                          (lambda (_%decls143268%_ _%decl143269%_)
                            (if (equal? _%decl143269%_ '(not safe))
                                (let () '#t)
                                (if (equal? _%decl143269%_ '(safe))
                                    (let () '#f)
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (_%lp143246%_ _%decls143268%_))))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest143249143257%_))
                        (let ((_%hd143254143277%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest143249143257%_)))
                              (_%tl143255143279%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest143249143257%_))))
                          (let* ((_%decl143282%_ _%hd143254143277%_)
                                 (_%decls143284%_ _%tl143255143279%_))
                            (declare (not safe))
                            (_%K143253143274%_
                             _%decls143284%_
                             _%decl143282%_)))
                        (let ()
                          (declare (not safe))
                          (_%else143251143265%_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id143233%_ _%syntax?143234%_)
        (let ((_%eid143236%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id143233%_))
                '1
                gx#binding::t
                '#f))
              (_%ht143237%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid143236%_))
              '#!void
              (let ((__tmp145115
                     (let ((__tmp145116
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid143236%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp145116 _%syntax?143234%_))))
                (declare (not safe))
                (hash-put! _%ht143237%_ _%eid143236%_ __tmp145115))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id143231%_)
        (let ((__tmp145117
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _%id143231%_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp145117))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key143186%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key143186%_))
            (let () _%key143186%_)
            (if (uninterned-symbol? _%key143186%_)
                (let ()
                  (let ()
                    (declare (not safe))
                    (gxc#generate-runtime-gensym-reference__0 _%key143186%_)))
                (let ()
                  (let* ((_%key143190143197%_ _%key143186%_)
                         (_%E143192143201%_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _%key143190143197%_
                                     '([eid . mark])))
                            '#!void))
                         (_%K143193143219%_
                          (lambda (_%mark143204%_ _%eid143205%_)
                            (let ((_%$e143207%_
                                   (##structure-ref
                                    _%mark143204%_
                                    '1
                                    gx#expander-mark::t
                                    '#f)))
                              (if _%$e143207%_
                                  ((lambda (_%ht143210%_)
                                     (let ((_%$e143212%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-get
                                               _%ht143210%_
                                               _%eid143205%_))))
                                       (if _%$e143212%_
                                           ((lambda (_%id143215%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (interned-symbol?
                                                     _%id143215%_))
                                                  _%id143215%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%id143215%_))))
                                            _%$e143212%_)
                                           (let ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%eid143205%_))))))
                                   _%$e143207%_)
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-identifier-key
                                       _%eid143205%_))))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%key143190143197%_))
                        (let ((_%hd143194143222%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%key143190143197%_)))
                              (_%tl143195143224%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%key143190143197%_))))
                          (let* ((_%eid143227%_ _%hd143194143222%_)
                                 (_%mark143229%_ _%tl143195143224%_))
                            (declare (not safe))
                            (_%K143193143219%_ _%mark143229%_ _%eid143227%_)))
                        (let ()
                          (declare (not safe))
                          (_%E143192143201%_)))))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self143183%_ _%stx143184%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self143030%_ _%stx143031%_)
        (letrec ((_%simplify143033%_
                  (lambda (_%body143081%_)
                    (let _%lp143083%_ ((_%rest143085%_ _%body143081%_)
                                       (_%r143086%_ '()))
                      (let* ((_%rest143087143095%_ _%rest143085%_)
                             (_%else143089143103%_
                              (lambda () (reverse _%r143086%_)))
                             (_%K143091143171%_
                              (lambda (_%rest143106%_ _%hd143107%_)
                                (let* ((_%hd143108143124%_ _%hd143107%_)
                                       (_%else143112143132%_
                                        (lambda ()
                                          (let ((__tmp145118
                                                 (cons _%hd143107%_
                                                       _%r143086%_)))
                                            (declare (not safe))
                                            (_%lp143083%_
                                             _%rest143106%_
                                             __tmp145118)))))
                                  (let ((_%K143120143161%_
                                         (lambda (_%exprs143159%_)
                                           (let ((__tmp145119
                                                  (let ()
                                                    (declare (not safe))
                                                    (__foldr1
                                                     cons
                                                     _%rest143106%_
                                                     _%exprs143159%_))))
                                             (declare (not safe))
                                             (_%lp143083%_
                                              __tmp145119
                                              _%r143086%_))))
                                        (_%K143115143145%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143106%_))
                                               (let ((__tmp145120
                                                      (cons _%hd143107%_
                                                            _%r143086%_)))
                                                 (declare (not safe))
                                                 (_%lp143083%_
                                                  _%rest143106%_
                                                  __tmp145120))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143083%_
                                                  _%rest143106%_
                                                  _%r143086%_)))))
                                        (_%K143114143137%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143106%_))
                                               (let ((__tmp145121
                                                      (cons _%hd143107%_
                                                            _%r143086%_)))
                                                 (declare (not safe))
                                                 (_%lp143083%_
                                                  _%rest143106%_
                                                  __tmp145121))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143083%_
                                                  _%rest143106%_
                                                  _%r143086%_))))))
                                    (let ((_%try-match143111143140%_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _%hd143108143124%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%K143114143137%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%else143112143132%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd143108143124%_))
                                          (let ((_%tl143122143166%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd143108143124%_)))
                                                (_%hd143121143164%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd143108143124%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd143121143164%_
                                                         'begin))
                                                (let ((_%exprs143169%_
                                                       _%tl143122143166%_))
                                                  (declare (not safe))
                                                  (_%K143120143161%_
                                                   _%exprs143169%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd143121143164%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl143122143166%_))
                                                        (let ((_%tl143119143153%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl143122143166%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl143119143153%_))
                      (let () (declare (not safe)) (_%K143115143145%_))
                      (let ()
                        (declare (not safe))
                        (_%try-match143111143140%_))))
                (let () (declare (not safe)) (_%try-match143111143140%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%try-match143111143140%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%try-match143111143140%_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest143087143095%_))
                            (let ((_%hd143092143174%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143087143095%_)))
                                  (_%tl143093143176%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143087143095%_))))
                              (let* ((_%hd143179%_ _%hd143092143174%_)
                                     (_%rest143181%_ _%tl143093143176%_))
                                (declare (not safe))
                                (_%K143091143171%_
                                 _%rest143181%_
                                 _%hd143179%_)))
                            (let ()
                              (declare (not safe))
                              (_%else143089143103%_))))))))
          (let* ((_%g143035143045%_
                  (lambda (_%g143036143042%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143036143042%_))))
                 (_%g143034143078%_
                  (lambda (_%g143036143048%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143036143048%_))
                        (let ((_%e143040143050%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143036143048%_))))
                          (let ((_%hd143039143053%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143040143050%_)))
                                (_%tl143038143055%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143040143050%_))))
                            ((lambda (_%L143058%_)
                               (let* ((_%body143073%_
                                       (map (lambda (_%g143068143070%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self143030%_
                                                 _%g143068143070%_)))
                                            _%L143058%_))
                                      (_%body143075%_
                                       (let ()
                                         (declare (not safe))
                                         (_%simplify143033%_ _%body143073%_))))
                                 (if (let ((__tmp145122
                                            (length _%body143075%_)))
                                       (declare (not safe))
                                       (##fx= __tmp145122 '1))
                                     (car _%body143075%_)
                                     (cons 'begin _%body143075%_))))
                             _%tl143038143055%_)))
                        (let ()
                          (declare (not safe))
                          (_%g143035143045%_ _%g143036143048%_))))))
            (declare (not safe))
            (_%g143034143078%_ _%stx143031%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self142991%_ _%stx142992%_)
        (let* ((_%g142994143004%_
                (lambda (_%g142995143001%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142995143001%_))))
               (_%g142993143027%_
                (lambda (_%g142995143007%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142995143007%_))
                      (let ((_%e142999143009%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142995143007%_))))
                        (let ((_%hd142998143012%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142999143009%_)))
                              (_%tl142997143014%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142999143009%_))))
                          ((lambda (_%L143017%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L143017%_))))
                           _%tl142997143014%_)))
                      (let ()
                        (declare (not safe))
                        (_%g142994143004%_ _%g142995143007%_))))))
          (declare (not safe))
          (_%g142993143027%_ _%stx142992%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self142755%_ _%stx142756%_)
        (let* ((_%__stx143725143726%_ _%stx142756%_)
               (_%g142760142812%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx143725143726%_)))))
          (let ((_%__kont143727143728%_
                 (lambda (_%L142973%_ _%L142974%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self142755%_ _%L142973%_))))
                (_%__kont143729143730%_
                 (lambda (_%L142921%_ _%L142922%_ _%L142923%_)
                   (if (let ((__tmp145123
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L142923%_))))
                         (declare (not safe))
                         (##memq __tmp145123 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self142755%_ _%L142921%_)))))
                (_%__kont143733143734%_
                 (lambda (_%L142841%_ _%L142842%_)
                   (let ((_%decls142857%_ (map gx#syntax->datum _%L142842%_)))
                     (let ((__tmp145126
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls142857%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self142755%_
                                                   _%L142841%_))
                                                '())))))
                           (__tmp145124
                            (let ((__tmp145125
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp145125 _%decls142857%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp145126
                        gxc#current-compile-decls
                        __tmp145124))))))
            (let* ((_%__match143780143781%_
                    (lambda (_%e142778142865%_
                             _%hd142777142868%_
                             _%tl142776142870%_
                             _%e142781142873%_
                             _%hd142780142876%_
                             _%tl142779142878%_
                             _%e142784142881%_
                             _%hd142783142884%_
                             _%tl142782142886%_
                             _%__splice143731143732%_
                             _%target142785142889%_
                             _%tl142787142891%_)
                      (letrec ((_%loop142788142894%_
                                (lambda (_%hd142786142897%_
                                         _%param142792142899%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142786142897%_))
                                      (let ((_%e142789142902%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142786142897%_))))
                                        (let ((_%lp-tl142791142907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142789142902%_)))
                                              (_%lp-hd142790142905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142789142902%_))))
                                          (let ((__tmp145127
                                                 (cons _%lp-hd142790142905%_
                                                       _%param142792142899%_)))
                                            (declare (not safe))
                                            (_%loop142788142894%_
                                             _%lp-tl142791142907%_
                                             __tmp145127))))
                                      (let ((_%param142793142910%_
                                             (reverse _%param142792142899%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142779142878%_))
                                            (let ((_%e142796142913%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142779142878%_))))
                                              (let ((_%tl142794142918%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142796142913%_)))
                                                    (_%hd142795142916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142796142913%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142794142918%_))
                                                    (let ((_%L142921%_
                                                           _%hd142795142916%_)
                                                          (_%L142922%_
                                                           _%param142793142910%_)
                                                          (_%L142923%_
                                                           _%hd142783142884%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L142923%_))
                       (let ((__tmp145128
                              (let ((__tmp145129
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L142923%_))))
                                (declare (not safe))
                                (##memq __tmp145129 gxc#gambit-annotations))))
                         (declare (not safe))
                         (not __tmp145128)))
                  (_%__kont143729143730%_ _%L142921%_ _%L142922%_ _%L142923%_)
                  (_%__kont143733143734%_
                   _%hd142795142916%_
                   _%hd142780142876%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g142760142812%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g142760142812%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop142788142894%_ _%target142785142889%_ '())))))
                   (_%__match143754143755%_
                    (lambda (_%e142766142949%_
                             _%hd142765142952%_
                             _%tl142764142954%_
                             _%e142769142957%_
                             _%hd142768142960%_
                             _%tl142767142962%_
                             _%e142772142965%_
                             _%hd142771142968%_
                             _%tl142770142970%_)
                      (let ((_%L142973%_ _%hd142771142968%_)
                            (_%L142974%_ _%hd142768142960%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L142974%_))
                            (_%__kont143727143728%_ _%L142973%_ _%L142974%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd142768142960%_))
                                (let ((_%e142784142881%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd142768142960%_))))
                                  (let ((_%tl142782142886%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142784142881%_)))
                                        (_%hd142783142884%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142784142881%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl142782142886%_))
                                        (let ((_%__splice143731143732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl142782142886%_
                                                  '0))))
                                          (let ((_%tl142787142891%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143731143732%_
                                                    '1)))
                                                (_%target142785142889%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143731143732%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142787142891%_))
                                                (_%__match143780143781%_
                                                 _%e142766142949%_
                                                 _%hd142765142952%_
                                                 _%tl142764142954%_
                                                 _%e142769142957%_
                                                 _%hd142768142960%_
                                                 _%tl142767142962%_
                                                 _%e142784142881%_
                                                 _%hd142783142884%_
                                                 _%tl142782142886%_
                                                 _%__splice143731143732%_
                                                 _%target142785142889%_
                                                 _%tl142787142891%_)
                                                (_%__kont143733143734%_
                                                 _%hd142771142968%_
                                                 _%hd142768142960%_))))
                                        (_%__kont143733143734%_
                                         _%hd142771142968%_
                                         _%hd142768142960%_))))
                                (_%__kont143733143734%_
                                 _%hd142771142968%_
                                 _%hd142768142960%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx143725143726%_))
                  (let ((_%e142766142949%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx143725143726%_))))
                    (let ((_%tl142764142954%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142766142949%_)))
                          (_%hd142765142952%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142766142949%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142764142954%_))
                          (let ((_%e142769142957%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142764142954%_))))
                            (let ((_%tl142767142962%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142769142957%_)))
                                  (_%hd142768142960%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142769142957%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl142767142962%_))
                                  (let ((_%e142772142965%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl142767142962%_))))
                                    (let ((_%tl142770142970%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142772142965%_)))
                                          (_%hd142771142968%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142772142965%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142770142970%_))
                                          (_%__match143754143755%_
                                           _%e142766142949%_
                                           _%hd142765142952%_
                                           _%tl142764142954%_
                                           _%e142769142957%_
                                           _%hd142768142960%_
                                           _%tl142767142962%_
                                           _%e142772142965%_
                                           _%hd142771142968%_
                                           _%tl142770142970%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142768142960%_))
                                              (let ((_%e142784142881%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142768142960%_))))
                                                (let ((_%tl142782142886%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142784142881%_)))
                                                      (_%hd142783142884%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142784142881%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl142782142886%_))
                                                      (let ((_%__splice143731143732%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl142782142886%_ '0))))
                (let ((_%tl142787142891%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143731143732%_ '1)))
                      (_%target142785142889%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143731143732%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142787142891%_))
                      (_%__match143780143781%_
                       _%e142766142949%_
                       _%hd142765142952%_
                       _%tl142764142954%_
                       _%e142769142957%_
                       _%hd142768142960%_
                       _%tl142767142962%_
                       _%e142784142881%_
                       _%hd142783142884%_
                       _%tl142782142886%_
                       _%__splice143731143732%_
                       _%target142785142889%_
                       _%tl142787142891%_)
                      (let () (declare (not safe)) (_%g142760142812%_)))))
              (let () (declare (not safe)) (_%g142760142812%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g142760142812%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142768142960%_))
                                      (let ((_%e142784142881%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142768142960%_))))
                                        (let ((_%tl142782142886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142784142881%_)))
                                              (_%hd142783142884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142784142881%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl142782142886%_))
                                              (let ((_%__splice143731143732%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl142782142886%_
                                                        '0))))
                                                (let ((_%tl142787142891%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143731143732%_
                                                          '1)))
                                                      (_%target142785142889%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143731143732%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142787142891%_))
                                                      (_%__match143780143781%_
                                                       _%e142766142949%_
                                                       _%hd142765142952%_
                                                       _%tl142764142954%_
                                                       _%e142769142957%_
                                                       _%hd142768142960%_
                                                       _%tl142767142962%_
                                                       _%e142784142881%_
                                                       _%hd142783142884%_
                                                       _%tl142782142886%_
                                                       _%__splice143731143732%_
                                                       _%target142785142889%_
                                                       _%tl142787142891%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g142760142812%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142760142812%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142760142812%_))))))
                          (let () (declare (not safe)) (_%g142760142812%_)))))
                  (let () (declare (not safe)) (_%g142760142812%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self142714%_ _%stx142715%_)
        (let* ((_%g142717142727%_
                (lambda (_%g142718142724%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142718142724%_))))
               (_%g142716142752%_
                (lambda (_%g142718142730%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142718142730%_))
                      (let ((_%e142722142732%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142718142730%_))))
                        (let ((_%hd142721142735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142722142732%_)))
                              (_%tl142720142737%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142722142732%_))))
                          ((lambda (_%L142740%_)
                             (let ((_%decls142750%_
                                    (map gx#syntax->datum _%L142740%_)))
                               (let ((__tmp145130
                                      (let ((__tmp145131
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp145131
                                         _%decls142750%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp145130))
                               (cons 'declare _%decls142750%_)))
                           _%tl142720142737%_)))
                      (let ()
                        (declare (not safe))
                        (_%g142717142727%_ _%g142718142730%_))))))
          (declare (not safe))
          (_%g142716142752%_ _%stx142715%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self142460%_ _%stx142461%_)
        (let* ((_%g142463142480%_
                (lambda (_%g142464142477%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142464142477%_))))
               (_%g142462142711%_
                (lambda (_%g142464142483%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142464142483%_))
                      (let ((_%e142469142485%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142464142483%_))))
                        (let ((_%hd142468142488%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142469142485%_)))
                              (_%tl142467142490%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142469142485%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142467142490%_))
                              (let ((_%e142472142493%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142467142490%_))))
                                (let ((_%hd142471142496%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142472142493%_)))
                                      (_%tl142470142498%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142472142493%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142470142498%_))
                                      (let ((_%e142475142501%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142470142498%_))))
                                        (let ((_%hd142474142504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142475142501%_)))
                                              (_%tl142473142506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142475142501%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142473142506%_))
                                              ((lambda (_%L142509%_
                                                        _%L142510%_)
                                                 (let* ((_%__stx143833143834%_
                                                         _%L142510%_)
                                                        (_%g142527142541%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx143833143834%_)))))
                                                   (let ((_%__kont143835143836%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self142460%_
                                                               _%L142509%_))))
                                                         (_%__kont143837143838%_
                                                          (lambda (_%L142673%_)
                                                            (let ((_%eid142682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L142673%_))))
                      (let ((_%lambda-expr142683142685%_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression
                                _%L142509%_))))
                        (if _%lambda-expr142683142685%_
                            (let* ((_%lambda-expr142688%_
                                    _%lambda-expr142683142685%_)
                                   (__tmp145132
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145132
                               _%lambda-expr142688%_
                               _%eid142682%_))
                            '#f))
                      (cons 'define
                            (cons _%eid142682%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self142460%_
                                           _%L142509%_))
                                        '()))))))
                 (_%__kont143839143840%_
                  (lambda ()
                    (let* ((_%tmp142548%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body142657%_
                            (let _%lp142550%_ ((_%rest142552%_ _%L142510%_)
                                               (_%k142553%_ '0)
                                               (_%r142554%_ '()))
                              (let* ((_%__stx143803143804%_ _%rest142552%_)
                                     (_%g142559142576%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx143803143804%_)))))
                                (let ((_%__kont143805143806%_
                                       (lambda (_%L142644%_)
                                         (let ((__tmp145133
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k142553%_ '1))))
                                           (declare (not safe))
                                           (_%lp142550%_
                                            _%L142644%_
                                            __tmp145133
                                            _%r142554%_))))
                                      (_%__kont143807143808%_
                                       (lambda (_%L142617%_ _%L142618%_)
                                         (let ((__tmp145135
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k142553%_ '1)))
                                               (__tmp145134
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L142618%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values-ref
                                   _%tmp142548%_
                                   _%k142553%_
                                   _%L142617%_))
                                '())))
              _%r142554%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp142550%_
                                            _%L142617%_
                                            __tmp145135
                                            __tmp145134))))
                                      (_%__kont143809143810%_
                                       (lambda (_%L142588%_)
                                         (let ((__tmp145136
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L142588%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values->list
                                   _%tmp142548%_
                                   _%k142553%_))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp145136
                                            _%r142554%_))))
                                      (_%__kont143811143812%_
                                       (lambda () (reverse _%r142554%_))))
                                  (let ((_%g142557142604%_
                                         (lambda ()
                                           (let ((_%L142588%_
                                                  _%__stx143803143804%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L142588%_))
                                                 (_%__kont143809143810%_
                                                  _%L142588%_)
                                                 (_%__kont143811143812%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx143803143804%_))
                                        (let ((_%e142564142633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx143803143804%_))))
                                          (let ((_%tl142562142638%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142564142633%_)))
                                                (_%hd142563142636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142564142633%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd142563142636%_))
                                                (let ((_%e142565142641%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142563142636%_))))
                                                  (if (equal? _%e142565142641%_
                                                              '#f)
                                                      (_%__kont143805143806%_
                                                       _%tl142562142638%_)
                                                      (_%__kont143807143808%_
                                                       _%tl142562142638%_
                                                       _%hd142563142636%_)))
                                                (_%__kont143807143808%_
                                                 _%tl142562142638%_
                                                 _%hd142563142636%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g142557142604%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp142548%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142460%_
                                                       _%L142509%_))
                                                    '())))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-check-values
                                           _%tmp142548%_
                                           _%L142510%_
                                           _%L142509%_))
                                        _%body142657%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx143833143834%_))
                                                         (let ((_%e142531142695%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx143833143834%_))))
                   (let ((_%tl142529142700%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e142531142695%_)))
                         (_%hd142530142698%_
                          (let ()
                            (declare (not safe))
                            (##car _%e142531142695%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd142530142698%_))
                         (let ((_%e142532142703%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd142530142698%_))))
                           (if (equal? _%e142532142703%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142529142700%_))
                                   (_%__kont143835143836%_)
                                   (_%__kont143839143840%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142529142700%_))
                                   (_%__kont143837143838%_ _%hd142530142698%_)
                                   (_%__kont143839143840%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142529142700%_))
                             (_%__kont143837143838%_ _%hd142530142698%_)
                             (_%__kont143839143840%_)))))
                 (_%__kont143839143840%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142474142504%_
                                               _%hd142471142496%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g142463142480%_
                                                 _%g142464142483%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142463142480%_
                                         _%g142464142483%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142463142480%_ _%g142464142483%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g142463142480%_ _%g142464142483%_))))))
          (declare (not safe))
          (_%g142462142711%_ _%stx142461%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals142435%_ _%hd142436%_ _%expr142437%_)
        (let ((_%$e142439%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _%expr142437%_))))
          (if _%$e142439%_
              ((lambda (_%count142442%_)
                 (let ((_%len142444%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142436%_)))
                       (_%cmp142445%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142436%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len142444%_ '0))
                           (_%cmp142445%_ _%count142442%_ _%len142444%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr142437%_
                          _%hd142436%_)))))
               _%$e142439%_)
              (let ()
                (let* ((_%len142451%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142436%_)))
                       (_%cmp142453%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142436%_))
                            '##fx=
                            '##fx>=))
                       (_%errmsg142455%_
                        (let ((__tmp145138
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-list? _%hd142436%_))
                                   '"Context expects "
                                   '"Context expects at least "))
                              (__tmp145137 (number->string _%len142451%_)))
                          (declare (not safe))
                          (##string-append
                           __tmp145138
                           __tmp145137
                           '" values")))
                       (_%count142457%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-temporary__0))))
                  (if (and (let ((__tmp145139
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-list? _%hd142436%_))))
                             (declare (not safe))
                             (not __tmp145139))
                           (let ()
                             (declare (not safe))
                             (##fx= _%len142451%_ '0)))
                      '#!void
                      (cons 'let
                            (cons (cons (cons _%count142457%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-values-count
                                                       _%vals142435%_))
                                                    '()))
                                        '())
                                  (cons (cons 'if
                                              (cons (cons 'not
                                                          (cons (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#current-compile-decls-unsafe?))
                            (cons _%cmp142453%_
                                  (cons _%count142457%_
                                        (cons _%len142451%_ '())))
                            (cons 'let
                                  (cons '()
                                        (cons '(declare (not safe))
                                              (cons (cons _%cmp142453%_
                                                          (cons _%count142457%_
                                                                (cons _%len142451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'error
                                                                (cons _%errmsg142455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%count142457%_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var142430%_)
        (letrec ((_%generate-inline142432%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var142430%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var142430%_ '()))
                                      (cons '1 '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline142432%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline142432%_))
                                      '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var142423%_ _%i142424%_ _%rest142425%_)
        (letrec ((_%generate-inline142427%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i142424%_ '0))
                             (let ((__tmp145140
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%rest142425%_))))
                               (declare (not safe))
                               (not __tmp145140)))
                        (cons 'if
                              (cons (cons '##values? (cons _%var142423%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var142423%_
                                                      (cons '0 '())))
                                          (cons _%var142423%_ '()))))
                        (cons '##vector-ref
                              (cons _%var142423%_ (cons _%i142424%_ '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline142427%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline142427%_))
                                      '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var142417%_ _%i142418%_)
        (if (let () (declare (not safe)) (##fx= _%i142418%_ '0))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (gxc#current-compile-decls-unsafe?))
                  (cons 'if
                        (cons (cons '##values? (cons _%var142417%_ '()))
                              (cons (cons '##vector->list
                                          (cons _%var142417%_ '()))
                                    (cons (cons 'list (cons _%var142417%_ '()))
                                          '()))))
                  (cons 'let
                        (cons '()
                              (cons '(declare (not safe))
                                    (cons (cons 'if
                                                (cons (cons '##values?
                                                            (cons _%var142417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '##vector->list (cons _%var142417%_ '()))
                    (cons (cons 'list (cons _%var142417%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
            (if (let () (declare (not safe)) (##fx= _%i142418%_ '1))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (gxc#current-compile-decls-unsafe?))
                      (cons 'if
                            (cons (cons '##values? (cons _%var142417%_ '()))
                                  (cons (cons '##cdr
                                              (cons (cons '##vector->list
                                                          (cons _%var142417%_
                                                                '()))
                                                    '()))
                                        (cons ''() '()))))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons 'if
                                                    (cons (cons '##values?
                                                                (cons _%var142417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '##cdr
                              (cons (cons '##vector->list
                                          (cons _%var142417%_ '()))
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
                                        (cons _%var142417%_ '()))
                                  (cons _%i142418%_ '())))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons '##list-tail
                                                    (cons (cons '##vector->list
                                                                (cons _%var142417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons _%i142418%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self142349%_ _%stx142350%_)
        (let* ((_%g142352142369%_
                (lambda (_%g142353142366%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142353142366%_))))
               (_%g142351142414%_
                (lambda (_%g142353142372%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142353142372%_))
                      (let ((_%e142358142374%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142353142372%_))))
                        (let ((_%hd142357142377%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142358142374%_)))
                              (_%tl142356142379%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142358142374%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142356142379%_))
                              (let ((_%e142361142382%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142356142379%_))))
                                (let ((_%hd142360142385%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142361142382%_)))
                                      (_%tl142359142387%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142361142382%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142359142387%_))
                                      (let ((_%e142364142390%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142359142387%_))))
                                        (let ((_%hd142363142393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142364142390%_)))
                                              (_%tl142362142395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142364142390%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142362142395%_))
                                              ((lambda (_%L142398%_
                                                        _%L142399%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _%self142349%_
                                                    _%L142399%_
                                                    _%L142398%_)))
                                               _%hd142363142393%_
                                               _%hd142360142385%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g142352142369%_
                                                 _%g142353142372%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142352142369%_
                                         _%g142353142372%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142352142369%_ _%g142353142372%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g142352142369%_ _%g142353142372%_))))))
          (declare (not safe))
          (_%g142351142414%_ _%stx142350%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self142308%_ _%hd142309%_ _%body142310%_)
        (let* ((_%hd142312%_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _%hd142309%_)))
               (_%body142314%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self142308%_ _%body142310%_)))
               (_%body142346%_
                (let* ((_%body142315142323%_ _%body142314%_)
                       (_%else142317142331%_
                        (lambda () (cons _%body142314%_ '())))
                       (_%K142319142336%_
                        (lambda (_%exprs142334%_) _%exprs142334%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body142315142323%_))
                      (let ((_%hd142320142339%_
                             (let ()
                               (declare (not safe))
                               (##car _%body142315142323%_)))
                            (_%tl142321142341%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body142315142323%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd142320142339%_ 'begin))
                            (let ((_%exprs142344%_ _%tl142321142341%_))
                              (declare (not safe))
                              (_%K142319142336%_ _%exprs142344%_))
                            (let ()
                              (declare (not safe))
                              (_%else142317142331%_))))
                      (let () (declare (not safe)) (_%else142317142331%_))))))
          (cons 'lambda (cons _%hd142312%_ _%body142346%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd142306%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd142306%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self140845%_ _%stx140846%_)
        (letrec ((_%dispatch-case?140848%_
                  (lambda (_%hd141536%_ _%body141537%_)
                    (let* ((_%form141539%_
                            (cons _%hd141536%_ (cons _%body141537%_ '())))
                           (_%__stx143865143866%_ _%form141539%_)
                           (_%g141544141701%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx143865143866%_)))))
                      (let ((_%__kont143867143868%_
                             (lambda (_%L142226%_ _%L142227%_ _%L142228%_)
                               '#t))
                            (_%__kont143873143874%_
                             (lambda (_%L142014%_
                                      _%L142015%_
                                      _%L142016%_
                                      _%L142017%_
                                      _%L142018%_
                                      _%L142019%_)
                               '#t))
                            (_%__kont143879143880%_
                             (lambda (_%L141809%_
                                      _%L141810%_
                                      _%L141811%_
                                      _%L141812%_)
                               '#t))
                            (_%__kont143881143882%_ (lambda () '#f)))
                        (let* ((_%__match144006144007%_
                                (lambda (_%e141663141713%_
                                         _%hd141662141716%_
                                         _%tl141661141718%_
                                         _%e141666141721%_
                                         _%hd141665141724%_
                                         _%tl141664141726%_
                                         _%e141669141729%_
                                         _%hd141668141732%_
                                         _%tl141667141734%_
                                         _%e141672141737%_
                                         _%hd141671141740%_
                                         _%tl141670141742%_
                                         _%e141675141745%_
                                         _%hd141674141748%_
                                         _%tl141673141750%_
                                         _%e141678141753%_
                                         _%hd141677141756%_
                                         _%tl141676141758%_
                                         _%e141681141761%_
                                         _%hd141680141764%_
                                         _%tl141679141766%_
                                         _%e141684141769%_
                                         _%hd141683141772%_
                                         _%tl141682141774%_
                                         _%e141687141777%_
                                         _%hd141686141780%_
                                         _%tl141685141782%_
                                         _%e141690141785%_
                                         _%hd141689141788%_
                                         _%tl141688141790%_
                                         _%e141693141793%_
                                         _%hd141692141796%_
                                         _%tl141691141798%_
                                         _%e141696141801%_
                                         _%hd141695141804%_
                                         _%tl141694141806%_)
                                  (let ((_%L141809%_ _%hd141695141804%_)
                                        (_%L141810%_ _%hd141686141780%_)
                                        (_%L141811%_ _%hd141677141756%_)
                                        (_%L141812%_ _%hd141662141716%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L141812%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L141811%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L141812%_
                                                _%L141809%_))
                                             (let ((__tmp145141
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _%L141810%_
                                                       _%L141812%_))))
                                               (declare (not safe))
                                               (not __tmp145141)))
                                        (_%__kont143879143880%_
                                         _%L141809%_
                                         _%L141810%_
                                         _%L141811%_
                                         _%L141812%_)
                                        (_%__kont143881143882%_)))))
                               (_%__match143978143979%_
                                (lambda (_%e141663141713%_
                                         _%hd141662141716%_
                                         _%tl141661141718%_
                                         _%e141666141721%_
                                         _%hd141665141724%_
                                         _%tl141664141726%_
                                         _%e141669141729%_
                                         _%hd141668141732%_
                                         _%tl141667141734%_
                                         _%e141672141737%_
                                         _%hd141671141740%_
                                         _%tl141670141742%_
                                         _%e141675141745%_
                                         _%hd141674141748%_
                                         _%tl141673141750%_
                                         _%e141678141753%_
                                         _%hd141677141756%_
                                         _%tl141676141758%_
                                         _%e141681141761%_
                                         _%hd141680141764%_
                                         _%tl141679141766%_
                                         _%e141684141769%_
                                         _%hd141683141772%_
                                         _%tl141682141774%_
                                         _%e141687141777%_
                                         _%hd141686141780%_
                                         _%tl141685141782%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141679141766%_))
                                      (let ((_%e141690141785%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141679141766%_))))
                                        (let ((_%tl141688141790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141690141785%_)))
                                              (_%hd141689141788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141690141785%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd141689141788%_))
                                              (let ((_%e141693141793%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd141689141788%_))))
                                                (let ((_%tl141691141798%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141693141793%_)))
                                                      (_%hd141692141796%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141693141793%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd141692141796%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd141692141796%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141691141798%_))
                      (let ((_%e141696141801%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141691141798%_))))
                        (let ((_%tl141694141806%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141696141801%_)))
                              (_%hd141695141804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141696141801%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141694141806%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl141688141790%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141664141726%_))
                                      (_%__match144006144007%_
                                       _%e141663141713%_
                                       _%hd141662141716%_
                                       _%tl141661141718%_
                                       _%e141666141721%_
                                       _%hd141665141724%_
                                       _%tl141664141726%_
                                       _%e141669141729%_
                                       _%hd141668141732%_
                                       _%tl141667141734%_
                                       _%e141672141737%_
                                       _%hd141671141740%_
                                       _%tl141670141742%_
                                       _%e141675141745%_
                                       _%hd141674141748%_
                                       _%tl141673141750%_
                                       _%e141678141753%_
                                       _%hd141677141756%_
                                       _%tl141676141758%_
                                       _%e141681141761%_
                                       _%hd141680141764%_
                                       _%tl141679141766%_
                                       _%e141684141769%_
                                       _%hd141683141772%_
                                       _%tl141682141774%_
                                       _%e141687141777%_
                                       _%hd141686141780%_
                                       _%tl141685141782%_
                                       _%e141690141785%_
                                       _%hd141689141788%_
                                       _%tl141688141790%_
                                       _%e141693141793%_
                                       _%hd141692141796%_
                                       _%tl141691141798%_
                                       _%e141696141801%_
                                       _%hd141695141804%_
                                       _%tl141694141806%_)
                                      (_%__kont143881143882%_))
                                  (_%__kont143881143882%_))
                              (_%__kont143881143882%_))))
                      (_%__kont143881143882%_))
                  (_%__kont143881143882%_))
              (_%__kont143881143882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143881143882%_))))
                                      (_%__kont143881143882%_))))
                               (_%__match143908143909%_
                                (lambda (_%e141599141854%_
                                         _%hd141598141857%_
                                         _%tl141597141859%_
                                         _%__splice143875143876%_
                                         _%target141600141862%_
                                         _%tl141602141864%_)
                                  (letrec ((_%loop141603141867%_
                                            (lambda (_%hd141601141870%_
                                                     _%arg141607141872%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141601141870%_))
                                                  (let ((_%e141604141875%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141601141870%_))))
                                                    (let ((_%lp-tl141606141880%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141604141875%_)))
                                                          (_%lp-hd141605141878%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141604141875%_))))
                                                      (let ((__tmp145142
                                                             (cons _%lp-hd141605141878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141607141872%_)))
                (declare (not safe))
                (_%loop141603141867%_ _%lp-tl141606141880%_ __tmp145142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141608141883%_
                                                         (reverse _%arg141607141872%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141597141859%_))
                                                        (let ((_%e141611141886%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141597141859%_))))
                  (let ((_%tl141609141891%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141611141886%_)))
                        (_%hd141610141889%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141611141886%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141610141889%_))
                        (let ((_%e141614141894%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141610141889%_))))
                          (let ((_%tl141612141899%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141614141894%_)))
                                (_%hd141613141897%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141614141894%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141613141897%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141613141897%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141612141899%_))
                                        (let ((_%e141617141902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141612141899%_))))
                                          (let ((_%tl141615141907%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141617141902%_)))
                                                (_%hd141616141905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141617141902%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141616141905%_))
                                                (let ((_%e141620141910%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141616141905%_))))
                                                  (let ((_%tl141618141915%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141620141910%_)))
                                                        (_%hd141619141913%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141620141910%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141619141913%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141619141913%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141618141915%_))
                        (let ((_%e141623141918%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141618141915%_))))
                          (let ((_%tl141621141923%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141623141918%_)))
                                (_%hd141622141921%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141623141918%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141621141923%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141615141907%_))
                                    (let ((_%e141626141926%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141615141907%_))))
                                      (let ((_%tl141624141931%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141626141926%_)))
                                            (_%hd141625141929%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141626141926%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141625141929%_))
                                            (let ((_%e141629141934%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141625141929%_))))
                                              (let ((_%tl141627141939%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141629141934%_)))
                                                    (_%hd141628141937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141629141934%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141628141937%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141628141937%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141627141939%_))
                                                            (let ((_%e141632141942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141627141939%_))))
                      (let ((_%tl141630141947%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141632141942%_)))
                            (_%hd141631141945%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141632141942%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141630141947%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141624141931%_))
                                (if (let ((__tmp145143
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl141624141931%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp145143 '1))
                                    (let ((_%__splice143877143878%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141624141931%_
                                              '1))))
                                      (let ((_%tl141635141952%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143877143878%_
                                                '1)))
                                            (_%target141633141950%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143877143878%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141635141952%_))
                                            (let ((_%e141644141955%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141635141952%_))))
                                              (let ((_%tl141642141960%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141644141955%_)))
                                                    (_%hd141643141958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141644141955%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd141643141958%_))
                                                    (let ((_%e141647141963%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd141643141958%_))))
                                                      (let ((_%tl141645141968%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141647141963%_)))
                    (_%hd141646141966%_
                     (let () (declare (not safe)) (##car _%e141647141963%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd141646141966%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd141646141966%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl141645141968%_))
                            (let ((_%e141650141971%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl141645141968%_))))
                              (let ((_%tl141648141976%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141650141971%_)))
                                    (_%hd141649141974%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141650141971%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl141648141976%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141642141960%_))
                                        (letrec ((_%loop141636141979%_
                                                  (lambda (_%hd141634141982%_
                                                           _%xarg141640141984%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd141634141982%_))
                                                        (let ((_%e141637141987%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd141634141982%_))))
                  (let ((_%lp-tl141639141992%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141637141987%_)))
                        (_%lp-hd141638141990%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141637141987%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd141638141990%_))
                        (let ((_%e141653141995%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd141638141990%_))))
                          (let ((_%tl141651142000%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141653141995%_)))
                                (_%hd141652141998%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141653141995%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141652141998%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd141652141998%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141651142000%_))
                                        (let ((_%e141656142003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141651142000%_))))
                                          (let ((_%tl141654142008%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141656142003%_)))
                                                (_%hd141655142006%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141656142003%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141654142008%_))
                                                (let ((__tmp145144
                                                       (cons _%hd141655142006%_
                                                             _%xarg141640141984%_)))
                                                  (declare (not safe))
                                                  (_%loop141636141979%_
                                                   _%lp-tl141639141992%_
                                                   __tmp145144))
                                                (_%__match143978143979%_
                                                 _%e141599141854%_
                                                 _%hd141598141857%_
                                                 _%tl141597141859%_
                                                 _%e141611141886%_
                                                 _%hd141610141889%_
                                                 _%tl141609141891%_
                                                 _%e141614141894%_
                                                 _%hd141613141897%_
                                                 _%tl141612141899%_
                                                 _%e141617141902%_
                                                 _%hd141616141905%_
                                                 _%tl141615141907%_
                                                 _%e141620141910%_
                                                 _%hd141619141913%_
                                                 _%tl141618141915%_
                                                 _%e141623141918%_
                                                 _%hd141622141921%_
                                                 _%tl141621141923%_
                                                 _%e141626141926%_
                                                 _%hd141625141929%_
                                                 _%tl141624141931%_
                                                 _%e141629141934%_
                                                 _%hd141628141937%_
                                                 _%tl141627141939%_
                                                 _%e141632141942%_
                                                 _%hd141631141945%_
                                                 _%tl141630141947%_))))
                                        (_%__match143978143979%_
                                         _%e141599141854%_
                                         _%hd141598141857%_
                                         _%tl141597141859%_
                                         _%e141611141886%_
                                         _%hd141610141889%_
                                         _%tl141609141891%_
                                         _%e141614141894%_
                                         _%hd141613141897%_
                                         _%tl141612141899%_
                                         _%e141617141902%_
                                         _%hd141616141905%_
                                         _%tl141615141907%_
                                         _%e141620141910%_
                                         _%hd141619141913%_
                                         _%tl141618141915%_
                                         _%e141623141918%_
                                         _%hd141622141921%_
                                         _%tl141621141923%_
                                         _%e141626141926%_
                                         _%hd141625141929%_
                                         _%tl141624141931%_
                                         _%e141629141934%_
                                         _%hd141628141937%_
                                         _%tl141627141939%_
                                         _%e141632141942%_
                                         _%hd141631141945%_
                                         _%tl141630141947%_))
                                    (_%__match143978143979%_
                                     _%e141599141854%_
                                     _%hd141598141857%_
                                     _%tl141597141859%_
                                     _%e141611141886%_
                                     _%hd141610141889%_
                                     _%tl141609141891%_
                                     _%e141614141894%_
                                     _%hd141613141897%_
                                     _%tl141612141899%_
                                     _%e141617141902%_
                                     _%hd141616141905%_
                                     _%tl141615141907%_
                                     _%e141620141910%_
                                     _%hd141619141913%_
                                     _%tl141618141915%_
                                     _%e141623141918%_
                                     _%hd141622141921%_
                                     _%tl141621141923%_
                                     _%e141626141926%_
                                     _%hd141625141929%_
                                     _%tl141624141931%_
                                     _%e141629141934%_
                                     _%hd141628141937%_
                                     _%tl141627141939%_
                                     _%e141632141942%_
                                     _%hd141631141945%_
                                     _%tl141630141947%_))
                                (_%__match143978143979%_
                                 _%e141599141854%_
                                 _%hd141598141857%_
                                 _%tl141597141859%_
                                 _%e141611141886%_
                                 _%hd141610141889%_
                                 _%tl141609141891%_
                                 _%e141614141894%_
                                 _%hd141613141897%_
                                 _%tl141612141899%_
                                 _%e141617141902%_
                                 _%hd141616141905%_
                                 _%tl141615141907%_
                                 _%e141620141910%_
                                 _%hd141619141913%_
                                 _%tl141618141915%_
                                 _%e141623141918%_
                                 _%hd141622141921%_
                                 _%tl141621141923%_
                                 _%e141626141926%_
                                 _%hd141625141929%_
                                 _%tl141624141931%_
                                 _%e141629141934%_
                                 _%hd141628141937%_
                                 _%tl141627141939%_
                                 _%e141632141942%_
                                 _%hd141631141945%_
                                 _%tl141630141947%_))))
                        (_%__match143978143979%_
                         _%e141599141854%_
                         _%hd141598141857%_
                         _%tl141597141859%_
                         _%e141611141886%_
                         _%hd141610141889%_
                         _%tl141609141891%_
                         _%e141614141894%_
                         _%hd141613141897%_
                         _%tl141612141899%_
                         _%e141617141902%_
                         _%hd141616141905%_
                         _%tl141615141907%_
                         _%e141620141910%_
                         _%hd141619141913%_
                         _%tl141618141915%_
                         _%e141623141918%_
                         _%hd141622141921%_
                         _%tl141621141923%_
                         _%e141626141926%_
                         _%hd141625141929%_
                         _%tl141624141931%_
                         _%e141629141934%_
                         _%hd141628141937%_
                         _%tl141627141939%_
                         _%e141632141942%_
                         _%hd141631141945%_
                         _%tl141630141947%_))))
                (let ((_%xarg141641142011%_ (reverse _%xarg141640141984%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141609141891%_))
                      (let ((_%L142014%_ _%hd141649141974%_)
                            (_%L142015%_ _%xarg141641142011%_)
                            (_%L142016%_ _%hd141631141945%_)
                            (_%L142017%_ _%hd141622141921%_)
                            (_%L142018%_ _%tl141602141864%_)
                            (_%L142019%_ _%arg141608141883%_))
                        (if (and (let ((__tmp145145
                                        (let ((__tmp145146
                                               (lambda (_%g142062142065%_
                                                        _%g142063142067%_)
                                                 (cons _%g142062142065%_
                                                       _%g142063142067%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145146
                                           '()
                                           _%L142019%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp145145))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L142018%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L142017%_
                                    'apply))
                                 (let ((__tmp145149
                                        (length (let ((__tmp145150
                                                       (lambda (_%g142069142072%_
                                                                _%g142070142074%_)
                                                         (cons _%g142069142072%_
                                                               _%g142070142074%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145150
                                                   '()
                                                   _%L142019%_))))
                                       (__tmp145147
                                        (length (let ((__tmp145148
                                                       (lambda (_%g142076142079%_
                                                                _%g142077142081%_)
                                                         (cons _%g142076142079%_
                                                               _%g142077142081%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145148
                                                   '()
                                                   _%L142015%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp145149 __tmp145147))
                                 (let ((__tmp145153
                                        (let ((__tmp145154
                                               (lambda (_%g142083142086%_
                                                        _%g142084142088%_)
                                                 (cons _%g142083142086%_
                                                       _%g142084142088%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145154
                                           '()
                                           _%L142019%_)))
                                       (__tmp145151
                                        (let ((__tmp145152
                                               (lambda (_%g142090142093%_
                                                        _%g142091142095%_)
                                                 (cons _%g142090142093%_
                                                       _%g142091142095%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145152
                                           '()
                                           _%L142015%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp145153
                                    __tmp145151))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L142018%_
                                    _%L142014%_))
                                 (let ((__tmp145155
                                        (let ((__tmp145159
                                               (lambda (_%g142097142099%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _%g142097142099%_
                                                    _%L142016%_))))
                                              (__tmp145156
                                               (let ((__tmp145158
                                                      (lambda (_%g142101142104%_
                                                               _%g142102142106%_)
                                                        (cons _%g142101142104%_
                                                              _%g142102142106%_)))
                                                     (__tmp145157
                                                      (cons _%L142018%_ '())))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp145158
                                                  __tmp145157
                                                  _%L142019%_))))
                                          (declare (not safe))
                                          (__find __tmp145159 __tmp145156))))
                                   (declare (not safe))
                                   (not __tmp145155)))
                            (_%__kont143873143874%_
                             _%L142014%_
                             _%L142015%_
                             _%L142016%_
                             _%L142017%_
                             _%L142018%_
                             _%L142019%_)
                            (_%__match143978143979%_
                             _%e141599141854%_
                             _%hd141598141857%_
                             _%tl141597141859%_
                             _%e141611141886%_
                             _%hd141610141889%_
                             _%tl141609141891%_
                             _%e141614141894%_
                             _%hd141613141897%_
                             _%tl141612141899%_
                             _%e141617141902%_
                             _%hd141616141905%_
                             _%tl141615141907%_
                             _%e141620141910%_
                             _%hd141619141913%_
                             _%tl141618141915%_
                             _%e141623141918%_
                             _%hd141622141921%_
                             _%tl141621141923%_
                             _%e141626141926%_
                             _%hd141625141929%_
                             _%tl141624141931%_
                             _%e141629141934%_
                             _%hd141628141937%_
                             _%tl141627141939%_
                             _%e141632141942%_
                             _%hd141631141945%_
                             _%tl141630141947%_)))
                      (_%__match143978143979%_
                       _%e141599141854%_
                       _%hd141598141857%_
                       _%tl141597141859%_
                       _%e141611141886%_
                       _%hd141610141889%_
                       _%tl141609141891%_
                       _%e141614141894%_
                       _%hd141613141897%_
                       _%tl141612141899%_
                       _%e141617141902%_
                       _%hd141616141905%_
                       _%tl141615141907%_
                       _%e141620141910%_
                       _%hd141619141913%_
                       _%tl141618141915%_
                       _%e141623141918%_
                       _%hd141622141921%_
                       _%tl141621141923%_
                       _%e141626141926%_
                       _%hd141625141929%_
                       _%tl141624141931%_
                       _%e141629141934%_
                       _%hd141628141937%_
                       _%tl141627141939%_
                       _%e141632141942%_
                       _%hd141631141945%_
                       _%tl141630141947%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop141636141979%_
                                             _%target141633141950%_
                                             '())))
                                        (_%__match143978143979%_
                                         _%e141599141854%_
                                         _%hd141598141857%_
                                         _%tl141597141859%_
                                         _%e141611141886%_
                                         _%hd141610141889%_
                                         _%tl141609141891%_
                                         _%e141614141894%_
                                         _%hd141613141897%_
                                         _%tl141612141899%_
                                         _%e141617141902%_
                                         _%hd141616141905%_
                                         _%tl141615141907%_
                                         _%e141620141910%_
                                         _%hd141619141913%_
                                         _%tl141618141915%_
                                         _%e141623141918%_
                                         _%hd141622141921%_
                                         _%tl141621141923%_
                                         _%e141626141926%_
                                         _%hd141625141929%_
                                         _%tl141624141931%_
                                         _%e141629141934%_
                                         _%hd141628141937%_
                                         _%tl141627141939%_
                                         _%e141632141942%_
                                         _%hd141631141945%_
                                         _%tl141630141947%_))
                                    (_%__match143978143979%_
                                     _%e141599141854%_
                                     _%hd141598141857%_
                                     _%tl141597141859%_
                                     _%e141611141886%_
                                     _%hd141610141889%_
                                     _%tl141609141891%_
                                     _%e141614141894%_
                                     _%hd141613141897%_
                                     _%tl141612141899%_
                                     _%e141617141902%_
                                     _%hd141616141905%_
                                     _%tl141615141907%_
                                     _%e141620141910%_
                                     _%hd141619141913%_
                                     _%tl141618141915%_
                                     _%e141623141918%_
                                     _%hd141622141921%_
                                     _%tl141621141923%_
                                     _%e141626141926%_
                                     _%hd141625141929%_
                                     _%tl141624141931%_
                                     _%e141629141934%_
                                     _%hd141628141937%_
                                     _%tl141627141939%_
                                     _%e141632141942%_
                                     _%hd141631141945%_
                                     _%tl141630141947%_))))
                            (_%__match143978143979%_
                             _%e141599141854%_
                             _%hd141598141857%_
                             _%tl141597141859%_
                             _%e141611141886%_
                             _%hd141610141889%_
                             _%tl141609141891%_
                             _%e141614141894%_
                             _%hd141613141897%_
                             _%tl141612141899%_
                             _%e141617141902%_
                             _%hd141616141905%_
                             _%tl141615141907%_
                             _%e141620141910%_
                             _%hd141619141913%_
                             _%tl141618141915%_
                             _%e141623141918%_
                             _%hd141622141921%_
                             _%tl141621141923%_
                             _%e141626141926%_
                             _%hd141625141929%_
                             _%tl141624141931%_
                             _%e141629141934%_
                             _%hd141628141937%_
                             _%tl141627141939%_
                             _%e141632141942%_
                             _%hd141631141945%_
                             _%tl141630141947%_))
                        (_%__match143978143979%_
                         _%e141599141854%_
                         _%hd141598141857%_
                         _%tl141597141859%_
                         _%e141611141886%_
                         _%hd141610141889%_
                         _%tl141609141891%_
                         _%e141614141894%_
                         _%hd141613141897%_
                         _%tl141612141899%_
                         _%e141617141902%_
                         _%hd141616141905%_
                         _%tl141615141907%_
                         _%e141620141910%_
                         _%hd141619141913%_
                         _%tl141618141915%_
                         _%e141623141918%_
                         _%hd141622141921%_
                         _%tl141621141923%_
                         _%e141626141926%_
                         _%hd141625141929%_
                         _%tl141624141931%_
                         _%e141629141934%_
                         _%hd141628141937%_
                         _%tl141627141939%_
                         _%e141632141942%_
                         _%hd141631141945%_
                         _%tl141630141947%_))
                    (_%__match143978143979%_
                     _%e141599141854%_
                     _%hd141598141857%_
                     _%tl141597141859%_
                     _%e141611141886%_
                     _%hd141610141889%_
                     _%tl141609141891%_
                     _%e141614141894%_
                     _%hd141613141897%_
                     _%tl141612141899%_
                     _%e141617141902%_
                     _%hd141616141905%_
                     _%tl141615141907%_
                     _%e141620141910%_
                     _%hd141619141913%_
                     _%tl141618141915%_
                     _%e141623141918%_
                     _%hd141622141921%_
                     _%tl141621141923%_
                     _%e141626141926%_
                     _%hd141625141929%_
                     _%tl141624141931%_
                     _%e141629141934%_
                     _%hd141628141937%_
                     _%tl141627141939%_
                     _%e141632141942%_
                     _%hd141631141945%_
                     _%tl141630141947%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match143978143979%_
                                                     _%e141599141854%_
                                                     _%hd141598141857%_
                                                     _%tl141597141859%_
                                                     _%e141611141886%_
                                                     _%hd141610141889%_
                                                     _%tl141609141891%_
                                                     _%e141614141894%_
                                                     _%hd141613141897%_
                                                     _%tl141612141899%_
                                                     _%e141617141902%_
                                                     _%hd141616141905%_
                                                     _%tl141615141907%_
                                                     _%e141620141910%_
                                                     _%hd141619141913%_
                                                     _%tl141618141915%_
                                                     _%e141623141918%_
                                                     _%hd141622141921%_
                                                     _%tl141621141923%_
                                                     _%e141626141926%_
                                                     _%hd141625141929%_
                                                     _%tl141624141931%_
                                                     _%e141629141934%_
                                                     _%hd141628141937%_
                                                     _%tl141627141939%_
                                                     _%e141632141942%_
                                                     _%hd141631141945%_
                                                     _%tl141630141947%_))))
                                            (_%__match143978143979%_
                                             _%e141599141854%_
                                             _%hd141598141857%_
                                             _%tl141597141859%_
                                             _%e141611141886%_
                                             _%hd141610141889%_
                                             _%tl141609141891%_
                                             _%e141614141894%_
                                             _%hd141613141897%_
                                             _%tl141612141899%_
                                             _%e141617141902%_
                                             _%hd141616141905%_
                                             _%tl141615141907%_
                                             _%e141620141910%_
                                             _%hd141619141913%_
                                             _%tl141618141915%_
                                             _%e141623141918%_
                                             _%hd141622141921%_
                                             _%tl141621141923%_
                                             _%e141626141926%_
                                             _%hd141625141929%_
                                             _%tl141624141931%_
                                             _%e141629141934%_
                                             _%hd141628141937%_
                                             _%tl141627141939%_
                                             _%e141632141942%_
                                             _%hd141631141945%_
                                             _%tl141630141947%_))))
                                    (_%__match143978143979%_
                                     _%e141599141854%_
                                     _%hd141598141857%_
                                     _%tl141597141859%_
                                     _%e141611141886%_
                                     _%hd141610141889%_
                                     _%tl141609141891%_
                                     _%e141614141894%_
                                     _%hd141613141897%_
                                     _%tl141612141899%_
                                     _%e141617141902%_
                                     _%hd141616141905%_
                                     _%tl141615141907%_
                                     _%e141620141910%_
                                     _%hd141619141913%_
                                     _%tl141618141915%_
                                     _%e141623141918%_
                                     _%hd141622141921%_
                                     _%tl141621141923%_
                                     _%e141626141926%_
                                     _%hd141625141929%_
                                     _%tl141624141931%_
                                     _%e141629141934%_
                                     _%hd141628141937%_
                                     _%tl141627141939%_
                                     _%e141632141942%_
                                     _%hd141631141945%_
                                     _%tl141630141947%_))
                                (_%__match143978143979%_
                                 _%e141599141854%_
                                 _%hd141598141857%_
                                 _%tl141597141859%_
                                 _%e141611141886%_
                                 _%hd141610141889%_
                                 _%tl141609141891%_
                                 _%e141614141894%_
                                 _%hd141613141897%_
                                 _%tl141612141899%_
                                 _%e141617141902%_
                                 _%hd141616141905%_
                                 _%tl141615141907%_
                                 _%e141620141910%_
                                 _%hd141619141913%_
                                 _%tl141618141915%_
                                 _%e141623141918%_
                                 _%hd141622141921%_
                                 _%tl141621141923%_
                                 _%e141626141926%_
                                 _%hd141625141929%_
                                 _%tl141624141931%_
                                 _%e141629141934%_
                                 _%hd141628141937%_
                                 _%tl141627141939%_
                                 _%e141632141942%_
                                 _%hd141631141945%_
                                 _%tl141630141947%_))
                            (_%__kont143881143882%_))))
                    (_%__kont143881143882%_))
                (_%__kont143881143882%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont143881143882%_))))
                                            (_%__kont143881143882%_))))
                                    (_%__kont143881143882%_))
                                (_%__kont143881143882%_))))
                        (_%__kont143881143882%_))
                    (_%__kont143881143882%_))
                (_%__kont143881143882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont143881143882%_))))
                                        (_%__kont143881143882%_))
                                    (_%__kont143881143882%_))
                                (_%__kont143881143882%_))))
                        (_%__kont143881143882%_))))
                (_%__kont143881143882%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141603141867%_
                                       _%target141600141862%_
                                       '())))))
                               (_%__match143896143897%_
                                (lambda (_%e141551142114%_
                                         _%hd141550142117%_
                                         _%tl141549142119%_
                                         _%__splice143869143870%_
                                         _%target141552142122%_
                                         _%tl141554142124%_)
                                  (letrec ((_%loop141555142127%_
                                            (lambda (_%hd141553142130%_
                                                     _%arg141559142132%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141553142130%_))
                                                  (let ((_%e141556142135%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141553142130%_))))
                                                    (let ((_%lp-tl141558142140%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141556142135%_)))
                                                          (_%lp-hd141557142138%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141556142135%_))))
                                                      (let ((__tmp145160
                                                             (cons _%lp-hd141557142138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141559142132%_)))
                (declare (not safe))
                (_%loop141555142127%_ _%lp-tl141558142140%_ __tmp145160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141560142143%_
                                                         (reverse _%arg141559142132%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141549142119%_))
                                                        (let ((_%e141563142146%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141549142119%_))))
                  (let ((_%tl141561142151%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141563142146%_)))
                        (_%hd141562142149%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141563142146%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141562142149%_))
                        (let ((_%e141566142154%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141562142149%_))))
                          (let ((_%tl141564142159%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141566142154%_)))
                                (_%hd141565142157%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141566142154%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141565142157%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141565142157%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141564142159%_))
                                        (let ((_%e141569142162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141564142159%_))))
                                          (let ((_%tl141567142167%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141569142162%_)))
                                                (_%hd141568142165%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141569142162%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141568142165%_))
                                                (let ((_%e141572142170%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141568142165%_))))
                                                  (let ((_%tl141570142175%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141572142170%_)))
                                                        (_%hd141571142173%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141572142170%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141571142173%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141571142173%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141570142175%_))
                        (let ((_%e141575142178%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141570142175%_))))
                          (let ((_%tl141573142183%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141575142178%_)))
                                (_%hd141574142181%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141575142178%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141573142183%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141567142167%_))
                                    (let ((_%__splice143871143872%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141567142167%_
                                              '0))))
                                      (let ((_%tl141578142188%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143871143872%_
                                                '1)))
                                            (_%target141576142186%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143871143872%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141578142188%_))
                                            (letrec ((_%loop141579142191%_
                                                      (lambda (_%hd141577142194%_
                                                               _%xarg141583142196%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141577142194%_))
                                                            (let ((_%e141580142199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141577142194%_))))
                      (let ((_%lp-tl141582142204%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141580142199%_)))
                            (_%lp-hd141581142202%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141580142199%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141581142202%_))
                            (let ((_%e141587142207%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141581142202%_))))
                              (let ((_%tl141585142212%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141587142207%_)))
                                    (_%hd141586142210%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141587142207%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141586142210%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141586142210%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141585142212%_))
                                            (let ((_%e141590142215%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141585142212%_))))
                                              (let ((_%tl141588142220%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141590142215%_)))
                                                    (_%hd141589142218%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141590142215%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141588142220%_))
                                                    (let ((__tmp145161
                                                           (cons _%hd141589142218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg141583142196%_)))
              (declare (not safe))
              (_%loop141579142191%_ _%lp-tl141582142204%_ __tmp145161))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match143908143909%_
                                                     _%e141551142114%_
                                                     _%hd141550142117%_
                                                     _%tl141549142119%_
                                                     _%__splice143869143870%_
                                                     _%target141552142122%_
                                                     _%tl141554142124%_))))
                                            (_%__match143908143909%_
                                             _%e141551142114%_
                                             _%hd141550142117%_
                                             _%tl141549142119%_
                                             _%__splice143869143870%_
                                             _%target141552142122%_
                                             _%tl141554142124%_))
                                        (_%__match143908143909%_
                                         _%e141551142114%_
                                         _%hd141550142117%_
                                         _%tl141549142119%_
                                         _%__splice143869143870%_
                                         _%target141552142122%_
                                         _%tl141554142124%_))
                                    (_%__match143908143909%_
                                     _%e141551142114%_
                                     _%hd141550142117%_
                                     _%tl141549142119%_
                                     _%__splice143869143870%_
                                     _%target141552142122%_
                                     _%tl141554142124%_))))
                            (_%__match143908143909%_
                             _%e141551142114%_
                             _%hd141550142117%_
                             _%tl141549142119%_
                             _%__splice143869143870%_
                             _%target141552142122%_
                             _%tl141554142124%_))))
                    (let ((_%xarg141584142223%_
                           (reverse _%xarg141583142196%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141561142151%_))
                          (let ((_%L142226%_ _%xarg141584142223%_)
                                (_%L142227%_ _%hd141574142181%_)
                                (_%L142228%_ _%arg141560142143%_))
                            (if (and (let ((__tmp145162
                                            (let ((__tmp145163
                                                   (lambda (_%g142256142259%_
                                                            _%g142257142261%_)
                                                     (cons _%g142256142259%_
                                                           _%g142257142261%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145163
                                               '()
                                               _%L142228%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp145162))
                                     (let ((__tmp145166
                                            (length (let ((__tmp145167
                                                           (lambda (_%g142263142266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142264142268%_)
                     (cons _%g142263142266%_ _%g142264142268%_))))
              (declare (not safe))
              (__foldr1 __tmp145167 '() _%L142228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp145164
                                            (length (let ((__tmp145165
                                                           (lambda (_%g142270142273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142271142275%_)
                     (cons _%g142270142273%_ _%g142271142275%_))))
              (declare (not safe))
              (__foldr1 __tmp145165 '() _%L142226%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145166 __tmp145164))
                                     (let ((__tmp145170
                                            (let ((__tmp145171
                                                   (lambda (_%g142277142280%_
                                                            _%g142278142282%_)
                                                     (cons _%g142277142280%_
                                                           _%g142278142282%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145171
                                               '()
                                               _%L142228%_)))
                                           (__tmp145168
                                            (let ((__tmp145169
                                                   (lambda (_%g142284142287%_
                                                            _%g142285142289%_)
                                                     (cons _%g142284142287%_
                                                           _%g142285142289%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145169
                                               '()
                                               _%L142226%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp145170
                                        __tmp145168))
                                     (let ((__tmp145172
                                            (let ((__tmp145175
                                                   (lambda (_%g142291142293%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g142291142293%_
                                                        _%L142227%_))))
                                                  (__tmp145173
                                                   (let ((__tmp145174
                                                          (lambda (_%g142295142298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g142296142300%_)
                    (cons _%g142295142298%_ _%g142296142300%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp145174
                                                      '()
                                                      _%L142228%_))))
                                              (declare (not safe))
                                              (__find __tmp145175
                                                      __tmp145173))))
                                       (declare (not safe))
                                       (not __tmp145172)))
                                (_%__kont143867143868%_
                                 _%L142226%_
                                 _%L142227%_
                                 _%L142228%_)
                                (_%__match143908143909%_
                                 _%e141551142114%_
                                 _%hd141550142117%_
                                 _%tl141549142119%_
                                 _%__splice143869143870%_
                                 _%target141552142122%_
                                 _%tl141554142124%_)))
                          (_%__match143908143909%_
                           _%e141551142114%_
                           _%hd141550142117%_
                           _%tl141549142119%_
                           _%__splice143869143870%_
                           _%target141552142122%_
                           _%tl141554142124%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop141579142191%_
                                                 _%target141576142186%_
                                                 '())))
                                            (_%__match143908143909%_
                                             _%e141551142114%_
                                             _%hd141550142117%_
                                             _%tl141549142119%_
                                             _%__splice143869143870%_
                                             _%target141552142122%_
                                             _%tl141554142124%_))))
                                    (_%__match143908143909%_
                                     _%e141551142114%_
                                     _%hd141550142117%_
                                     _%tl141549142119%_
                                     _%__splice143869143870%_
                                     _%target141552142122%_
                                     _%tl141554142124%_))
                                (_%__match143908143909%_
                                 _%e141551142114%_
                                 _%hd141550142117%_
                                 _%tl141549142119%_
                                 _%__splice143869143870%_
                                 _%target141552142122%_
                                 _%tl141554142124%_))))
                        (_%__match143908143909%_
                         _%e141551142114%_
                         _%hd141550142117%_
                         _%tl141549142119%_
                         _%__splice143869143870%_
                         _%target141552142122%_
                         _%tl141554142124%_))
                    (_%__match143908143909%_
                     _%e141551142114%_
                     _%hd141550142117%_
                     _%tl141549142119%_
                     _%__splice143869143870%_
                     _%target141552142122%_
                     _%tl141554142124%_))
                (_%__match143908143909%_
                 _%e141551142114%_
                 _%hd141550142117%_
                 _%tl141549142119%_
                 _%__splice143869143870%_
                 _%target141552142122%_
                 _%tl141554142124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match143908143909%_
                                                 _%e141551142114%_
                                                 _%hd141550142117%_
                                                 _%tl141549142119%_
                                                 _%__splice143869143870%_
                                                 _%target141552142122%_
                                                 _%tl141554142124%_))))
                                        (_%__match143908143909%_
                                         _%e141551142114%_
                                         _%hd141550142117%_
                                         _%tl141549142119%_
                                         _%__splice143869143870%_
                                         _%target141552142122%_
                                         _%tl141554142124%_))
                                    (_%__match143908143909%_
                                     _%e141551142114%_
                                     _%hd141550142117%_
                                     _%tl141549142119%_
                                     _%__splice143869143870%_
                                     _%target141552142122%_
                                     _%tl141554142124%_))
                                (_%__match143908143909%_
                                 _%e141551142114%_
                                 _%hd141550142117%_
                                 _%tl141549142119%_
                                 _%__splice143869143870%_
                                 _%target141552142122%_
                                 _%tl141554142124%_))))
                        (_%__match143908143909%_
                         _%e141551142114%_
                         _%hd141550142117%_
                         _%tl141549142119%_
                         _%__splice143869143870%_
                         _%target141552142122%_
                         _%tl141554142124%_))))
                (_%__match143908143909%_
                 _%e141551142114%_
                 _%hd141550142117%_
                 _%tl141549142119%_
                 _%__splice143869143870%_
                 _%target141552142122%_
                 _%tl141554142124%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141555142127%_
                                       _%target141552142122%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx143865143866%_))
                              (let ((_%e141551142114%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx143865143866%_))))
                                (let ((_%tl141549142119%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141551142114%_)))
                                      (_%hd141550142117%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141551142114%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141550142117%_))
                                      (let ((_%__splice143869143870%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141550142117%_
                                                '0))))
                                        (let ((_%tl141554142124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143869143870%_
                                                  '1)))
                                              (_%target141552142122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143869143870%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141554142124%_))
                                              (_%__match143896143897%_
                                               _%e141551142114%_
                                               _%hd141550142117%_
                                               _%tl141549142119%_
                                               _%__splice143869143870%_
                                               _%target141552142122%_
                                               _%tl141554142124%_)
                                              (_%__match143908143909%_
                                               _%e141551142114%_
                                               _%hd141550142117%_
                                               _%tl141549142119%_
                                               _%__splice143869143870%_
                                               _%target141552142122%_
                                               _%tl141554142124%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141549142119%_))
                                          (let ((_%e141666141721%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141549142119%_))))
                                            (let ((_%tl141664141726%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141666141721%_)))
                                                  (_%hd141665141724%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141666141721%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141665141724%_))
                                                  (let ((_%e141669141729%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141665141724%_))))
                                                    (let ((_%tl141667141734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141669141729%_)))
                                                          (_%hd141668141732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141669141729%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141668141732%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141668141732%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141667141734%_))
                          (let ((_%e141672141737%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141667141734%_))))
                            (let ((_%tl141670141742%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141672141737%_)))
                                  (_%hd141671141740%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141672141737%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141671141740%_))
                                  (let ((_%e141675141745%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141671141740%_))))
                                    (let ((_%tl141673141750%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141675141745%_)))
                                          (_%hd141674141748%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141675141745%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141674141748%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141674141748%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141673141750%_))
                                                  (let ((_%e141678141753%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141673141750%_))))
                                                    (let ((_%tl141676141758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141678141753%_)))
                                                          (_%hd141677141756%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141678141753%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141676141758%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141670141742%_))
                      (let ((_%e141681141761%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141670141742%_))))
                        (let ((_%tl141679141766%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141681141761%_)))
                              (_%hd141680141764%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141681141761%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141680141764%_))
                              (let ((_%e141684141769%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141680141764%_))))
                                (let ((_%tl141682141774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141684141769%_)))
                                      (_%hd141683141772%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141684141769%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141683141772%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141683141772%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141682141774%_))
                                              (let ((_%e141687141777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141682141774%_))))
                                                (let ((_%tl141685141782%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141687141777%_)))
                                                      (_%hd141686141780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141687141777%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141685141782%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141679141766%_))
                                                          (let ((_%e141690141785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141679141766%_))))
                    (let ((_%tl141688141790%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141690141785%_)))
                          (_%hd141689141788%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141690141785%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd141689141788%_))
                          (let ((_%e141693141793%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd141689141788%_))))
                            (let ((_%tl141691141798%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141693141793%_)))
                                  (_%hd141692141796%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141693141793%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd141692141796%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd141692141796%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141691141798%_))
                                          (let ((_%e141696141801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141691141798%_))))
                                            (let ((_%tl141694141806%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141696141801%_)))
                                                  (_%hd141695141804%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141696141801%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141694141806%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141688141790%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141664141726%_))
                                                          (_%__match144006144007%_
                                                           _%e141551142114%_
                                                           _%hd141550142117%_
                                                           _%tl141549142119%_
                                                           _%e141666141721%_
                                                           _%hd141665141724%_
                                                           _%tl141664141726%_
                                                           _%e141669141729%_
                                                           _%hd141668141732%_
                                                           _%tl141667141734%_
                                                           _%e141672141737%_
                                                           _%hd141671141740%_
                                                           _%tl141670141742%_
                                                           _%e141675141745%_
                                                           _%hd141674141748%_
                                                           _%tl141673141750%_
                                                           _%e141678141753%_
                                                           _%hd141677141756%_
                                                           _%tl141676141758%_
                                                           _%e141681141761%_
                                                           _%hd141680141764%_
                                                           _%tl141679141766%_
                                                           _%e141684141769%_
                                                           _%hd141683141772%_
                                                           _%tl141682141774%_
                                                           _%e141687141777%_
                                                           _%hd141686141780%_
                                                           _%tl141685141782%_
                                                           _%e141690141785%_
                                                           _%hd141689141788%_
                                                           _%tl141688141790%_
                                                           _%e141693141793%_
                                                           _%hd141692141796%_
                                                           _%tl141691141798%_
                                                           _%e141696141801%_
                                                           _%hd141695141804%_
                                                           _%tl141694141806%_)
                                                          (_%__kont143881143882%_))
                                                      (_%__kont143881143882%_))
                                                  (_%__kont143881143882%_))))
                                          (_%__kont143881143882%_))
                                      (_%__kont143881143882%_))
                                  (_%__kont143881143882%_))))
                          (_%__kont143881143882%_))))
                  (_%__kont143881143882%_))
              (_%__kont143881143882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143881143882%_))
                                          (_%__kont143881143882%_))
                                      (_%__kont143881143882%_))))
                              (_%__kont143881143882%_))))
                      (_%__kont143881143882%_))
                  (_%__kont143881143882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143881143882%_))
                                              (_%__kont143881143882%_))
                                          (_%__kont143881143882%_))))
                                  (_%__kont143881143882%_))))
                          (_%__kont143881143882%_))
                      (_%__kont143881143882%_))
                  (_%__kont143881143882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143881143882%_))))
                                          (_%__kont143881143882%_)))))
                              (_%__kont143881143882%_)))))))
                 (_%dispatch-case-e140849%_
                  (lambda (_%hd141000%_ _%body141001%_)
                    (let* ((_%form141003%_
                            (cons _%hd141000%_ (cons _%body141001%_ '())))
                           (_%__stx144009144010%_ _%form141003%_)
                           (_%g141007141131%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144009144010%_)))))
                      (let ((_%__kont144011144012%_
                             (lambda (_%L141502%_ _%L141503%_ _%L141504%_)
                               (let ((__tmp145176
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141503%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140845%_
                                  __tmp145176))))
                            (_%__kont144017144018%_
                             (lambda (_%L141350%_
                                      _%L141351%_
                                      _%L141352%_
                                      _%L141353%_)
                               (let ((__tmp145177
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141350%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140845%_
                                  __tmp145177))))
                            (_%__kont144021144022%_
                             (lambda (_%L141216%_ _%L141217%_ _%L141218%_)
                               (let ((__tmp145178
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141216%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140845%_
                                  __tmp145178)))))
                        (let* ((_%__match144118144119%_
                                (lambda (_%e141099141136%_
                                         _%hd141098141139%_
                                         _%tl141097141141%_
                                         _%e141102141144%_
                                         _%hd141101141147%_
                                         _%tl141100141149%_
                                         _%e141105141152%_
                                         _%hd141104141155%_
                                         _%tl141103141157%_
                                         _%e141108141160%_
                                         _%hd141107141163%_
                                         _%tl141106141165%_
                                         _%e141111141168%_
                                         _%hd141110141171%_
                                         _%tl141109141173%_
                                         _%e141114141176%_
                                         _%hd141113141179%_
                                         _%tl141112141181%_
                                         _%e141117141184%_
                                         _%hd141116141187%_
                                         _%tl141115141189%_
                                         _%e141120141192%_
                                         _%hd141119141195%_
                                         _%tl141118141197%_
                                         _%e141123141200%_
                                         _%hd141122141203%_
                                         _%tl141121141205%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141115141189%_))
                                      (let ((_%e141126141208%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141115141189%_))))
                                        (let ((_%tl141124141213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141126141208%_)))
                                              (_%hd141125141211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141126141208%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141124141213%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141100141149%_))
                                                  (_%__kont144021144022%_
                                                   _%hd141122141203%_
                                                   _%hd141113141179%_
                                                   _%hd141098141139%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141007141131%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141007141131%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141007141131%_)))))
                               (_%__match144048144049%_
                                (lambda (_%e141060141254%_
                                         _%hd141059141257%_
                                         _%tl141058141259%_
                                         _%__splice144019144020%_
                                         _%target141061141262%_
                                         _%tl141063141264%_)
                                  (letrec ((_%loop141064141267%_
                                            (lambda (_%hd141062141270%_
                                                     _%arg141068141272%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141062141270%_))
                                                  (let ((_%e141065141275%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141062141270%_))))
                                                    (let ((_%lp-tl141067141280%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141065141275%_)))
                                                          (_%lp-hd141066141278%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141065141275%_))))
                                                      (let ((__tmp145179
                                                             (cons _%lp-hd141066141278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141068141272%_)))
                (declare (not safe))
                (_%loop141064141267%_ _%lp-tl141067141280%_ __tmp145179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141069141283%_
                                                         (reverse _%arg141068141272%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141058141259%_))
                                                        (let ((_%e141072141286%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141058141259%_))))
                  (let ((_%tl141070141291%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141072141286%_)))
                        (_%hd141071141289%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141072141286%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141071141289%_))
                        (let ((_%e141075141294%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141071141289%_))))
                          (let ((_%tl141073141299%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141075141294%_)))
                                (_%hd141074141297%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141075141294%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141074141297%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141074141297%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141073141299%_))
                                        (let ((_%e141078141302%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141073141299%_))))
                                          (let ((_%tl141076141307%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141078141302%_)))
                                                (_%hd141077141305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141078141302%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141077141305%_))
                                                (let ((_%e141081141310%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141077141305%_))))
                                                  (let ((_%tl141079141315%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141081141310%_)))
                                                        (_%hd141080141313%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141081141310%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141080141313%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141080141313%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141079141315%_))
                        (let ((_%e141084141318%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141079141315%_))))
                          (let ((_%tl141082141323%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141084141318%_)))
                                (_%hd141083141321%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141084141318%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141082141323%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141076141307%_))
                                    (let ((_%e141087141326%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141076141307%_))))
                                      (let ((_%tl141085141331%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141087141326%_)))
                                            (_%hd141086141329%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141087141326%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141086141329%_))
                                            (let ((_%e141090141334%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141086141329%_))))
                                              (let ((_%tl141088141339%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141090141334%_)))
                                                    (_%hd141089141337%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141090141334%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141089141337%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141089141337%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141088141339%_))
                                                            (let ((_%e141093141342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141088141339%_))))
                      (let ((_%tl141091141347%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141093141342%_)))
                            (_%hd141092141345%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141093141342%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141091141347%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141070141291%_))
                                (_%__kont144017144018%_
                                 _%hd141092141345%_
                                 _%hd141083141321%_
                                 _%tl141063141264%_
                                 _%arg141069141283%_)
                                (_%__match144118144119%_
                                 _%e141060141254%_
                                 _%hd141059141257%_
                                 _%tl141058141259%_
                                 _%e141072141286%_
                                 _%hd141071141289%_
                                 _%tl141070141291%_
                                 _%e141075141294%_
                                 _%hd141074141297%_
                                 _%tl141073141299%_
                                 _%e141078141302%_
                                 _%hd141077141305%_
                                 _%tl141076141307%_
                                 _%e141081141310%_
                                 _%hd141080141313%_
                                 _%tl141079141315%_
                                 _%e141084141318%_
                                 _%hd141083141321%_
                                 _%tl141082141323%_
                                 _%e141087141326%_
                                 _%hd141086141329%_
                                 _%tl141085141331%_
                                 _%e141090141334%_
                                 _%hd141089141337%_
                                 _%tl141088141339%_
                                 _%e141093141342%_
                                 _%hd141092141345%_
                                 _%tl141091141347%_))
                            (let ()
                              (declare (not safe))
                              (_%g141007141131%_)))))
                    (let () (declare (not safe)) (_%g141007141131%_)))
                (let () (declare (not safe)) (_%g141007141131%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141007141131%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g141007141131%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141007141131%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141007141131%_)))))
                        (let () (declare (not safe)) (_%g141007141131%_)))
                    (let () (declare (not safe)) (_%g141007141131%_)))
                (let () (declare (not safe)) (_%g141007141131%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g141007141131%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141007141131%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141007141131%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141007141131%_)))))
                        (let () (declare (not safe)) (_%g141007141131%_)))))
                (let () (declare (not safe)) (_%g141007141131%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141064141267%_
                                       _%target141061141262%_
                                       '())))))
                               (_%__match144036144037%_
                                (lambda (_%e141014141390%_
                                         _%hd141013141393%_
                                         _%tl141012141395%_
                                         _%__splice144013144014%_
                                         _%target141015141398%_
                                         _%tl141017141400%_)
                                  (letrec ((_%loop141018141403%_
                                            (lambda (_%hd141016141406%_
                                                     _%arg141022141408%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141016141406%_))
                                                  (let ((_%e141019141411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141016141406%_))))
                                                    (let ((_%lp-tl141021141416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141019141411%_)))
                                                          (_%lp-hd141020141414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141019141411%_))))
                                                      (let ((__tmp145180
                                                             (cons _%lp-hd141020141414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141022141408%_)))
                (declare (not safe))
                (_%loop141018141403%_ _%lp-tl141021141416%_ __tmp145180))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141023141419%_
                                                         (reverse _%arg141022141408%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141012141395%_))
                                                        (let ((_%e141026141422%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141012141395%_))))
                  (let ((_%tl141024141427%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141026141422%_)))
                        (_%hd141025141425%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141026141422%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141025141425%_))
                        (let ((_%e141029141430%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141025141425%_))))
                          (let ((_%tl141027141435%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141029141430%_)))
                                (_%hd141028141433%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141029141430%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141028141433%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141028141433%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141027141435%_))
                                        (let ((_%e141032141438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141027141435%_))))
                                          (let ((_%tl141030141443%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141032141438%_)))
                                                (_%hd141031141441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141032141438%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141031141441%_))
                                                (let ((_%e141035141446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141031141441%_))))
                                                  (let ((_%tl141033141451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141035141446%_)))
                                                        (_%hd141034141449%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141035141446%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141034141449%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141034141449%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141033141451%_))
                        (let ((_%e141038141454%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141033141451%_))))
                          (let ((_%tl141036141459%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141038141454%_)))
                                (_%hd141037141457%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141038141454%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141036141459%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141030141443%_))
                                    (let ((_%__splice144015144016%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141030141443%_
                                              '0))))
                                      (let ((_%tl141041141464%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144015144016%_
                                                '1)))
                                            (_%target141039141462%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144015144016%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141041141464%_))
                                            (letrec ((_%loop141042141467%_
                                                      (lambda (_%hd141040141470%_
                                                               _%xarg141046141472%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141040141470%_))
                                                            (let ((_%e141043141475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141040141470%_))))
                      (let ((_%lp-tl141045141480%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141043141475%_)))
                            (_%lp-hd141044141478%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141043141475%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141044141478%_))
                            (let ((_%e141050141483%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141044141478%_))))
                              (let ((_%tl141048141488%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141050141483%_)))
                                    (_%hd141049141486%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141050141483%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141049141486%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141049141486%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141048141488%_))
                                            (let ((_%e141053141491%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141048141488%_))))
                                              (let ((_%tl141051141496%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141053141491%_)))
                                                    (_%hd141052141494%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141053141491%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141051141496%_))
                                                    (let ((__tmp145181
                                                           (cons _%hd141052141494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg141046141472%_)))
              (declare (not safe))
              (_%loop141042141467%_ _%lp-tl141045141480%_ __tmp145181))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144048144049%_
                                                     _%e141014141390%_
                                                     _%hd141013141393%_
                                                     _%tl141012141395%_
                                                     _%__splice144013144014%_
                                                     _%target141015141398%_
                                                     _%tl141017141400%_))))
                                            (_%__match144048144049%_
                                             _%e141014141390%_
                                             _%hd141013141393%_
                                             _%tl141012141395%_
                                             _%__splice144013144014%_
                                             _%target141015141398%_
                                             _%tl141017141400%_))
                                        (_%__match144048144049%_
                                         _%e141014141390%_
                                         _%hd141013141393%_
                                         _%tl141012141395%_
                                         _%__splice144013144014%_
                                         _%target141015141398%_
                                         _%tl141017141400%_))
                                    (_%__match144048144049%_
                                     _%e141014141390%_
                                     _%hd141013141393%_
                                     _%tl141012141395%_
                                     _%__splice144013144014%_
                                     _%target141015141398%_
                                     _%tl141017141400%_))))
                            (_%__match144048144049%_
                             _%e141014141390%_
                             _%hd141013141393%_
                             _%tl141012141395%_
                             _%__splice144013144014%_
                             _%target141015141398%_
                             _%tl141017141400%_))))
                    (let ((_%xarg141047141499%_
                           (reverse _%xarg141046141472%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141024141427%_))
                          (_%__kont144011144012%_
                           _%xarg141047141499%_
                           _%hd141037141457%_
                           _%arg141023141419%_)
                          (_%__match144048144049%_
                           _%e141014141390%_
                           _%hd141013141393%_
                           _%tl141012141395%_
                           _%__splice144013144014%_
                           _%target141015141398%_
                           _%tl141017141400%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop141042141467%_
                                                 _%target141039141462%_
                                                 '())))
                                            (_%__match144048144049%_
                                             _%e141014141390%_
                                             _%hd141013141393%_
                                             _%tl141012141395%_
                                             _%__splice144013144014%_
                                             _%target141015141398%_
                                             _%tl141017141400%_))))
                                    (_%__match144048144049%_
                                     _%e141014141390%_
                                     _%hd141013141393%_
                                     _%tl141012141395%_
                                     _%__splice144013144014%_
                                     _%target141015141398%_
                                     _%tl141017141400%_))
                                (_%__match144048144049%_
                                 _%e141014141390%_
                                 _%hd141013141393%_
                                 _%tl141012141395%_
                                 _%__splice144013144014%_
                                 _%target141015141398%_
                                 _%tl141017141400%_))))
                        (_%__match144048144049%_
                         _%e141014141390%_
                         _%hd141013141393%_
                         _%tl141012141395%_
                         _%__splice144013144014%_
                         _%target141015141398%_
                         _%tl141017141400%_))
                    (_%__match144048144049%_
                     _%e141014141390%_
                     _%hd141013141393%_
                     _%tl141012141395%_
                     _%__splice144013144014%_
                     _%target141015141398%_
                     _%tl141017141400%_))
                (_%__match144048144049%_
                 _%e141014141390%_
                 _%hd141013141393%_
                 _%tl141012141395%_
                 _%__splice144013144014%_
                 _%target141015141398%_
                 _%tl141017141400%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144048144049%_
                                                 _%e141014141390%_
                                                 _%hd141013141393%_
                                                 _%tl141012141395%_
                                                 _%__splice144013144014%_
                                                 _%target141015141398%_
                                                 _%tl141017141400%_))))
                                        (_%__match144048144049%_
                                         _%e141014141390%_
                                         _%hd141013141393%_
                                         _%tl141012141395%_
                                         _%__splice144013144014%_
                                         _%target141015141398%_
                                         _%tl141017141400%_))
                                    (_%__match144048144049%_
                                     _%e141014141390%_
                                     _%hd141013141393%_
                                     _%tl141012141395%_
                                     _%__splice144013144014%_
                                     _%target141015141398%_
                                     _%tl141017141400%_))
                                (_%__match144048144049%_
                                 _%e141014141390%_
                                 _%hd141013141393%_
                                 _%tl141012141395%_
                                 _%__splice144013144014%_
                                 _%target141015141398%_
                                 _%tl141017141400%_))))
                        (_%__match144048144049%_
                         _%e141014141390%_
                         _%hd141013141393%_
                         _%tl141012141395%_
                         _%__splice144013144014%_
                         _%target141015141398%_
                         _%tl141017141400%_))))
                (_%__match144048144049%_
                 _%e141014141390%_
                 _%hd141013141393%_
                 _%tl141012141395%_
                 _%__splice144013144014%_
                 _%target141015141398%_
                 _%tl141017141400%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141018141403%_
                                       _%target141015141398%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144009144010%_))
                              (let ((_%e141014141390%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144009144010%_))))
                                (let ((_%tl141012141395%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141014141390%_)))
                                      (_%hd141013141393%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141014141390%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141013141393%_))
                                      (let ((_%__splice144013144014%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141013141393%_
                                                '0))))
                                        (let ((_%tl141017141400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144013144014%_
                                                  '1)))
                                              (_%target141015141398%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144013144014%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141017141400%_))
                                              (_%__match144036144037%_
                                               _%e141014141390%_
                                               _%hd141013141393%_
                                               _%tl141012141395%_
                                               _%__splice144013144014%_
                                               _%target141015141398%_
                                               _%tl141017141400%_)
                                              (_%__match144048144049%_
                                               _%e141014141390%_
                                               _%hd141013141393%_
                                               _%tl141012141395%_
                                               _%__splice144013144014%_
                                               _%target141015141398%_
                                               _%tl141017141400%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141012141395%_))
                                          (let ((_%e141102141144%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141012141395%_))))
                                            (let ((_%tl141100141149%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141102141144%_)))
                                                  (_%hd141101141147%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141102141144%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141101141147%_))
                                                  (let ((_%e141105141152%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141101141147%_))))
                                                    (let ((_%tl141103141157%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141105141152%_)))
                                                          (_%hd141104141155%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141105141152%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141104141155%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141104141155%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141103141157%_))
                          (let ((_%e141108141160%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141103141157%_))))
                            (let ((_%tl141106141165%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141108141160%_)))
                                  (_%hd141107141163%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141108141160%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141107141163%_))
                                  (let ((_%e141111141168%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141107141163%_))))
                                    (let ((_%tl141109141173%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141111141168%_)))
                                          (_%hd141110141171%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141111141168%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141110141171%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141110141171%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141109141173%_))
                                                  (let ((_%e141114141176%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141109141173%_))))
                                                    (let ((_%tl141112141181%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141114141176%_)))
                                                          (_%hd141113141179%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141114141176%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141112141181%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141106141165%_))
                      (let ((_%e141117141184%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141106141165%_))))
                        (let ((_%tl141115141189%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141117141184%_)))
                              (_%hd141116141187%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141117141184%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141116141187%_))
                              (let ((_%e141120141192%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141116141187%_))))
                                (let ((_%tl141118141197%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141120141192%_)))
                                      (_%hd141119141195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141120141192%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141119141195%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141119141195%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141118141197%_))
                                              (let ((_%e141123141200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141118141197%_))))
                                                (let ((_%tl141121141205%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141123141200%_)))
                                                      (_%hd141122141203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141123141200%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141121141205%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141115141189%_))
                                                          (let ((_%e141126141208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141115141189%_))))
                    (let ((_%tl141124141213%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141126141208%_)))
                          (_%hd141125141211%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141126141208%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141124141213%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141100141149%_))
                              (_%__kont144021144022%_
                               _%hd141122141203%_
                               _%hd141113141179%_
                               _%hd141013141393%_)
                              (let ()
                                (declare (not safe))
                                (_%g141007141131%_)))
                          (let () (declare (not safe)) (_%g141007141131%_)))))
                  (let () (declare (not safe)) (_%g141007141131%_)))
              (let () (declare (not safe)) (_%g141007141131%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g141007141131%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141007141131%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141007141131%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g141007141131%_)))))
                      (let () (declare (not safe)) (_%g141007141131%_)))
                  (let () (declare (not safe)) (_%g141007141131%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141007141131%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141007141131%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141007141131%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g141007141131%_)))))
                          (let () (declare (not safe)) (_%g141007141131%_)))
                      (let () (declare (not safe)) (_%g141007141131%_)))
                  (let () (declare (not safe)) (_%g141007141131%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141007141131%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141007141131%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g141007141131%_))))))))
                 (_%generate1140850%_
                  (lambda (_%args140985%_
                           _%arglen140986%_
                           _%hd140987%_
                           _%body140988%_)
                    (let* ((_%len140990%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd140987%_)))
                           (_%condition140995%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd140987%_))
                                (let ()
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#current-compile-decls-unsafe?))
                                      (cons '##fx=
                                            (cons _%arglen140986%_
                                                  (cons _%len140990%_ '())))
                                      (cons 'let
                                            (cons '()
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%arglen140986%_ (cons _%len140990%_ '())))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len140990%_ '0)
                                    (let ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#current-compile-decls-unsafe?))
                                          (cons '##fx>=
                                                (cons _%arglen140986%_
                                                      (cons _%len140990%_
                                                            '())))
                                          (cons 'let
                                                (cons '()
                                                      (cons '(declare
                                                               (not safe))
                                                            (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%arglen140986%_
                                      (cons _%len140990%_ '())))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let () '#t))))
                           (_%dispatch140997%_
                            (if (let ()
                                  (declare (not safe))
                                  (_%dispatch-case?140848%_
                                   _%hd140987%_
                                   _%body140988%_))
                                (let ()
                                  (declare (not safe))
                                  (_%dispatch-case-e140849%_
                                   _%hd140987%_
                                   _%body140988%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _%self140845%_
                                   _%hd140987%_
                                   _%body140988%_)))))
                      (cons _%condition140995%_
                            (cons (cons 'apply
                                        (cons _%dispatch140997%_
                                              (cons _%args140985%_ '())))
                                  '()))))))
          (let* ((_%g140852140880%_
                  (lambda (_%g140853140877%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140853140877%_))))
                 (_%g140851140982%_
                  (lambda (_%g140853140883%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140853140883%_))
                        (let ((_%e140858140885%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140853140883%_))))
                          (let ((_%hd140857140888%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140858140885%_)))
                                (_%tl140856140890%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140858140885%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl140856140890%_))
                                (let ((_g145182_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl140856140890%_
                                          '0))))
                                  (begin
                                    (let ((_g145183_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145182_)
                                                 (##vector-length _g145182_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145183_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145183_)))
                                    (let ((_%target140859140893%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145182_ 0)))
                                          (_%tl140861140895%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145182_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140861140895%_))
                                          (letrec ((_%loop140862140898%_
                                                    (lambda (_%hd140860140901%_
                                                             _%body140866140903%_
                                                             _%hd140867140905%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd140860140901%_))
                                                          (let ((_%e140863140908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd140860140901%_))))
                    (let ((_%lp-hd140864140911%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140863140908%_)))
                          (_%lp-tl140865140913%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140863140908%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd140864140911%_))
                          (let ((_%e140872140916%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd140864140911%_))))
                            (let ((_%hd140871140919%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140872140916%_)))
                                  (_%tl140870140921%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140872140916%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl140870140921%_))
                                  (let ((_%e140875140924%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl140870140921%_))))
                                    (let ((_%hd140874140927%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140875140924%_)))
                                          (_%tl140873140929%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140875140924%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140873140929%_))
                                          (let ((__tmp145185
                                                 (cons _%hd140874140927%_
                                                       _%body140866140903%_))
                                                (__tmp145184
                                                 (cons _%hd140871140919%_
                                                       _%hd140867140905%_)))
                                            (declare (not safe))
                                            (_%loop140862140898%_
                                             _%lp-tl140865140913%_
                                             __tmp145185
                                             __tmp145184))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140852140880%_
                                             _%g140853140883%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g140852140880%_ _%g140853140883%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g140852140880%_ _%g140853140883%_)))))
                  (let ((_%body140868140932%_ (reverse _%body140866140903%_))
                        (_%hd140869140934%_ (reverse _%hd140867140905%_)))
                    ((lambda (_%L140937%_ _%L140938%_)
                       (let ((_%args140957%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen140958%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name140959%_
                              (let ((_%$e140954%_
                                     (let ((__tmp145186
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp145186 _%stx140846%_))))
                                (if _%$e140954%_
                                    _%$e140954%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args140957%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen140958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-decls-unsafe?))
                                     (cons '##length (cons _%args140957%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args140957%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp145190
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name140959%_
                                                                (cons _%args140957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp145187
                                  (map (lambda (_%g140960140963%_
                                                _%g140961140965%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%generate1140850%_
                                            _%args140957%_
                                            _%arglen140958%_
                                            _%g140960140963%_
                                            _%g140961140965%_)))
                                       (let ((__tmp145188
                                              (lambda (_%g140967140970%_
                                                       _%g140968140972%_)
                                                (cons _%g140967140970%_
                                                      _%g140968140972%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145188
                                          '()
                                          _%L140938%_))
                                       (let ((__tmp145189
                                              (lambda (_%g140974140977%_
                                                       _%g140975140979%_)
                                                (cons _%g140974140977%_
                                                      _%g140975140979%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145189
                                          '()
                                          _%L140937%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp145190 __tmp145187)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body140868140932%_
                     _%hd140869140934%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop140862140898%_
                                               _%target140859140893%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140852140880%_
                                             _%g140853140883%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140852140880%_ _%g140853140883%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140852140880%_ _%g140853140883%_))))))
            (declare (not safe))
            (_%g140851140982%_ _%stx140846%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self140116%_ _%stx140117%_ _%compiled-body?140118%_)
        (letrec ((_%generate-simple140120%_
                  (lambda (_%hd140830%_ _%body140831%_)
                    (let ((__tmp145191
                           (let ((__tmp145192
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _%self140116%_
                                     'let
                                     _%hd140830%_
                                     _%body140831%_
                                     _%compiled-body?140118%_))))
                             (declare (not safe))
                             (_%coalesce-let*140122%_ __tmp145192))))
                      (declare (not safe))
                      (_%coalesce-boolean140121%_ __tmp145191))))
                 (_%coalesce-boolean140121%_
                  (lambda (_%code140691%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code140692140718%_ _%code140691%_)
                               (_%else140694140726%_
                                (lambda () _%code140691%_))
                               (_%K140696140763%_
                                (lambda (_%expr2140729%_
                                         _%expr1140730%_
                                         _%id140731%_)
                                  (let* ((_%expr2140732140740%_
                                          _%expr2140729%_)
                                         (_%else140734140748%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1140730%_
                                                        (cons _%expr2140729%_
                                                              '())))))
                                         (_%K140736140753%_
                                          (lambda (_%exprs140751%_)
                                            (cons 'or
                                                  (cons _%expr1140730%_
                                                        _%exprs140751%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2140732140740%_))
                                        (let ((_%hd140737140756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2140732140740%_)))
                                              (_%tl140738140758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2140732140740%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140737140756%_ 'or))
                                              (let ((_%exprs140761%_
                                                     _%tl140738140758%_))
                                                (declare (not safe))
                                                (_%K140736140753%_
                                                 _%exprs140761%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else140734140748%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140734140748%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code140692140718%_))
                              (let ((_%hd140697140766%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code140692140718%_)))
                                    (_%tl140698140768%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code140692140718%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd140697140766%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl140698140768%_))
                                        (let ((_%hd140699140771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl140698140768%_)))
                                              (_%tl140700140773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl140698140768%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd140699140771%_))
                                              (let ((_%hd140711140776%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd140699140771%_)))
                                                    (_%tl140712140778%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd140699140771%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd140711140776%_))
                                                    (let ((_%hd140713140781%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd140711140776%_)))
                                                          (_%tl140714140783%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd140711140776%_))))
                                                      (let ((_%id140786%_
                                                             _%hd140713140781%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl140714140783%_))
                                                            (let ((_%hd140715140788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl140714140783%_)))
                          (_%tl140716140790%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140714140783%_))))
                      (let ((_%expr1140793%_ _%hd140715140788%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl140716140790%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl140712140778%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140700140773%_))
                                    (let ((_%hd140701140795%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140700140773%_)))
                                          (_%tl140702140797%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140700140773%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd140701140795%_))
                                          (let ((_%hd140703140800%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd140701140795%_)))
                                                (_%tl140704140802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd140701140795%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd140703140800%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140704140802%_))
                                                    (let ((_%hd140705140805%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140704140802%_)))
                                                          (_%tl140706140807%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140704140802%_))))
                                                      (if ((lambda (_%g140809140811%_)
                                                             (eq? _%g140809140811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id140786%_))
                   _%hd140705140805%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl140706140807%_))
                      (let ((_%hd140707140814%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl140706140807%_)))
                            (_%tl140708140816%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl140706140807%_))))
                        (if ((lambda (_%g140818140820%_)
                               (eq? _%g140818140820%_ _%id140786%_))
                             _%hd140707140814%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140708140816%_))
                                (let ((_%hd140709140823%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140708140816%_)))
                                      (_%tl140710140825%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140708140816%_))))
                                  (let ((_%expr2140828%_ _%hd140709140823%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl140710140825%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl140702140797%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K140696140763%_
                                               _%expr2140828%_
                                               _%expr1140793%_
                                               _%id140786%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%else140694140726%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140694140726%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%else140694140726%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140694140726%_))))
                      (let () (declare (not safe)) (_%else140694140726%_)))
                  (let () (declare (not safe)) (_%else140694140726%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else140694140726%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else140694140726%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else140694140726%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else140694140726%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else140694140726%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140694140726%_)))))
                    (let () (declare (not safe)) (_%else140694140726%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else140694140726%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%else140694140726%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140694140726%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else140694140726%_))))
                              (let ()
                                (declare (not safe))
                                (_%else140694140726%_))))
                        _%code140691%_)))
                 (_%coalesce-let*140122%_
                  (lambda (_%code140424%_)
                    (let* ((_%code140425140489%_ _%code140424%_)
                           (_%else140429140497%_ (lambda () _%code140424%_)))
                      (let ((_%K140471140642%_
                             (lambda (_%body140638%_
                                      _%expr140639%_
                                      _%id140640%_)
                               (cons 'let
                                     (cons (cons (cons _%id140640%_
                                                       (cons _%expr140639%_
                                                             '()))
                                                 '())
                                           _%body140638%_))))
                            (_%K140448140567%_
                             (lambda (_%body140561%_
                                      _%expr2140562%_
                                      _%id2140563%_
                                      _%expr1140564%_
                                      _%id1140565%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140565%_
                                                       (cons _%expr1140564%_
                                                             '()))
                                                 (cons (cons _%id2140563%_
                                                             (cons _%expr2140562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body140561%_))))
                            (_%K140431140506%_
                             (lambda (_%body140501%_
                                      _%bind140502%_
                                      _%expr1140503%_
                                      _%id1140504%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140504%_
                                                       (cons _%expr1140503%_
                                                             '()))
                                                 _%bind140502%_)
                                           _%body140501%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code140425140489%_))
                            (let ((_%tl140473140647%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code140425140489%_)))
                                  (_%hd140472140645%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code140425140489%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140472140645%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl140473140647%_))
                                      (let ((_%tl140475140652%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl140473140647%_)))
                                            (_%hd140474140650%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl140473140647%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%hd140474140650%_))
                                            (let ((_%tl140483140657%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%hd140474140650%_)))
                                                  (_%hd140482140655%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%hd140474140650%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%hd140482140655%_))
                                                  (let ((_%tl140485140662%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%hd140482140655%_)))
                                                        (_%hd140484140660%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd140482140655%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl140485140662%_))
                                                        (let ((_%tl140487140669%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl140485140662%_)))
                      (_%hd140486140667%_
                       (let ()
                         (declare (not safe))
                         (##car _%tl140485140662%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl140487140669%_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl140483140657%_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%tl140475140652%_))
                              (let ((_%tl140477140676%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%tl140475140652%_)))
                                    (_%hd140476140674%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%tl140475140652%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd140476140674%_))
                                    (let ((_%tl140479140681%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd140476140674%_)))
                                          (_%hd140478140679%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd140476140674%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd140478140679%_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%tl140479140681%_))
                                              (let ((_%tl140481140686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%tl140479140681%_)))
                                                    (_%hd140480140684%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%tl140479140681%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%hd140480140684%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%tl140477140676%_))
                                                        (let ((_%id140665%_
                                                               _%hd140484140660%_)
                                                              (_%expr140672%_
                                                               _%hd140486140667%_)
                                                              (_%body140689%_
                                                               _%tl140481140686%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K140471140642%_
                                                             _%body140689%_
                                                             _%expr140672%_
                                                             _%id140665%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%else140429140497%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%hd140480140684%_))
                                                        (let ((_%tl140460140616%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%hd140480140684%_)))
                      (_%hd140459140614%_
                       (let ()
                         (declare (not safe))
                         (##car _%hd140480140684%_))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%hd140459140614%_))
                      (let ((_%tl140462140621%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%hd140459140614%_)))
                            (_%hd140461140619%_
                             (let ()
                               (declare (not safe))
                               (##car _%hd140459140614%_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl140462140621%_))
                            (let ((_%tl140464140628%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl140462140621%_)))
                                  (_%hd140463140626%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl140462140621%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl140464140628%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140460140616%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140477140676%_))
                                          (let ((_%id1140590%_
                                                 _%hd140484140660%_)
                                                (_%expr1140597%_
                                                 _%hd140486140667%_)
                                                (_%id2140624%_
                                                 _%hd140461140619%_)
                                                (_%expr2140631%_
                                                 _%hd140463140626%_)
                                                (_%body140633%_
                                                 _%tl140481140686%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K140448140567%_
                                               _%body140633%_
                                               _%expr2140631%_
                                               _%id2140624%_
                                               _%expr1140597%_
                                               _%id1140590%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else140429140497%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else140429140497%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else140429140497%_))))
                            (let ()
                              (declare (not safe))
                              (_%else140429140497%_))))
                      (let () (declare (not safe)) (_%else140429140497%_))))
                (let () (declare (not safe)) (_%else140429140497%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%else140429140497%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140478140679%_
                                                       'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl140479140681%_))
                                                  (let ((_%tl140441140550%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl140479140681%_)))
                                                        (_%hd140440140548%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl140479140681%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%tl140477140676%_))
                                                        (let ((_%id1140529%_
                                                               _%hd140484140660%_)
                                                              (_%expr1140536%_
                                                               _%hd140486140667%_)
                                                              (_%bind140553%_
                                                               _%hd140440140548%_)
                                                              (_%body140555%_
                                                               _%tl140441140550%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K140431140506%_
                                                             _%body140555%_
                                                             _%bind140553%_
                                                             _%expr1140536%_
                                                             _%id1140529%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%else140429140497%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else140429140497%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%else140429140497%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else140429140497%_))))
                              (let ()
                                (declare (not safe))
                                (_%else140429140497%_)))
                          (let () (declare (not safe)) (_%else140429140497%_)))
                      (let () (declare (not safe)) (_%else140429140497%_))))
                (let () (declare (not safe)) (_%else140429140497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else140429140497%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%else140429140497%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%else140429140497%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else140429140497%_))))
                            (let ()
                              (declare (not safe))
                              (_%else140429140497%_)))))))
                 (_%generate-values140123%_
                  (lambda (_%hd140237%_ _%body140238%_)
                    (let _%lp140240%_ ((_%rest140242%_ _%hd140237%_)
                                       (_%bind140243%_ '())
                                       (_%check140244%_ '())
                                       (_%post140245%_ '()))
                      (let* ((_%__stx144320144321%_ _%rest140242%_)
                             (_%g140248140259%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144320144321%_)))))
                        (let ((_%__kont144322144323%_
                               (lambda (_%L140286%_ _%L140287%_)
                                 (let* ((_%__stx144276144277%_ _%L140287%_)
                                        (_%g140302140327%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144276144277%_)))))
                                   (let ((_%__kont144278144279%_
                                          (lambda (_%L140400%_ _%L140401%_)
                                            (let ((_%eid140415%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140401%_)))
                                                  (_%expr140416%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140116%_
                                                      _%L140400%_))))
                                              (let ((__tmp145193
                                                     (cons (cons _%eid140415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140416%_ '()))
                   _%bind140243%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp140240%_
                                                 _%L140286%_
                                                 __tmp145193
                                                 _%check140244%_
                                                 _%post140245%_)))))
                                         (_%__kont144280144281%_
                                          (lambda (_%L140348%_ _%L140349%_)
                                            (let* ((_%vals140362%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140364%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals140362%_
                                                       _%L140349%_
                                                       _%L140348%_)))
                                                   (_%refs140366%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals140362%_
                                                       _%L140349%_)))
                                                   (_%expr140368%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140116%_
                                                       _%L140348%_))))
                                              (let ((__tmp145196
                                                     (cons (cons _%vals140362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140368%_ '()))
                   _%bind140243%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145195
                                                     (cons _%check-values140364%_
                                                           _%check140244%_))
                                                    (__tmp145194
                                                     (cons _%refs140366%_
                                                           _%post140245%_)))
                                                (declare (not safe))
                                                (_%lp140240%_
                                                 _%L140286%_
                                                 __tmp145196
                                                 __tmp145195
                                                 __tmp145194))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144276144277%_))
                                         (let ((_%e140308140376%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144276144277%_))))
                                           (let ((_%tl140306140381%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140308140376%_)))
                                                 (_%hd140307140379%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140308140376%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140307140379%_))
                                                 (let ((_%e140311140384%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140307140379%_))))
                                                   (let ((_%tl140309140389%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140311140384%_)))
                                                         (_%hd140310140387%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140311140384%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140309140389%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140306140381%_))
                     (let ((_%e140314140392%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140306140381%_))))
                       (let ((_%tl140312140397%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140314140392%_)))
                             (_%hd140313140395%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140314140392%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140312140397%_))
                             (_%__kont144278144279%_
                              _%hd140313140395%_
                              _%hd140310140387%_)
                             (let ()
                               (declare (not safe))
                               (_%g140302140327%_)))))
                     (let () (declare (not safe)) (_%g140302140327%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140306140381%_))
                     (let ((_%e140322140340%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140306140381%_))))
                       (let ((_%tl140320140345%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140322140340%_)))
                             (_%hd140321140343%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140322140340%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140320140345%_))
                             (_%__kont144280144281%_
                              _%hd140321140343%_
                              _%hd140307140379%_)
                             (let ()
                               (declare (not safe))
                               (_%g140302140327%_)))))
                     (let () (declare (not safe)) (_%g140302140327%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140306140381%_))
                                                     (let ((_%e140322140340%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140306140381%_))))
                                                       (let ((_%tl140320140345%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140322140340%_)))
                     (_%hd140321140343%_
                      (let () (declare (not safe)) (##car _%e140322140340%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140320140345%_))
                     (_%__kont144280144281%_
                      _%hd140321140343%_
                      _%hd140307140379%_)
                     (let () (declare (not safe)) (_%g140302140327%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140302140327%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140302140327%_)))))))
                              (_%__kont144324144325%_
                               (lambda ()
                                 (let* ((_%body140266%_
                                         (if _%compiled-body?140118%_
                                             _%body140238%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140116%_
                                                _%body140238%_))))
                                        (_%body140268%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post140124%_
                                            _%post140245%_
                                            _%body140266%_)))
                                        (_%body140270%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check140125%_
                                            _%check140244%_
                                            _%body140268%_))))
                                   (cons 'let
                                         (cons (reverse _%bind140243%_)
                                               (cons _%body140270%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144320144321%_))
                              (let ((_%e140254140278%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144320144321%_))))
                                (let ((_%tl140252140283%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140254140278%_)))
                                      (_%hd140253140281%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140254140278%_))))
                                  (_%__kont144322144323%_
                                   _%tl140252140283%_
                                   _%hd140253140281%_)))
                              (_%__kont144324144325%_)))))))
                 (_%generate-values-post140124%_
                  (lambda (_%post140196%_ _%body140197%_)
                    (let _%lp140199%_ ((_%rest140201%_ _%post140196%_)
                                       (_%body140202%_ _%body140197%_))
                      (let* ((_%rest140203140211%_ _%rest140201%_)
                             (_%else140205140219%_ (lambda () _%body140202%_))
                             (_%K140207140225%_
                              (lambda (_%rest140222%_ _%bind140223%_)
                                (let ((__tmp145197
                                       (cons 'let
                                             (cons _%bind140223%_
                                                   (cons _%body140202%_
                                                         '())))))
                                  (declare (not safe))
                                  (_%lp140199%_ _%rest140222%_ __tmp145197)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140203140211%_))
                            (let ((_%hd140208140228%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140203140211%_)))
                                  (_%tl140209140230%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140203140211%_))))
                              (let* ((_%bind140233%_ _%hd140208140228%_)
                                     (_%rest140235%_ _%tl140209140230%_))
                                (declare (not safe))
                                (_%K140207140225%_
                                 _%rest140235%_
                                 _%bind140233%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140205140219%_)))))))
                 (_%generate-values-check140125%_
                  (lambda (_%check140193%_ _%body140194%_)
                    (cons 'begin
                          (let ((__tmp145199 (cons _%body140194%_ '()))
                                (__tmp145198 (reverse _%check140193%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145199 __tmp145198))))))
          (let* ((_%g140127140144%_
                  (lambda (_%g140128140141%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140128140141%_))))
                 (_%g140126140190%_
                  (lambda (_%g140128140147%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140128140147%_))
                        (let ((_%e140133140149%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140128140147%_))))
                          (let ((_%hd140132140152%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140133140149%_)))
                                (_%tl140131140154%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140133140149%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140131140154%_))
                                (let ((_%e140136140157%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140131140154%_))))
                                  (let ((_%hd140135140160%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140136140157%_)))
                                        (_%tl140134140162%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140136140157%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140134140162%_))
                                        (let ((_%e140139140165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140134140162%_))))
                                          (let ((_%hd140138140168%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140139140165%_)))
                                                (_%tl140137140170%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140139140165%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140137140170%_))
                                                ((lambda (_%L140173%_
                                                          _%L140174%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L140174%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple140120%_
                                                          _%L140174%_
                                                          _%L140173%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values140123%_
                                                          _%L140174%_
                                                          _%L140173%_))))
                                                 _%hd140138140168%_
                                                 _%hd140135140160%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140127140144%_
                                                   _%g140128140147%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140127140144%_
                                           _%g140128140147%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140127140144%_ _%g140128140147%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140127140144%_ _%g140128140147%_))))))
            (declare (not safe))
            (_%g140126140190%_ _%stx140117%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self140836%_ _%stx140837%_)
        (let ((_%compiled-body?140839%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _%self140836%_
           _%stx140837%_
           _%compiled-body?140839%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g145201_
        (let ((_g145200_ (let () (declare (not safe)) (##length _g145201_))))
          (cond ((let () (declare (not safe)) (##fx= _g145200_ 2))
                 (apply (lambda (_%self140836%_ _%stx140837%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _%self140836%_
                             _%stx140837%_)))
                        _g145201_))
                ((let () (declare (not safe)) (##fx= _g145200_ 3))
                 (apply (lambda (_%self140841%_
                                 _%stx140842%_
                                 _%compiled-body?140843%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _%self140841%_
                             _%stx140842%_
                             _%compiled-body?140843%_)))
                        _g145201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g145201_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals140010%_ _%hd140011%_)
        (let _%lp140013%_ ((_%rest140015%_ _%hd140011%_)
                           (_%k140016%_ '0)
                           (_%r140017%_ '()))
          (let* ((_%__stx144334144335%_ _%rest140015%_)
                 (_%g140022140039%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx144334144335%_)))))
            (let ((_%__kont144336144337%_
                   (lambda (_%L140102%_)
                     (let ((__tmp145202
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140016%_ '1))))
                       (declare (not safe))
                       (_%lp140013%_ _%L140102%_ __tmp145202 _%r140017%_))))
                  (_%__kont144338144339%_
                   (lambda (_%L140075%_ _%L140076%_)
                     (let ((__tmp145204
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140016%_ '1)))
                           (__tmp145203
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140076%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values-ref
                                                 _%vals140010%_
                                                 _%k140016%_
                                                 _%L140075%_))
                                              '()))
                                  _%r140017%_)))
                       (declare (not safe))
                       (_%lp140013%_ _%L140075%_ __tmp145204 __tmp145203))))
                  (_%__kont144340144341%_
                   (lambda (_%L140051%_)
                     (let ((__tmp145205
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140051%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values->list
                                                 _%vals140010%_
                                                 _%k140016%_))
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp145205 _%r140017%_))))
                  (_%__kont144342144343%_ (lambda () (reverse _%r140017%_))))
              (let ((_%g140020140062%_
                     (lambda ()
                       (let ((_%L140051%_ _%__stx144334144335%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L140051%_))
                             (_%__kont144340144341%_ _%L140051%_)
                             (_%__kont144342144343%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx144334144335%_))
                    (let ((_%e140027140091%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx144334144335%_))))
                      (let ((_%tl140025140096%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140027140091%_)))
                            (_%hd140026140094%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140027140091%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd140026140094%_))
                            (let ((_%e140028140099%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd140026140094%_))))
                              (if (equal? _%e140028140099%_ '#f)
                                  (_%__kont144336144337%_ _%tl140025140096%_)
                                  (_%__kont144338144339%_
                                   _%tl140025140096%_
                                   _%hd140026140094%_)))
                            (_%__kont144338144339%_
                             _%tl140025140096%_
                             _%hd140026140094%_))))
                    (let () (declare (not safe)) (_%g140020140062%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self139689%_ _%stx139690%_ _%compiled-body?139691%_)
        (letrec ((_%generate-simple139693%_
                  (lambda (_%hd139995%_ _%body139996%_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _%self139689%_
                       'letrec
                       _%hd139995%_
                       _%body139996%_
                       _%compiled-body?139691%_))))
                 (_%generate-values139694%_
                  (lambda (_%hd139774%_ _%body139775%_)
                    (let _%lp139777%_ ((_%rest139779%_ _%hd139774%_)
                                       (_%bind139780%_ '())
                                       (_%check139781%_ '())
                                       (_%post139782%_ '()))
                      (let* ((_%__stx144408144409%_ _%rest139779%_)
                             (_%g139785139796%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144408144409%_)))))
                        (let ((_%__kont144410144411%_
                               (lambda (_%L139823%_ _%L139824%_)
                                 (let* ((_%__stx144364144365%_ _%L139824%_)
                                        (_%g139839139864%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144364144365%_)))))
                                   (let ((_%__kont144366144367%_
                                          (lambda (_%L139971%_ _%L139972%_)
                                            (let ((_%eid139986%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L139972%_)))
                                                  (_%expr139987%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139689%_
                                                      _%L139971%_))))
                                              (let ((__tmp145206
                                                     (cons (cons _%eid139986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr139987%_ '()))
                   _%bind139780%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp139777%_
                                                 _%L139823%_
                                                 __tmp145206
                                                 _%check139781%_
                                                 _%post139782%_)))))
                                         (_%__kont144368144369%_
                                          (lambda (_%L139885%_ _%L139886%_)
                                            (let* ((_%vals139899%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values139901%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals139899%_
                                                       _%L139886%_
                                                       _%L139885%_)))
                                                   (_%refs139903%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals139899%_
                                                       _%L139886%_)))
                                                   (_%expr139905%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self139689%_
                                                       _%L139885%_))))
                                              (let ((__tmp145209
                                                     (let ((__tmp145211
                                                            (cons (cons _%vals139899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%expr139905%_ '()))
                          _%bind139780%_))
                   (__tmp145210
                    (map (lambda (_%e139907139909%_)
                           (let* ((_%g139911139920%_ _%e139907139909%_)
                                  (_%E139913139924%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%g139911139920%_
                                              '([eid _])))
                                     '#!void))
                                  (_%K139914139929%_
                                   (lambda (_%eid139927%_)
                                     (cons _%eid139927%_ (cons '#!void '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%g139911139920%_))
                                 (let ((_%hd139915139932%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%g139911139920%_)))
                                       (_%tl139916139934%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%g139911139920%_))))
                                   (let ((_%eid139937%_ _%hd139915139932%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _%tl139916139934%_))
                                         (let ((_%tl139918139939%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%tl139916139934%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _%tl139918139939%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%K139914139929%_
                                                  _%eid139937%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%E139913139924%_))))
                                         (let ()
                                           (declare (not safe))
                                           (_%E139913139924%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%E139913139924%_)))))
                         _%refs139903%_)))
               (declare (not safe))
               (__foldl1 cons __tmp145211 __tmp145210)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145208
                                                     (cons _%check-values139901%_
                                                           _%check139781%_))
                                                    (__tmp145207
                                                     (let ()
                                                       (declare (not safe))
                                                       (__foldl1
                                                        cons
                                                        _%refs139903%_
                                                        _%post139782%_))))
                                                (declare (not safe))
                                                (_%lp139777%_
                                                 _%L139823%_
                                                 __tmp145209
                                                 __tmp145208
                                                 __tmp145207))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144364144365%_))
                                         (let ((_%e139845139947%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144364144365%_))))
                                           (let ((_%tl139843139952%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139845139947%_)))
                                                 (_%hd139844139950%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139845139947%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd139844139950%_))
                                                 (let ((_%e139848139955%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd139844139950%_))))
                                                   (let ((_%tl139846139960%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139848139955%_)))
                                                         (_%hd139847139958%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139848139955%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139846139960%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139843139952%_))
                     (let ((_%e139851139963%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139843139952%_))))
                       (let ((_%tl139849139968%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139851139963%_)))
                             (_%hd139850139966%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139851139963%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139849139968%_))
                             (_%__kont144366144367%_
                              _%hd139850139966%_
                              _%hd139847139958%_)
                             (let ()
                               (declare (not safe))
                               (_%g139839139864%_)))))
                     (let () (declare (not safe)) (_%g139839139864%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl139843139952%_))
                     (let ((_%e139859139877%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139843139952%_))))
                       (let ((_%tl139857139882%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139859139877%_)))
                             (_%hd139858139880%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139859139877%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139857139882%_))
                             (_%__kont144368144369%_
                              _%hd139858139880%_
                              _%hd139844139950%_)
                             (let ()
                               (declare (not safe))
                               (_%g139839139864%_)))))
                     (let () (declare (not safe)) (_%g139839139864%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139843139952%_))
                                                     (let ((_%e139859139877%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139843139952%_))))
                                                       (let ((_%tl139857139882%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139859139877%_)))
                     (_%hd139858139880%_
                      (let () (declare (not safe)) (##car _%e139859139877%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139857139882%_))
                     (_%__kont144368144369%_
                      _%hd139858139880%_
                      _%hd139844139950%_)
                     (let () (declare (not safe)) (_%g139839139864%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g139839139864%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g139839139864%_)))))))
                              (_%__kont144412144413%_
                               (lambda ()
                                 (let* ((_%body139803%_
                                         (if _%compiled-body?139691%_
                                             _%body139775%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self139689%_
                                                _%body139775%_))))
                                        (_%body139805%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post139696%_
                                            _%post139782%_
                                            _%body139803%_)))
                                        (_%body139807%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check139695%_
                                            _%check139781%_
                                            _%body139805%_))))
                                   (cons 'letrec
                                         (cons (reverse _%bind139780%_)
                                               (cons _%body139807%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144408144409%_))
                              (let ((_%e139791139815%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144408144409%_))))
                                (let ((_%tl139789139820%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139791139815%_)))
                                      (_%hd139790139818%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139791139815%_))))
                                  (_%__kont144410144411%_
                                   _%tl139789139820%_
                                   _%hd139790139818%_)))
                              (_%__kont144412144413%_)))))))
                 (_%generate-values-check139695%_
                  (lambda (_%check139771%_ _%body139772%_)
                    (cons 'begin
                          (let ((__tmp145213 (cons _%body139772%_ '()))
                                (__tmp145212 (reverse _%check139771%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145213 __tmp145212)))))
                 (_%generate-values-post139696%_
                  (lambda (_%post139764%_ _%body139765%_)
                    (cons 'begin
                          (let ((__tmp145217 (cons _%body139765%_ '()))
                                (__tmp145214
                                 (let ((__tmp145216
                                        (lambda (_%g139766139768%_)
                                          (cons 'set! _%g139766139768%_)))
                                       (__tmp145215 (reverse _%post139764%_)))
                                   (declare (not safe))
                                   (##map __tmp145216 __tmp145215))))
                            (declare (not safe))
                            (__foldr1 cons __tmp145217 __tmp145214))))))
          (let* ((_%g139698139715%_
                  (lambda (_%g139699139712%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139699139712%_))))
                 (_%g139697139761%_
                  (lambda (_%g139699139718%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139699139718%_))
                        (let ((_%e139704139720%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139699139718%_))))
                          (let ((_%hd139703139723%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139704139720%_)))
                                (_%tl139702139725%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139704139720%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139702139725%_))
                                (let ((_%e139707139728%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139702139725%_))))
                                  (let ((_%hd139706139731%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139707139728%_)))
                                        (_%tl139705139733%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139707139728%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139705139733%_))
                                        (let ((_%e139710139736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139705139733%_))))
                                          (let ((_%hd139709139739%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139710139736%_)))
                                                (_%tl139708139741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139710139736%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139708139741%_))
                                                ((lambda (_%L139744%_
                                                          _%L139745%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L139745%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple139693%_
                                                          _%L139745%_
                                                          _%L139744%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values139694%_
                                                          _%L139745%_
                                                          _%L139744%_))))
                                                 _%hd139709139739%_
                                                 _%hd139706139731%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g139698139715%_
                                                   _%g139699139718%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139698139715%_
                                           _%g139699139718%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139698139715%_ _%g139699139718%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139698139715%_ _%g139699139718%_))))))
            (declare (not safe))
            (_%g139697139761%_ _%stx139690%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self140001%_ _%stx140002%_)
        (let ((_%compiled-body?140004%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _%self140001%_
           _%stx140002%_
           _%compiled-body?140004%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g145219_
        (let ((_g145218_ (let () (declare (not safe)) (##length _g145219_))))
          (cond ((let () (declare (not safe)) (##fx= _g145218_ 2))
                 (apply (lambda (_%self140001%_ _%stx140002%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _%self140001%_
                             _%stx140002%_)))
                        _g145219_))
                ((let () (declare (not safe)) (##fx= _g145218_ 3))
                 (apply (lambda (_%self140006%_
                                 _%stx140007%_
                                 _%compiled-body?140008%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _%self140006%_
                             _%stx140007%_
                             _%compiled-body?140008%_)))
                        _g145219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g145219_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self139270%_ _%stx139271%_)
        (letrec ((_%generate-values139273%_
                  (lambda (_%hd139516%_ _%body139517%_)
                    (let _%lp139519%_ ((_%rest139521%_ _%hd139516%_)
                                       (_%bind139522%_ '()))
                      (let* ((_%rest139523139531%_ _%rest139521%_)
                             (_%else139525139542%_
                              (lambda ()
                                (let ((_%bind139539%_ (reverse _%bind139522%_))
                                      (_%body139540%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139270%_
                                          _%body139517%_))))
                                  (cons 'letrec*
                                        (cons _%bind139539%_
                                              (cons _%body139540%_ '()))))))
                             (_%K139527139676%_
                              (lambda (_%rest139545%_ _%hd-bind139546%_)
                                (let* ((_%__stx144422144423%_
                                        _%hd-bind139546%_)
                                       (_%g139549139574%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx144422144423%_)))))
                                  (let ((_%__kont144424144425%_
                                         (lambda (_%L139655%_ _%L139656%_)
                                           (let ((_%eid139670%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L139656%_)))
                                                 (_%expr139671%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self139270%_
                                                     _%L139655%_))))
                                             (let ((__tmp145220
                                                    (cons (cons _%eid139670%_
                                                                (cons _%expr139671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind139522%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp139519%_
                                                _%rest139545%_
                                                __tmp145220)))))
                                        (_%__kont144426144427%_
                                         (lambda (_%L139595%_ _%L139596%_)
                                           (let* ((_%vals139615%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp139617%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values139619%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _%tmp139617%_
                                                      _%L139596%_
                                                      _%L139595%_)))
                                                  (_%refs139621%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _%vals139615%_
                                                      _%L139596%_)))
                                                  (_%expr139623%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139270%_
                                                      _%L139595%_))))
                                             (let ((__tmp145221
                                                    (let ((__tmp145222
                                                           (cons (cons _%vals139615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'let
                                           (cons (cons (cons _%tmp139617%_
                                                             (cons _%expr139623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%check-values139619%_
                                                       (cons _%tmp139617%_
                                                             '()))))
                                     '()))
                         _%bind139522%_)))
              (declare (not safe))
              (__foldl1 cons __tmp145222 _%refs139621%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp139519%_
                                                _%rest139545%_
                                                __tmp145221))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144422144423%_))
                                        (let ((_%e139555139631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144422144423%_))))
                                          (let ((_%tl139553139636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139555139631%_)))
                                                (_%hd139554139634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139555139631%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd139554139634%_))
                                                (let ((_%e139558139639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd139554139634%_))))
                                                  (let ((_%tl139556139644%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139558139639%_)))
                                                        (_%hd139557139642%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139558139639%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139556139644%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl139553139636%_))
                                                            (let ((_%e139561139647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139553139636%_))))
                      (let ((_%tl139559139652%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139561139647%_)))
                            (_%hd139560139650%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139561139647%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139559139652%_))
                            (_%__kont144424144425%_
                             _%hd139560139650%_
                             _%hd139557139642%_)
                            (let ()
                              (declare (not safe))
                              (_%g139549139574%_)))))
                    (let () (declare (not safe)) (_%g139549139574%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl139553139636%_))
                    (let ((_%e139569139587%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139553139636%_))))
                      (let ((_%tl139567139592%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139569139587%_)))
                            (_%hd139568139590%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139569139587%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139567139592%_))
                            (_%__kont144426144427%_
                             _%hd139568139590%_
                             _%hd139554139634%_)
                            (let ()
                              (declare (not safe))
                              (_%g139549139574%_)))))
                    (let () (declare (not safe)) (_%g139549139574%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139553139636%_))
                                                    (let ((_%e139569139587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139553139636%_))))
                                                      (let ((_%tl139567139592%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139569139587%_)))
                    (_%hd139568139590%_
                     (let () (declare (not safe)) (##car _%e139569139587%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139567139592%_))
                    (_%__kont144426144427%_
                     _%hd139568139590%_
                     _%hd139554139634%_)
                    (let () (declare (not safe)) (_%g139549139574%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g139549139574%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139549139574%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139523139531%_))
                            (let ((_%hd139528139679%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139523139531%_)))
                                  (_%tl139529139681%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139523139531%_))))
                              (let* ((_%hd-bind139684%_ _%hd139528139679%_)
                                     (_%rest139686%_ _%tl139529139681%_))
                                (declare (not safe))
                                (_%K139527139676%_
                                 _%rest139686%_
                                 _%hd-bind139684%_)))
                            (let ()
                              (declare (not safe))
                              (_%else139525139542%_)))))))
                 (_%generate-letrec?139274%_
                  (lambda (_%hd139406%_)
                    (let _%lp139408%_ ((_%rest139410%_ _%hd139406%_))
                      (let* ((_%rest139411139419%_ _%rest139410%_)
                             (_%else139413139427%_ (lambda () '#t))
                             (_%K139415139504%_
                              (lambda (_%rest139430%_ _%hd-bind139431%_)
                                (let* ((_%g139433139450%_
                                        (lambda (_%g139434139447%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g139434139447%_))))
                                       (_%g139432139501%_
                                        (lambda (_%g139434139453%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g139434139453%_))
                                              (let ((_%e139439139455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g139434139453%_))))
                                                (let ((_%hd139438139458%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139439139455%_)))
                                                      (_%tl139437139460%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139439139455%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd139438139458%_))
                                                      (let ((_%e139442139463%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd139438139458%_))))
                (let ((_%hd139441139466%_
                       (let () (declare (not safe)) (##car _%e139442139463%_)))
                      (_%tl139440139468%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139442139463%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139440139468%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139437139460%_))
                          (let ((_%e139445139471%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139437139460%_))))
                            (let ((_%hd139444139474%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139445139471%_)))
                                  (_%tl139443139476%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139445139471%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl139443139476%_))
                                  ((lambda (_%L139479%_ _%L139480%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%is-lambda-expr?139275%_
                                            _%L139479%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%lp139408%_ _%rest139430%_))
                                         '#f))
                                   _%hd139444139474%_
                                   _%hd139441139466%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g139433139450%_ _%g139434139453%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g139433139450%_ _%g139434139453%_)))
                      (let ()
                        (declare (not safe))
                        (_%g139433139450%_ _%g139434139453%_)))))
              (let ()
                (declare (not safe))
                (_%g139433139450%_ _%g139434139453%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g139433139450%_
                                                 _%g139434139453%_))))))
                                  (declare (not safe))
                                  (_%g139432139501%_ _%hd-bind139431%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139411139419%_))
                            (let ((_%hd139416139507%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139411139419%_)))
                                  (_%tl139417139509%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139411139419%_))))
                              (let* ((_%hd-bind139512%_ _%hd139416139507%_)
                                     (_%rest139514%_ _%tl139417139509%_))
                                (declare (not safe))
                                (_%K139415139504%_
                                 _%rest139514%_
                                 _%hd-bind139512%_)))
                            (let ()
                              (declare (not safe))
                              (_%else139413139427%_)))))))
                 (_%is-lambda-expr?139275%_
                  (lambda (_%expr139343%_)
                    (let* ((_%__stx144466144467%_ _%expr139343%_)
                           (_%g139346139360%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144466144467%_)))))
                      (let ((_%__kont144468144469%_
                             (lambda (_%L139388%_ _%L139389%_) '#t))
                            (_%__kont144470144471%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx144466144467%_))
                            (let ((_%e139352139372%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx144466144467%_))))
                              (let ((_%tl139350139377%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139352139372%_)))
                                    (_%hd139351139375%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139352139372%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd139351139375%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd139351139375%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl139350139377%_))
                                            (let ((_%e139355139380%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl139350139377%_))))
                                              (let ((_%tl139353139385%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139355139380%_)))
                                                    (_%hd139354139383%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139355139380%_))))
                                                (_%__kont144468144469%_
                                                 _%tl139353139385%_
                                                 _%hd139354139383%_)))
                                            (_%__kont144470144471%_))
                                        (_%__kont144470144471%_))
                                    (_%__kont144470144471%_))))
                            (_%__kont144470144471%_)))))))
          (let* ((_%g139277139294%_
                  (lambda (_%g139278139291%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139278139291%_))))
                 (_%g139276139340%_
                  (lambda (_%g139278139297%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139278139297%_))
                        (let ((_%e139283139299%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139278139297%_))))
                          (let ((_%hd139282139302%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139283139299%_)))
                                (_%tl139281139304%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139283139299%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139281139304%_))
                                (let ((_%e139286139307%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139281139304%_))))
                                  (let ((_%hd139285139310%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139286139307%_)))
                                        (_%tl139284139312%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139286139307%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139284139312%_))
                                        (let ((_%e139289139315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139284139312%_))))
                                          (let ((_%hd139288139318%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139289139315%_)))
                                                (_%tl139287139320%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139289139315%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139287139320%_))
                                                ((lambda (_%L139323%_
                                                          _%L139324%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L139324%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-letrec?139274%_
                                                              _%L139324%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139270%_
                                                              'letrec
                                                              _%L139324%_
                                                              _%L139323%_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139270%_
                                                              'letrec*
                                                              _%L139324%_
                                                              _%L139323%_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values139273%_
                                                          _%L139324%_
                                                          _%L139323%_))))
                                                 _%hd139288139318%_
                                                 _%hd139285139310%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g139277139294%_
                                                   _%g139278139297%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139277139294%_
                                           _%g139278139297%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139277139294%_ _%g139278139297%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139277139294%_ _%g139278139297%_))))))
            (declare (not safe))
            (_%g139276139340%_ _%stx139271%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd139207%_)
        (let _%lp139209%_ ((_%rest139211%_ _%hd139207%_))
          (let* ((_%rest139212139228%_ _%rest139211%_)
                 (_%else139215139236%_ (lambda () '#f)))
            (let ((_%K139218139249%_
                   (lambda (_%rest139247%_)
                     (let ()
                       (declare (not safe))
                       (_%lp139209%_ _%rest139247%_))))
                  (_%K139217139241%_ (lambda () '#t)))
              (let ((_%try-match139214139244%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest139212139228%_))
                           (let () (declare (not safe)) (_%K139217139241%_))
                           (let ()
                             (declare (not safe))
                             (_%else139215139236%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139212139228%_))
                    (let ((_%tl139220139254%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139212139228%_)))
                          (_%hd139219139252%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139212139228%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd139219139252%_))
                          (let ((_%tl139222139259%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd139219139252%_)))
                                (_%hd139221139257%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd139219139252%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139221139257%_))
                                (let ((_%tl139226139262%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139221139257%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl139226139262%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl139222139259%_))
                                          (let ((_%tl139224139265%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl139222139259%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl139224139265%_))
                                                (let ((_%rest139268%_
                                                       _%tl139220139254%_))
                                                  (declare (not safe))
                                                  (_%lp139209%_
                                                   _%rest139268%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else139215139236%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else139215139236%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else139215139236%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else139215139236%_))))
                          (let ()
                            (declare (not safe))
                            (_%else139215139236%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match139214139244%_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self139118%_
               _%form139119%_
               _%hd139120%_
               _%body139121%_
               _%compiled-body?139122%_)
        (letrec ((_%generate1139124%_
                  (lambda (_%bind139163%_)
                    (let* ((_%bind139164139175%_ _%bind139163%_)
                           (_%E139166139179%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind139164139175%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K139167139185%_
                            (lambda (_%expr139182%_ _%id139183%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id139183%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self139118%_
                                             _%expr139182%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind139164139175%_))
                          (let ((_%hd139168139188%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind139164139175%_)))
                                (_%tl139169139190%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind139164139175%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139168139188%_))
                                (let ((_%hd139172139193%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd139168139188%_)))
                                      (_%tl139173139195%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139168139188%_))))
                                  (let ((_%id139198%_ _%hd139172139193%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl139173139195%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl139169139190%_))
                                            (let ((_%hd139170139200%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl139169139190%_)))
                                                  (_%tl139171139202%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl139169139190%_))))
                                              (let ((_%expr139205%_
                                                     _%hd139170139200%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl139171139202%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K139167139185%_
                                                       _%expr139205%_
                                                       _%id139198%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E139166139179%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%E139166139179%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E139166139179%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%E139166139179%_))))
                          (let ()
                            (declare (not safe))
                            (_%E139166139179%_)))))))
          (let* ((_%bind139126%_ (map _%generate1139124%_ _%hd139120%_))
                 (_%body139128%_
                  (if _%compiled-body?139122%_
                      _%body139121%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self139118%_ _%body139121%_))))
                 (_%body139160%_
                  (let* ((_%body139129139137%_ _%body139128%_)
                         (_%else139131139145%_
                          (lambda () (cons _%body139128%_ '())))
                         (_%K139133139150%_
                          (lambda (_%exprs139148%_) _%exprs139148%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body139129139137%_))
                        (let ((_%hd139134139153%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body139129139137%_)))
                              (_%tl139135139155%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body139129139137%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd139134139153%_ 'begin))
                              (let ((_%exprs139158%_ _%tl139135139155%_))
                                (declare (not safe))
                                (_%K139133139150%_ _%exprs139158%_))
                              (let ()
                                (declare (not safe))
                                (_%else139131139145%_))))
                        (let ()
                          (declare (not safe))
                          (_%else139131139145%_))))))
            (cons _%form139119%_ (cons _%bind139126%_ _%body139160%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self139018%_ _%stx139019%_)
        (letrec ((_%generate1139021%_
                  (lambda (_%datum139073%_)
                    (if (or (let ()
                              (declare (not safe))
                              (null? _%datum139073%_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum139073%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum139073%_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _%datum139073%_)))
                        (let () _%datum139073%_)
                        (if (uninterned-symbol? _%datum139073%_)
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-gensym-reference__%
                                 _%datum139073%_
                                 '#t)))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%datum139073%_))
                                (let ()
                                  (cons (let ((__tmp145223
                                               (car _%datum139073%_)))
                                          (declare (not safe))
                                          (_%generate1139021%_ __tmp145223))
                                        (let ((__tmp145224
                                               (cdr _%datum139073%_)))
                                          (declare (not safe))
                                          (_%generate1139021%_ __tmp145224))))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _%datum139073%_))
                                    (let ()
                                      (box (let ((__tmp145225
                                                  (unbox _%datum139073%_)))
                                             (declare (not safe))
                                             (_%generate1139021%_
                                              __tmp145225))))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _%datum139073%_))
                                        (let ()
                                          (vector-map
                                           _%generate1139021%_
                                           _%datum139073%_))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (s8vector? _%datum139073%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _%datum139073%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s16vector? _%datum139073%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u16vector? _%datum139073%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s32vector? _%datum139073%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u32vector? _%datum139073%_))
                                                (s64vector? _%datum139073%_)
                                                (u64vector? _%datum139073%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (f32vector? _%datum139073%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (f64vector?
                                                   _%datum139073%_)))
                                            (let () _%datum139073%_)
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"Cannot compile non-primitive quote"
                                                 _%stx139019%_))))))))))))
          (let* ((_%g139023139036%_
                  (lambda (_%g139024139033%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139024139033%_))))
                 (_%g139022139070%_
                  (lambda (_%g139024139039%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139024139039%_))
                        (let ((_%e139028139041%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139024139039%_))))
                          (let ((_%hd139027139044%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139028139041%_)))
                                (_%tl139026139046%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139028139041%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139026139046%_))
                                (let ((_%e139031139049%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139026139046%_))))
                                  (let ((_%hd139030139052%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139031139049%_)))
                                        (_%tl139029139054%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139031139049%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl139029139054%_))
                                        ((lambda (_%L139057%_)
                                           (cons 'quote
                                                 (cons (let ((__tmp145226
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%L139057%_))))
                 (declare (not safe))
                 (_%generate1139021%_ __tmp145226))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd139030139052%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g139023139036%_
                                           _%g139024139039%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139023139036%_ _%g139024139039%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139023139036%_ _%g139024139039%_))))))
            (declare (not safe))
            (_%g139022139070%_ _%stx139019%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self138459%_ _%stx138460%_)
        (letrec ((_%compile-call138462%_
                  (lambda (_%rator138751%_ _%rands138752%_)
                    (let ((_%rator138758%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self138459%_
                              _%rator138751%_)))
                          (_%rands138759%_
                           (map (lambda (_%g138753138755%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self138459%_
                                     _%g138753138755%_)))
                                _%rands138752%_)))
                      (let* ((_%__stx144513144514%_ _%rator138758%_)
                             (_%g138762138814%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144513144514%_)))))
                        (let ((_%__kont144515144516%_
                               (lambda (_%L138938%_
                                        _%L138939%_
                                        _%L138940%_
                                        _%L138941%_)
                                 (if (let ((__tmp145229
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands138759%_)))
                                           (__tmp145227
                                            (length (let ((__tmp145228
                                                           (lambda (_%g138977138980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g138978138982%_)
                     (cons _%g138977138980%_ _%g138978138982%_))))
              (declare (not safe))
              (__foldr1 __tmp145228 '() _%L138940%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145229 __tmp145227))
                                     (let* ((_%id138985%_ _%L138941%_)
                                            (_%args138994%_
                                             (let ((__tmp145230
                                                    (lambda (_%g138986138989%_
                                                             _%g138987138991%_)
                                                      (cons _%g138986138989%_
                                                            _%g138987138991%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145230
                                                '()
                                                _%L138940%_)))
                                            (_%body139003%_
                                             (let ((__tmp145231
                                                    (lambda (_%g138995138998%_
                                                             _%g138996139000%_)
                                                      (cons _%g138995138998%_
                                                            _%g138996139000%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145231
                                                '()
                                                _%L138939%_)))
                                            (_%init139005%_
                                             (map list
                                                  _%args138994%_
                                                  _%rands138759%_)))
                                       (cons 'let
                                             (cons _%id138985%_
                                                   (cons _%init139005%_
                                                         _%body139003%_))))
                                     (let ((__tmp145232
                                            (let ((__tmp145233
                                                   (lambda (_%g139007139010%_
                                                            _%g139008139012%_)
                                                     (cons _%g139007139010%_
                                                           _%g139008139012%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145233
                                               '()
                                               _%L138940%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx138460%_
                                        __tmp145232
                                        _%rands138759%_)))))
                              (_%__kont144521144522%_
                               (lambda ()
                                 (cons _%rator138758%_ _%rands138759%_))))
                          (let ((_%__match144580144581%_
                                 (lambda (_%e138770138826%_
                                          _%hd138769138829%_
                                          _%tl138768138831%_
                                          _%e138773138834%_
                                          _%hd138772138837%_
                                          _%tl138771138839%_
                                          _%e138776138842%_
                                          _%hd138775138845%_
                                          _%tl138774138847%_
                                          _%e138779138850%_
                                          _%hd138778138853%_
                                          _%tl138777138855%_
                                          _%e138782138858%_
                                          _%hd138781138861%_
                                          _%tl138780138863%_
                                          _%e138785138866%_
                                          _%hd138784138869%_
                                          _%tl138783138871%_
                                          _%e138788138874%_
                                          _%hd138787138877%_
                                          _%tl138786138879%_
                                          _%__splice144517144518%_
                                          _%target138789138882%_
                                          _%tl138791138884%_)
                                   (letrec ((_%loop138792138887%_
                                             (lambda (_%hd138790138890%_
                                                      _%arg138796138892%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd138790138890%_))
                                                   (let ((_%e138793138895%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd138790138890%_))))
                                                     (let ((_%lp-tl138795138900%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e138793138895%_)))
                                                           (_%lp-hd138794138898%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e138793138895%_))))
                                                       (let ((__tmp145234
                                                              (cons _%lp-hd138794138898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%arg138796138892%_)))
                 (declare (not safe))
                 (_%loop138792138887%_ _%lp-tl138795138900%_ __tmp145234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%arg138797138903%_
                                                          (reverse _%arg138796138892%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl138786138879%_))
                                                         (let ((_%__splice144519144520%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl138786138879%_ '0))))
                   (let ((_%tl138800138908%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144519144520%_ '1)))
                         (_%target138798138906%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144519144520%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl138800138908%_))
                         (letrec ((_%loop138801138911%_
                                   (lambda (_%hd138799138914%_
                                            _%body138805138916%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd138799138914%_))
                                         (let ((_%e138802138919%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd138799138914%_))))
                                           (let ((_%lp-tl138804138924%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e138802138919%_)))
                                                 (_%lp-hd138803138922%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e138802138919%_))))
                                             (let ((__tmp145235
                                                    (cons _%lp-hd138803138922%_
                                                          _%body138805138916%_)))
                                               (declare (not safe))
                                               (_%loop138801138911%_
                                                _%lp-tl138804138924%_
                                                __tmp145235))))
                                         (let ((_%body138806138927%_
                                                (reverse _%body138805138916%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl138780138863%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl138774138847%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl138771138839%_))
                                                       (let ((_%e138809138930%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl138771138839%_))))
                 (let ((_%tl138807138935%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e138809138930%_)))
                       (_%hd138808138933%_
                        (let ()
                          (declare (not safe))
                          (##car _%e138809138930%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl138807138935%_))
                       (let ((_%L138938%_ _%hd138808138933%_)
                             (_%L138939%_ _%body138806138927%_)
                             (_%L138940%_ _%arg138797138903%_)
                             (_%L138941%_ _%hd138778138853%_))
                         (if (eq? _%L138941%_ _%L138938%_)
                             (_%__kont144515144516%_
                              _%L138938%_
                              _%L138939%_
                              _%L138940%_
                              _%L138941%_)
                             (_%__kont144521144522%_)))
                       (_%__kont144521144522%_))))
               (_%__kont144521144522%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144521144522%_))
                                               (_%__kont144521144522%_)))))))
                           (let ()
                             (declare (not safe))
                             (_%loop138801138911%_
                              _%target138798138906%_
                              '())))
                         (_%__kont144521144522%_))))
                 (_%__kont144521144522%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_%loop138792138887%_
                                        _%target138789138882%_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144513144514%_))
                                (let ((_%e138770138826%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144513144514%_))))
                                  (let ((_%tl138768138831%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138770138826%_)))
                                        (_%hd138769138829%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138770138826%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138769138829%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd138769138829%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138768138831%_))
                                                (let ((_%e138773138834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138768138831%_))))
                                                  (let ((_%tl138771138839%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138773138834%_)))
                                                        (_%hd138772138837%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138773138834%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd138772138837%_))
                                                        (let ((_%e138776138842%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd138772138837%_))))
                  (let ((_%tl138774138847%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138776138842%_)))
                        (_%hd138775138845%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138776138842%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd138775138845%_))
                        (let ((_%e138779138850%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd138775138845%_))))
                          (let ((_%tl138777138855%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138779138850%_)))
                                (_%hd138778138853%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138779138850%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138777138855%_))
                                (let ((_%e138782138858%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138777138855%_))))
                                  (let ((_%tl138780138863%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138782138858%_)))
                                        (_%hd138781138861%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138782138858%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd138781138861%_))
                                        (let ((_%e138785138866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd138781138861%_))))
                                          (let ((_%tl138783138871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138785138866%_)))
                                                (_%hd138784138869%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138785138866%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd138784138869%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd138784138869%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl138783138871%_))
                                                        (let ((_%e138788138874%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl138783138871%_))))
                  (let ((_%tl138786138879%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138788138874%_)))
                        (_%hd138787138877%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138788138874%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd138787138877%_))
                        (let ((_%__splice144517144518%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd138787138877%_
                                  '0))))
                          (let ((_%tl138791138884%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice144517144518%_ '1)))
                                (_%target138789138882%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice144517144518%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl138791138884%_))
                                (_%__match144580144581%_
                                 _%e138770138826%_
                                 _%hd138769138829%_
                                 _%tl138768138831%_
                                 _%e138773138834%_
                                 _%hd138772138837%_
                                 _%tl138771138839%_
                                 _%e138776138842%_
                                 _%hd138775138845%_
                                 _%tl138774138847%_
                                 _%e138779138850%_
                                 _%hd138778138853%_
                                 _%tl138777138855%_
                                 _%e138782138858%_
                                 _%hd138781138861%_
                                 _%tl138780138863%_
                                 _%e138785138866%_
                                 _%hd138784138869%_
                                 _%tl138783138871%_
                                 _%e138788138874%_
                                 _%hd138787138877%_
                                 _%tl138786138879%_
                                 _%__splice144517144518%_
                                 _%target138789138882%_
                                 _%tl138791138884%_)
                                (_%__kont144521144522%_))))
                        (_%__kont144521144522%_))))
                (_%__kont144521144522%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144521144522%_))
                                                (_%__kont144521144522%_))))
                                        (_%__kont144521144522%_))))
                                (_%__kont144521144522%_))))
                        (_%__kont144521144522%_))))
                (_%__kont144521144522%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144521144522%_))
                                            (_%__kont144521144522%_))
                                        (_%__kont144521144522%_))))
                                (_%__kont144521144522%_)))))))))
          (let* ((_%g138464138487%_
                  (lambda (_%g138465138484%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138465138484%_))))
                 (_%g138463138748%_
                  (lambda (_%g138465138490%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138465138490%_))
                        (let ((_%e138470138492%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138465138490%_))))
                          (let ((_%hd138469138495%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138470138492%_)))
                                (_%tl138468138497%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138470138492%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138468138497%_))
                                (let ((_%e138473138500%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138468138497%_))))
                                  (let ((_%hd138472138503%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138473138500%_)))
                                        (_%tl138471138505%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138473138500%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl138471138505%_))
                                        (let ((_g145236_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl138471138505%_
                                                  '0))))
                                          (begin
                                            (let ((_g145237_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g145236_)
                                                         (##vector-length
                                                          _g145236_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g145237_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g145237_)))
                                            (let ((_%target138474138508%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145236_
                                                      0)))
                                                  (_%tl138476138510%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145236_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl138476138510%_))
                                                  (letrec ((_%loop138477138513%_
                                                            (lambda (_%hd138475138516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand138481138518%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd138475138516%_))
                          (let ((_%e138478138521%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd138475138516%_))))
                            (let ((_%lp-hd138479138524%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138478138521%_)))
                                  (_%lp-tl138480138526%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138478138521%_))))
                              (let ((__tmp145238
                                     (cons _%lp-hd138479138524%_
                                           _%rand138481138518%_)))
                                (declare (not safe))
                                (_%loop138477138513%_
                                 _%lp-tl138480138526%_
                                 __tmp145238))))
                          (let ((_%rand138482138529%_
                                 (reverse _%rand138481138518%_)))
                            ((lambda (_%L138532%_ _%L138533%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls-unsafe?))
                                   (let ((__tmp145239
                                          (let ((__tmp145240
                                                 (lambda (_%g138550138553%_
                                                          _%g138551138555%_)
                                                   (cons _%g138550138553%_
                                                         _%g138551138555%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp145240
                                             '()
                                             _%L138532%_))))
                                     (declare (not safe))
                                     (_%compile-call138462%_
                                      _%L138533%_
                                      __tmp145239))
                                   (let* ((_%__stx144629144630%_ _%L138533%_)
                                          (_%g138559138571%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx144629144630%_)))))
                                     (let ((_%__kont144631144632%_
                                            (lambda ()
                                              (let ((_%f138608%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138459%_
                                                        _%L138533%_))))
                                                (if (and (let ((__tmp145241
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f138608%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp145241))
                 (let ((__tmp145242
                        (let ()
                          (declare (not safe))
                          (##memq _%f138608%_ gxc#checked-primitives))))
                   (declare (not safe))
                   (not __tmp145242)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp138610%_ ((_%rest138613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp145248
                                                (lambda (_%g138730138733%_
                                                         _%g138731138735%_)
                                                  (cons _%g138730138733%_
                                                        _%g138731138735%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp145248
                                            '()
                                            _%L138532%_))))
                               (_%bind138615%_ '())
                               (_%args138616%_ '()))
              (let* ((_%rest138617138625%_ _%rest138613%_)
                     (_%else138619138633%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind138615%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f138608%_
                                                      _%args138616%_)
                                                '()))))))
                     (_%K138621138719%_
                      (lambda (_%rest138636%_ _%e138637%_)
                        (let* ((_%__stx144583144584%_ _%e138637%_)
                               (_%g138642138660%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx144583144584%_)))))
                          (let ((_%__kont144585144586%_
                                 (lambda ()
                                   (let ((__tmp145243
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e138637%_))
                                                _%args138616%_)))
                                     (declare (not safe))
                                     (_%lp138610%_
                                      _%rest138636%_
                                      _%bind138615%_
                                      __tmp145243))))
                                (_%__kont144587144588%_
                                 (lambda ()
                                   (let ((__tmp145244
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e138637%_))
                                                _%args138616%_)))
                                     (declare (not safe))
                                     (_%lp138610%_
                                      _%rest138636%_
                                      _%bind138615%_
                                      __tmp145244))))
                                (_%__kont144589144590%_
                                 (lambda ()
                                   (let ((_%tmp138667%_
                                          (let ((__tmp145245
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp145245))))
                                     (let ((__tmp145247
                                            (cons (cons _%tmp138667%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e138637%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind138615%_))
                                           (__tmp145246
                                            (cons _%tmp138667%_
                                                  _%args138616%_)))
                                       (declare (not safe))
                                       (_%lp138610%_
                                        _%rest138636%_
                                        __tmp145247
                                        __tmp145246))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144583144584%_))
                                (let ((_%e138646138698%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144583144584%_))))
                                  (let ((_%tl138644138703%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138646138698%_)))
                                        (_%hd138645138701%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138646138698%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138645138701%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd138645138701%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138644138703%_))
                                                (let ((_%e138649138706%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138644138703%_))))
                                                  (let ((_%tl138647138711%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138649138706%_)))
                                                        (_%hd138648138709%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138649138706%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138647138711%_))
                                                        (_%__kont144585144586%_)
                                                        (_%__kont144589144590%_))))
                                                (_%__kont144589144590%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd138645138701%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl138644138703%_))
                                                    (let ((_%e138655138683%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl138644138703%_))))
                                                      (let ((_%tl138653138688%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e138655138683%_)))
                    (_%hd138654138686%_
                     (let () (declare (not safe)) (##car _%e138655138683%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl138653138688%_))
                    (_%__kont144587144588%_)
                    (_%__kont144589144590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144589144590%_))
                                                (_%__kont144589144590%_)))
                                        (_%__kont144589144590%_))))
                                (_%__kont144589144590%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest138617138625%_))
                    (let ((_%hd138622138722%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest138617138625%_)))
                          (_%tl138623138724%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest138617138625%_))))
                      (let* ((_%e138727%_ _%hd138622138722%_)
                             (_%rest138729%_ _%tl138623138724%_))
                        (declare (not safe))
                        (_%K138621138719%_ _%rest138729%_ _%e138727%_)))
                    (let () (declare (not safe)) (_%else138619138633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp145249
                                                           (let ((__tmp145250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g138737138740%_ _%g138738138742%_)
                            (cons _%g138737138740%_ _%g138738138742%_))))
                     (declare (not safe))
                     (__foldr1 __tmp145250 '() _%L138532%_))))
              (declare (not safe))
              (_%compile-call138462%_ _%L138533%_ __tmp145249))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont144633144634%_
                                            (lambda ()
                                              (let ((__tmp145251
                                                     (let ((__tmp145252
                                                            (lambda (_%g138577138580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g138578138582%_)
                      (cons _%g138577138580%_ _%g138578138582%_))))
               (declare (not safe))
               (__foldr1 __tmp145252 '() _%L138532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%compile-call138462%_
                                                 _%L138533%_
                                                 __tmp145251)))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx144629144630%_))
                                           (let ((_%e138563138590%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx144629144630%_))))
                                             (let ((_%tl138561138595%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138563138590%_)))
                                                   (_%hd138562138593%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138563138590%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138562138593%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd138562138593%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl138561138595%_))
                                                           (let ((_%e138566138598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl138561138595%_))))
                     (let ((_%tl138564138603%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e138566138598%_)))
                           (_%hd138565138601%_
                            (let ()
                              (declare (not safe))
                              (##car _%e138566138598%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl138564138603%_))
                           (_%__kont144631144632%_)
                           (_%__kont144633144634%_))))
                   (_%__kont144633144634%_))
               (_%__kont144633144634%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144633144634%_))))
                                           (_%__kont144633144634%_))))))
                             _%rand138482138529%_
                             _%hd138472138503%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%loop138477138513%_
                                                       _%target138474138508%_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g138464138487%_
                                                     _%g138465138490%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g138464138487%_
                                           _%g138465138490%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138464138487%_ _%g138465138490%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138464138487%_ _%g138465138490%_))))))
            (declare (not safe))
            (_%g138463138748%_ _%stx138460%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self138202%_ _%stx138203%_)
        (let* ((_%__stx144701144702%_ _%stx138203%_)
               (_%g138206138235%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144701144702%_)))))
          (let ((_%__kont144703144704%_
                 (lambda (_%L138303%_ _%L138304%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call%
                          _%self138202%_
                          _%stx138203%_))
                       (let ((_%f138326%_
                              (let ((__tmp145253
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L138304%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self138202%_
                                 __tmp145253))))
                         (let _%lp138328%_ ((_%rest138331%_
                                             (reverse (let ((__tmp145259
                                                             (lambda (_%g138448138451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g138449138453%_)
                       (cons _%g138448138451%_ _%g138449138453%_))))
                (declare (not safe))
                (__foldr1 __tmp145259 '() _%L138303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind138333%_ '())
                                            (_%args138334%_ '()))
                           (let* ((_%rest138335138343%_ _%rest138331%_)
                                  (_%else138337138351%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind138333%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f138326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args138334%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K138339138437%_
                                   (lambda (_%rest138354%_ _%e138355%_)
                                     (let* ((_%__stx144655144656%_ _%e138355%_)
                                            (_%g138360138378%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx144655144656%_)))))
                                       (let ((_%__kont144657144658%_
                                              (lambda ()
                                                (let ((__tmp145254
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138355%_))
                     _%args138334%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138328%_
                                                   _%rest138354%_
                                                   _%bind138333%_
                                                   __tmp145254))))
                                             (_%__kont144659144660%_
                                              (lambda ()
                                                (let ((__tmp145255
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138355%_))
                     _%args138334%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138328%_
                                                   _%rest138354%_
                                                   _%bind138333%_
                                                   __tmp145255))))
                                             (_%__kont144661144662%_
                                              (lambda ()
                                                (let ((_%tmp138385%_
                                                       (let ((__tmp145256
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp145256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp145258
                                                         (cons (cons _%tmp138385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__0 _%e138355%_))
                                   '()))
                       _%bind138333%_))
                (__tmp145257 (cons _%tmp138385%_ _%args138334%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%lp138328%_
                                                     _%rest138354%_
                                                     __tmp145258
                                                     __tmp145257))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx144655144656%_))
                                             (let ((_%e138364138416%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx144655144656%_))))
                                               (let ((_%tl138362138421%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e138364138416%_)))
                                                     (_%hd138363138419%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e138364138416%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd138363138419%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd138363138419%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138362138421%_))
                     (let ((_%e138367138424%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138362138421%_))))
                       (let ((_%tl138365138429%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138367138424%_)))
                             (_%hd138366138427%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138367138424%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138365138429%_))
                             (_%__kont144657144658%_)
                             (_%__kont144661144662%_))))
                     (_%__kont144661144662%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd138363138419%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138362138421%_))
                         (let ((_%e138373138401%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138362138421%_))))
                           (let ((_%tl138371138406%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138373138401%_)))
                                 (_%hd138372138404%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138373138401%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138371138406%_))
                                 (_%__kont144659144660%_)
                                 (_%__kont144661144662%_))))
                         (_%__kont144661144662%_))
                     (_%__kont144661144662%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144661144662%_))))
                                             (_%__kont144661144662%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest138335138343%_))
                                 (let ((_%hd138340138440%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest138335138343%_)))
                                       (_%tl138341138442%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest138335138343%_))))
                                   (let* ((_%e138445%_ _%hd138340138440%_)
                                          (_%rest138447%_ _%tl138341138442%_))
                                     (declare (not safe))
                                     (_%K138339138437%_
                                      _%rest138447%_
                                      _%e138445%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%else138337138351%_)))))))))
                (_%__kont144707144708%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call%
                      _%self138202%_
                      _%stx138203%_)))))
            (let ((_%__match144746144747%_
                   (lambda (_%e138212138247%_
                            _%hd138211138250%_
                            _%tl138210138252%_
                            _%e138215138255%_
                            _%hd138214138258%_
                            _%tl138213138260%_
                            _%e138218138263%_
                            _%hd138217138266%_
                            _%tl138216138268%_
                            _%e138221138271%_
                            _%hd138220138274%_
                            _%tl138219138276%_
                            _%__splice144705144706%_
                            _%target138222138279%_
                            _%tl138224138281%_)
                     (letrec ((_%loop138225138284%_
                               (lambda (_%hd138223138287%_
                                        _%rand138229138289%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138223138287%_))
                                     (let ((_%e138226138292%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138223138287%_))))
                                       (let ((_%lp-tl138228138297%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138226138292%_)))
                                             (_%lp-hd138227138295%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138226138292%_))))
                                         (let ((__tmp145260
                                                (cons _%lp-hd138227138295%_
                                                      _%rand138229138289%_)))
                                           (declare (not safe))
                                           (_%loop138225138284%_
                                            _%lp-tl138228138297%_
                                            __tmp145260))))
                                     (let ((_%rand138230138300%_
                                            (reverse _%rand138229138289%_)))
                                       (_%__kont144703144704%_
                                        _%rand138230138300%_
                                        _%hd138220138274%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop138225138284%_ _%target138222138279%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144701144702%_))
                  (let ((_%e138212138247%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144701144702%_))))
                    (let ((_%tl138210138252%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138212138247%_)))
                          (_%hd138211138250%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138212138247%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138210138252%_))
                          (let ((_%e138215138255%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138210138252%_))))
                            (let ((_%tl138213138260%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138215138255%_)))
                                  (_%hd138214138258%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138215138255%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138214138258%_))
                                  (let ((_%e138218138263%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138214138258%_))))
                                    (let ((_%tl138216138268%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138218138263%_)))
                                          (_%hd138217138266%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138218138263%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138217138266%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138217138266%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138216138268%_))
                                                  (let ((_%e138221138271%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138216138268%_))))
                                                    (let ((_%tl138219138276%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138221138271%_)))
                                                          (_%hd138220138274%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138221138271%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138219138276%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138213138260%_))
                      (let ((_%__splice144705144706%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138213138260%_
                                '0))))
                        (let ((_%tl138224138281%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144705144706%_ '1)))
                              (_%target138222138279%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144705144706%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138224138281%_))
                              (_%__match144746144747%_
                               _%e138212138247%_
                               _%hd138211138250%_
                               _%tl138210138252%_
                               _%e138215138255%_
                               _%hd138214138258%_
                               _%tl138213138260%_
                               _%e138218138263%_
                               _%hd138217138266%_
                               _%tl138216138268%_
                               _%e138221138271%_
                               _%hd138220138274%_
                               _%tl138219138276%_
                               _%__splice144705144706%_
                               _%target138222138279%_
                               _%tl138224138281%_)
                              (_%__kont144707144708%_))))
                      (_%__kont144707144708%_))
                  (_%__kont144707144708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144707144708%_))
                                              (_%__kont144707144708%_))
                                          (_%__kont144707144708%_))))
                                  (_%__kont144707144708%_))))
                          (_%__kont144707144708%_))))
                  (_%__kont144707144708%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self138014%_ _%stx138015%_)
        (letrec ((_%simplify138017%_
                  (lambda (_%code138102%_)
                    (let* ((_%code138103138121%_ _%code138102%_)
                           (_%else138105138129%_ (lambda () _%code138102%_))
                           (_%K138107138165%_
                            (lambda (_%expr138132%_ _%test138133%_)
                              (let* ((_%expr138134138142%_ _%expr138132%_)
                                     (_%else138136138150%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test138133%_
                                                    (cons _%expr138132%_
                                                          '())))))
                                     (_%K138138138155%_
                                      (lambda (_%exprs138153%_)
                                        (cons 'and
                                              (cons _%test138133%_
                                                    _%exprs138153%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr138134138142%_))
                                    (let ((_%hd138139138158%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr138134138142%_)))
                                          (_%tl138140138160%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr138134138142%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd138139138158%_ 'and))
                                          (let ((_%exprs138163%_
                                                 _%tl138140138160%_))
                                            (declare (not safe))
                                            (_%K138138138155%_
                                             _%exprs138163%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138136138150%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138136138150%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code138103138121%_))
                          (let ((_%hd138108138168%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code138103138121%_)))
                                (_%tl138109138170%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code138103138121%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd138108138168%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl138109138170%_))
                                    (let ((_%hd138110138173%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl138109138170%_)))
                                          (_%tl138111138175%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl138109138170%_))))
                                      (let ((_%test138178%_
                                             _%hd138110138173%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl138111138175%_))
                                            (let ((_%hd138112138180%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl138111138175%_)))
                                                  (_%tl138113138182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl138111138175%_))))
                                              (let ((_%expr138185%_
                                                     _%hd138112138180%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl138113138182%_))
                                                    (let ((_%hd138114138187%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl138113138182%_)))
                                                          (_%tl138115138189%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl138113138182%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd138114138187%_))
                                                          (let ((_%hd138116138192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd138114138187%_)))
                        (_%tl138117138194%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd138114138187%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd138116138192%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl138117138194%_))
                            (let ((_%hd138118138197%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl138117138194%_)))
                                  (_%tl138119138199%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl138117138194%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd138118138197%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl138119138199%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl138115138189%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%K138107138165%_
                                             _%expr138185%_
                                             _%test138178%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138105138129%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else138105138129%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else138105138129%_))))
                            (let ()
                              (declare (not safe))
                              (_%else138105138129%_)))
                        (let () (declare (not safe)) (_%else138105138129%_))))
                  (let () (declare (not safe)) (_%else138105138129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else138105138129%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%else138105138129%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138105138129%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else138105138129%_))))
                          (let ()
                            (declare (not safe))
                            (_%else138105138129%_)))))))
          (let* ((_%g138019138040%_
                  (lambda (_%g138020138037%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138020138037%_))))
                 (_%g138018138099%_
                  (lambda (_%g138020138043%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138020138043%_))
                        (let ((_%e138026138045%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138020138043%_))))
                          (let ((_%hd138025138048%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138026138045%_)))
                                (_%tl138024138050%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138026138045%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138024138050%_))
                                (let ((_%e138029138053%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138024138050%_))))
                                  (let ((_%hd138028138056%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138029138053%_)))
                                        (_%tl138027138058%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138029138053%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138027138058%_))
                                        (let ((_%e138032138061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138027138058%_))))
                                          (let ((_%hd138031138064%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138032138061%_)))
                                                (_%tl138030138066%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138032138061%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138030138066%_))
                                                (let ((_%e138035138069%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138030138066%_))))
                                                  (let ((_%hd138034138072%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138035138069%_)))
                                                        (_%tl138033138074%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138035138069%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138033138074%_))
                                                        ((lambda (_%L138077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L138078%_
                          _%L138079%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (let ((__tmp145261
                              (cons 'if
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self138014%_
                                             _%L138079%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self138014%_
                                                   _%L138078%_))
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self138014%_
                                                         _%L138077%_))
                                                      '()))))))
                         (declare (not safe))
                         (_%simplify138017%_ __tmp145261))
                       (cons 'if
                             (cons (let ((__tmp145262
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138014%_
                                               _%L138079%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp145262
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138014%_
                                            _%L138078%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self138014%_
                                                  _%L138077%_))
                                               '()))))))
                 _%hd138034138072%_
                 _%hd138031138064%_
                 _%hd138028138056%_)
                (let ()
                  (declare (not safe))
                  (_%g138019138040%_ _%g138020138043%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g138019138040%_
                                                   _%g138020138043%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g138019138040%_
                                           _%g138020138043%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138019138040%_ _%g138020138043%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138019138040%_ _%g138020138043%_))))))
            (declare (not safe))
            (_%g138018138099%_ _%stx138015%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self137962%_ _%stx137963%_)
        (let* ((_%g137965137978%_
                (lambda (_%g137966137975%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137966137975%_))))
               (_%g137964138011%_
                (lambda (_%g137966137981%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137966137981%_))
                      (let ((_%e137970137983%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137966137981%_))))
                        (let ((_%hd137969137986%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137970137983%_)))
                              (_%tl137968137988%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137970137983%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137968137988%_))
                              (let ((_%e137973137991%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137968137988%_))))
                                (let ((_%hd137972137994%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137973137991%_)))
                                      (_%tl137971137996%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137973137991%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl137971137996%_))
                                      ((lambda (_%L137999%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L137999%_)))
                                       _%hd137972137994%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g137965137978%_
                                         _%g137966137981%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137965137978%_ _%g137966137981%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137965137978%_ _%g137966137981%_))))))
          (declare (not safe))
          (_%g137964138011%_ _%stx137963%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self137894%_ _%stx137895%_)
        (let* ((_%g137897137914%_
                (lambda (_%g137898137911%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137898137911%_))))
               (_%g137896137959%_
                (lambda (_%g137898137917%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137898137917%_))
                      (let ((_%e137903137919%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137898137917%_))))
                        (let ((_%hd137902137922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137903137919%_)))
                              (_%tl137901137924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137903137919%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137901137924%_))
                              (let ((_%e137906137927%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137901137924%_))))
                                (let ((_%hd137905137930%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137906137927%_)))
                                      (_%tl137904137932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137906137927%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137904137932%_))
                                      (let ((_%e137909137935%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137904137932%_))))
                                        (let ((_%hd137908137938%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137909137935%_)))
                                              (_%tl137907137940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137909137935%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137907137940%_))
                                              ((lambda (_%L137943%_
                                                        _%L137944%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L137944%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self137894%_ _%L137943%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137908137938%_
                                               _%hd137905137930%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g137897137914%_
                                                 _%g137898137917%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137897137914%_
                                         _%g137898137917%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137897137914%_ _%g137898137917%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137897137914%_ _%g137898137917%_))))))
          (declare (not safe))
          (_%g137896137959%_ _%stx137895%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self137705%_ _%stx137706%_)
        (let* ((_%g137708137725%_
                (lambda (_%g137709137722%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137709137722%_))))
               (_%g137707137891%_
                (lambda (_%g137709137728%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137709137728%_))
                      (let ((_%e137714137730%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137709137728%_))))
                        (let ((_%hd137713137733%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137714137730%_)))
                              (_%tl137712137735%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137714137730%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137712137735%_))
                              (let ((_%e137717137738%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137712137735%_))))
                                (let ((_%hd137716137741%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137717137738%_)))
                                      (_%tl137715137743%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137717137738%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137715137743%_))
                                      (let ((_%e137720137746%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137715137743%_))))
                                        (let ((_%hd137719137749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137720137746%_)))
                                              (_%tl137718137751%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137720137746%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137718137751%_))
                                              ((lambda (_%L137754%_
                                                        _%L137755%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137705%_ _%L137754%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137705%_ _%L137755%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137770%_ ((_%rest137773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137755%_ (cons _%L137754%_ '())))
                                (_%bind137775%_ '())
                                (_%args137776%_ '()))
               (let* ((_%rest137777137785%_ _%rest137773%_)
                      (_%else137779137793%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137775%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args137776%_)
                                                 '()))))))
                      (_%K137781137879%_
                       (lambda (_%rest137796%_ _%e137797%_)
                         (let* ((_%__stx144749144750%_ _%e137797%_)
                                (_%g137802137820%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144749144750%_)))))
                           (let ((_%__kont144751144752%_
                                  (lambda ()
                                    (let ((__tmp145263
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137797%_))
                                                 _%args137776%_)))
                                      (declare (not safe))
                                      (_%lp137770%_
                                       _%rest137796%_
                                       _%bind137775%_
                                       __tmp145263))))
                                 (_%__kont144753144754%_
                                  (lambda ()
                                    (let ((__tmp145264
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137797%_))
                                                 _%args137776%_)))
                                      (declare (not safe))
                                      (_%lp137770%_
                                       _%rest137796%_
                                       _%bind137775%_
                                       __tmp145264))))
                                 (_%__kont144755144756%_
                                  (lambda ()
                                    (let ((_%tmp137827%_
                                           (let ((__tmp145265
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145265))))
                                      (let ((__tmp145267
                                             (cons (cons _%tmp137827%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e137797%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind137775%_))
                                            (__tmp145266
                                             (cons _%tmp137827%_
                                                   _%args137776%_)))
                                        (declare (not safe))
                                        (_%lp137770%_
                                         _%rest137796%_
                                         __tmp145267
                                         __tmp145266))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144749144750%_))
                                 (let ((_%e137806137858%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144749144750%_))))
                                   (let ((_%tl137804137863%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137806137858%_)))
                                         (_%hd137805137861%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137806137858%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137805137861%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137805137861%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137804137863%_))
                                                 (let ((_%e137809137866%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137804137863%_))))
                                                   (let ((_%tl137807137871%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137809137866%_)))
                                                         (_%hd137808137869%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137809137866%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137807137871%_))
                                                         (_%__kont144751144752%_)
                                                         (_%__kont144755144756%_))))
                                                 (_%__kont144755144756%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137805137861%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137804137863%_))
                                                     (let ((_%e137815137843%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137804137863%_))))
                                                       (let ((_%tl137813137848%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137815137843%_)))
                     (_%hd137814137846%_
                      (let () (declare (not safe)) (##car _%e137815137843%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137813137848%_))
                     (_%__kont144753144754%_)
                     (_%__kont144755144756%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144755144756%_))
                                                 (_%__kont144755144756%_)))
                                         (_%__kont144755144756%_))))
                                 (_%__kont144755144756%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137777137785%_))
                     (let ((_%hd137782137882%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137777137785%_)))
                           (_%tl137783137884%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137777137785%_))))
                       (let* ((_%e137887%_ _%hd137782137882%_)
                              (_%rest137889%_ _%tl137783137884%_))
                         (declare (not safe))
                         (_%K137781137879%_ _%rest137889%_ _%e137887%_)))
                     (let () (declare (not safe)) (_%else137779137793%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137719137749%_
                                               _%hd137716137741%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g137708137725%_
                                                 _%g137709137728%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137708137725%_
                                         _%g137709137728%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137708137725%_ _%g137709137728%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137708137725%_ _%g137709137728%_))))))
          (declare (not safe))
          (_%g137707137891%_ _%stx137706%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self137516%_ _%stx137517%_)
        (let* ((_%g137519137536%_
                (lambda (_%g137520137533%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137520137533%_))))
               (_%g137518137702%_
                (lambda (_%g137520137539%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137520137539%_))
                      (let ((_%e137525137541%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137520137539%_))))
                        (let ((_%hd137524137544%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137525137541%_)))
                              (_%tl137523137546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137525137541%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137523137546%_))
                              (let ((_%e137528137549%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137523137546%_))))
                                (let ((_%hd137527137552%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137528137549%_)))
                                      (_%tl137526137554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137528137549%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137526137554%_))
                                      (let ((_%e137531137557%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137526137554%_))))
                                        (let ((_%hd137530137560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137531137557%_)))
                                              (_%tl137529137562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137531137557%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137529137562%_))
                                              ((lambda (_%L137565%_
                                                        _%L137566%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137516%_ _%L137565%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137516%_ _%L137566%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137581%_ ((_%rest137584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137566%_ (cons _%L137565%_ '())))
                                (_%bind137586%_ '())
                                (_%args137587%_ '()))
               (let* ((_%rest137588137596%_ _%rest137584%_)
                      (_%else137590137604%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137586%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args137587%_)
                                                 '()))))))
                      (_%K137592137690%_
                       (lambda (_%rest137607%_ _%e137608%_)
                         (let* ((_%__stx144795144796%_ _%e137608%_)
                                (_%g137613137631%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144795144796%_)))))
                           (let ((_%__kont144797144798%_
                                  (lambda ()
                                    (let ((__tmp145268
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137608%_))
                                                 _%args137587%_)))
                                      (declare (not safe))
                                      (_%lp137581%_
                                       _%rest137607%_
                                       _%bind137586%_
                                       __tmp145268))))
                                 (_%__kont144799144800%_
                                  (lambda ()
                                    (let ((__tmp145269
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137608%_))
                                                 _%args137587%_)))
                                      (declare (not safe))
                                      (_%lp137581%_
                                       _%rest137607%_
                                       _%bind137586%_
                                       __tmp145269))))
                                 (_%__kont144801144802%_
                                  (lambda ()
                                    (let ((_%tmp137638%_
                                           (let ((__tmp145270
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145270))))
                                      (let ((__tmp145272
                                             (cons (cons _%tmp137638%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e137608%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind137586%_))
                                            (__tmp145271
                                             (cons _%tmp137638%_
                                                   _%args137587%_)))
                                        (declare (not safe))
                                        (_%lp137581%_
                                         _%rest137607%_
                                         __tmp145272
                                         __tmp145271))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144795144796%_))
                                 (let ((_%e137617137669%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144795144796%_))))
                                   (let ((_%tl137615137674%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137617137669%_)))
                                         (_%hd137616137672%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137617137669%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137616137672%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137616137672%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137615137674%_))
                                                 (let ((_%e137620137677%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137615137674%_))))
                                                   (let ((_%tl137618137682%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137620137677%_)))
                                                         (_%hd137619137680%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137620137677%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137618137682%_))
                                                         (_%__kont144797144798%_)
                                                         (_%__kont144801144802%_))))
                                                 (_%__kont144801144802%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137616137672%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137615137674%_))
                                                     (let ((_%e137626137654%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137615137674%_))))
                                                       (let ((_%tl137624137659%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137626137654%_)))
                     (_%hd137625137657%_
                      (let () (declare (not safe)) (##car _%e137626137654%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137624137659%_))
                     (_%__kont144799144800%_)
                     (_%__kont144801144802%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144801144802%_))
                                                 (_%__kont144801144802%_)))
                                         (_%__kont144801144802%_))))
                                 (_%__kont144801144802%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137588137596%_))
                     (let ((_%hd137593137693%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137588137596%_)))
                           (_%tl137594137695%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137588137596%_))))
                       (let* ((_%e137698%_ _%hd137593137693%_)
                              (_%rest137700%_ _%tl137594137695%_))
                         (declare (not safe))
                         (_%K137592137690%_ _%rest137700%_ _%e137698%_)))
                     (let () (declare (not safe)) (_%else137590137604%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137530137560%_
                                               _%hd137527137552%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g137519137536%_
                                                 _%g137520137539%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137519137536%_
                                         _%g137520137539%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137519137536%_ _%g137520137539%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137519137536%_ _%g137520137539%_))))))
          (declare (not safe))
          (_%g137518137702%_ _%stx137517%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self137432%_ _%stx137433%_)
        (let* ((_%g137435137456%_
                (lambda (_%g137436137453%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137436137453%_))))
               (_%g137434137513%_
                (lambda (_%g137436137459%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137436137459%_))
                      (let ((_%e137442137461%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137436137459%_))))
                        (let ((_%hd137441137464%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137442137461%_)))
                              (_%tl137440137466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137442137461%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137440137466%_))
                              (let ((_%e137445137469%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137440137466%_))))
                                (let ((_%hd137444137472%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137445137469%_)))
                                      (_%tl137443137474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137445137469%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137443137474%_))
                                      (let ((_%e137448137477%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137443137474%_))))
                                        (let ((_%hd137447137480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137448137477%_)))
                                              (_%tl137446137482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137448137477%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137446137482%_))
                                              (let ((_%e137451137485%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137446137482%_))))
                                                (let ((_%hd137450137488%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137451137485%_)))
                                                      (_%tl137449137490%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137451137485%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137449137490%_))
                                                      ((lambda (_%L137493%_
                                                                _%L137494%_
                                                                _%L137495%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137432%_ _%L137493%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137432%_
                                      _%L137494%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137432%_
                                            _%L137495%_))
                                         (cons ''#f '()))))))
               _%hd137450137488%_
               _%hd137447137480%_
               _%hd137444137472%_)
              (let ()
                (declare (not safe))
                (_%g137435137456%_ _%g137436137459%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137435137456%_
                                                 _%g137436137459%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137435137456%_
                                         _%g137436137459%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137435137456%_ _%g137436137459%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137435137456%_ _%g137436137459%_))))))
          (declare (not safe))
          (_%g137434137513%_ _%stx137433%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self137332%_ _%stx137333%_)
        (let* ((_%g137335137360%_
                (lambda (_%g137336137357%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137336137357%_))))
               (_%g137334137429%_
                (lambda (_%g137336137363%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137336137363%_))
                      (let ((_%e137343137365%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137336137363%_))))
                        (let ((_%hd137342137368%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137343137365%_)))
                              (_%tl137341137370%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137343137365%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137341137370%_))
                              (let ((_%e137346137373%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137341137370%_))))
                                (let ((_%hd137345137376%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137346137373%_)))
                                      (_%tl137344137378%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137346137373%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137344137378%_))
                                      (let ((_%e137349137381%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137344137378%_))))
                                        (let ((_%hd137348137384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137349137381%_)))
                                              (_%tl137347137386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137349137381%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137347137386%_))
                                              (let ((_%e137352137389%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137347137386%_))))
                                                (let ((_%hd137351137392%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137352137389%_)))
                                                      (_%tl137350137394%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137352137389%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137350137394%_))
                                                      (let ((_%e137355137397%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137350137394%_))))
                (let ((_%hd137354137400%_
                       (let () (declare (not safe)) (##car _%e137355137397%_)))
                      (_%tl137353137402%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137355137397%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137353137402%_))
                      ((lambda (_%L137405%_
                                _%L137406%_
                                _%L137407%_
                                _%L137408%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137332%_
                                        _%L137406%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137332%_
                                              _%L137405%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137332%_
                                                    _%L137407%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137332%_
                                                          _%L137408%_))
                                                       (cons ''#f '())))))))
                       _%hd137354137400%_
                       _%hd137351137392%_
                       _%hd137348137384%_
                       _%hd137345137376%_)
                      (let ()
                        (declare (not safe))
                        (_%g137335137360%_ _%g137336137363%_)))))
              (let ()
                (declare (not safe))
                (_%g137335137360%_ _%g137336137363%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137335137360%_
                                                 _%g137336137363%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137335137360%_
                                         _%g137336137363%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137335137360%_ _%g137336137363%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137335137360%_ _%g137336137363%_))))))
          (declare (not safe))
          (_%g137334137429%_ _%stx137333%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self137248%_ _%stx137249%_)
        (let* ((_%g137251137272%_
                (lambda (_%g137252137269%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137252137269%_))))
               (_%g137250137329%_
                (lambda (_%g137252137275%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137252137275%_))
                      (let ((_%e137258137277%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137252137275%_))))
                        (let ((_%hd137257137280%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137258137277%_)))
                              (_%tl137256137282%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137258137277%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137256137282%_))
                              (let ((_%e137261137285%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137256137282%_))))
                                (let ((_%hd137260137288%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137261137285%_)))
                                      (_%tl137259137290%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137261137285%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137259137290%_))
                                      (let ((_%e137264137293%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137259137290%_))))
                                        (let ((_%hd137263137296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137264137293%_)))
                                              (_%tl137262137298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137264137293%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137262137298%_))
                                              (let ((_%e137267137301%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137262137298%_))))
                                                (let ((_%hd137266137304%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137267137301%_)))
                                                      (_%tl137265137306%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137267137301%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137265137306%_))
                                                      ((lambda (_%L137309%_
                                                                _%L137310%_
                                                                _%L137311%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137248%_ _%L137309%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137248%_
                                      _%L137310%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137248%_
                                            _%L137311%_))
                                         (cons ''#f '()))))))
               _%hd137266137304%_
               _%hd137263137296%_
               _%hd137260137288%_)
              (let ()
                (declare (not safe))
                (_%g137251137272%_ _%g137252137275%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137251137272%_
                                                 _%g137252137275%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137251137272%_
                                         _%g137252137275%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137251137272%_ _%g137252137275%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137251137272%_ _%g137252137275%_))))))
          (declare (not safe))
          (_%g137250137329%_ _%stx137249%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self137148%_ _%stx137149%_)
        (let* ((_%g137151137176%_
                (lambda (_%g137152137173%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137152137173%_))))
               (_%g137150137245%_
                (lambda (_%g137152137179%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137152137179%_))
                      (let ((_%e137159137181%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137152137179%_))))
                        (let ((_%hd137158137184%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137159137181%_)))
                              (_%tl137157137186%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137159137181%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137157137186%_))
                              (let ((_%e137162137189%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137157137186%_))))
                                (let ((_%hd137161137192%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137162137189%_)))
                                      (_%tl137160137194%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137162137189%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137160137194%_))
                                      (let ((_%e137165137197%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137160137194%_))))
                                        (let ((_%hd137164137200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137165137197%_)))
                                              (_%tl137163137202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137165137197%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137163137202%_))
                                              (let ((_%e137168137205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137163137202%_))))
                                                (let ((_%hd137167137208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137168137205%_)))
                                                      (_%tl137166137210%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137168137205%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137166137210%_))
                                                      (let ((_%e137171137213%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137166137210%_))))
                (let ((_%hd137170137216%_
                       (let () (declare (not safe)) (##car _%e137171137213%_)))
                      (_%tl137169137218%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137171137213%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137169137218%_))
                      ((lambda (_%L137221%_
                                _%L137222%_
                                _%L137223%_
                                _%L137224%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137148%_
                                        _%L137222%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137148%_
                                              _%L137221%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137148%_
                                                    _%L137223%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137148%_
                                                          _%L137224%_))
                                                       (cons ''#f '())))))))
                       _%hd137170137216%_
                       _%hd137167137208%_
                       _%hd137164137200%_
                       _%hd137161137192%_)
                      (let ()
                        (declare (not safe))
                        (_%g137151137176%_ _%g137152137179%_)))))
              (let ()
                (declare (not safe))
                (_%g137151137176%_ _%g137152137179%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137151137176%_
                                                 _%g137152137179%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137151137176%_
                                         _%g137152137179%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137151137176%_ _%g137152137179%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137151137176%_ _%g137152137179%_))))))
          (declare (not safe))
          (_%g137150137245%_ _%stx137149%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self136943%_ _%stx136944%_)
        (let* ((_%g136946136967%_
                (lambda (_%g136947136964%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136947136964%_))))
               (_%g136945137145%_
                (lambda (_%g136947136970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136947136970%_))
                      (let ((_%e136953136972%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136947136970%_))))
                        (let ((_%hd136952136975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136953136972%_)))
                              (_%tl136951136977%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136953136972%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136951136977%_))
                              (let ((_%e136956136980%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136951136977%_))))
                                (let ((_%hd136955136983%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136956136980%_)))
                                      (_%tl136954136985%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136956136980%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136954136985%_))
                                      (let ((_%e136959136988%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136954136985%_))))
                                        (let ((_%hd136958136991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136959136988%_)))
                                              (_%tl136957136993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136959136988%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136957136993%_))
                                              (let ((_%e136962136996%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136957136993%_))))
                                                (let ((_%hd136961136999%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136962136996%_)))
                                                      (_%tl136960137001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136962136996%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl136960137001%_))
                                                      ((lambda (_%L137004%_
                                                                _%L137005%_
                                                                _%L137006%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (cons '##unchecked-structure-ref
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self136943%_
                                    _%L137004%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self136943%_
                                          _%L137005%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp137024%_ ((_%rest137027%_
                                         (cons _%L137005%_
                                               (cons _%L137004%_ '())))
                                        (_%bind137029%_ '())
                                        (_%args137030%_ '()))
                       (let* ((_%rest137031137039%_ _%rest137027%_)
                              (_%else137033137047%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind137029%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp145273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp145273 _%args137030%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K137035137133%_
                               (lambda (_%rest137050%_ _%e137051%_)
                                 (let* ((_%__stx144841144842%_ _%e137051%_)
                                        (_%g137056137074%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144841144842%_)))))
                                   (let ((_%__kont144843144844%_
                                          (lambda ()
                                            (let ((__tmp145274
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137051%_))
                                                         _%args137030%_)))
                                              (declare (not safe))
                                              (_%lp137024%_
                                               _%rest137050%_
                                               _%bind137029%_
                                               __tmp145274))))
                                         (_%__kont144845144846%_
                                          (lambda ()
                                            (let ((__tmp145275
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137051%_))
                                                         _%args137030%_)))
                                              (declare (not safe))
                                              (_%lp137024%_
                                               _%rest137050%_
                                               _%bind137029%_
                                               __tmp145275))))
                                         (_%__kont144847144848%_
                                          (lambda ()
                                            (let ((_%tmp137081%_
                                                   (let ((__tmp145276
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp145276))))
                                              (let ((__tmp145278
                                                     (cons (cons _%tmp137081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__0 _%e137051%_))
                               '()))
                   _%bind137029%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145277
                                                     (cons _%tmp137081%_
                                                           _%args137030%_)))
                                                (declare (not safe))
                                                (_%lp137024%_
                                                 _%rest137050%_
                                                 __tmp145278
                                                 __tmp145277))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144841144842%_))
                                         (let ((_%e137060137112%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144841144842%_))))
                                           (let ((_%tl137058137117%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e137060137112%_)))
                                                 (_%hd137059137115%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e137060137112%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd137059137115%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd137059137115%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl137058137117%_))
                                                         (let ((_%e137063137120%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl137058137117%_))))
                   (let ((_%tl137061137125%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e137063137120%_)))
                         (_%hd137062137123%_
                          (let ()
                            (declare (not safe))
                            (##car _%e137063137120%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl137061137125%_))
                         (_%__kont144843144844%_)
                         (_%__kont144847144848%_))))
                 (_%__kont144847144848%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd137059137115%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl137058137117%_))
                     (let ((_%e137069137097%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl137058137117%_))))
                       (let ((_%tl137067137102%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e137069137097%_)))
                             (_%hd137068137100%_
                              (let ()
                                (declare (not safe))
                                (##car _%e137069137097%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl137067137102%_))
                             (_%__kont144845144846%_)
                             (_%__kont144847144848%_))))
                     (_%__kont144847144848%_))
                 (_%__kont144847144848%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144847144848%_))))
                                         (_%__kont144847144848%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest137031137039%_))
                             (let ((_%hd137036137136%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest137031137039%_)))
                                   (_%tl137037137138%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest137031137039%_))))
                               (let* ((_%e137141%_ _%hd137036137136%_)
                                      (_%rest137143%_ _%tl137037137138%_))
                                 (declare (not safe))
                                 (_%K137035137133%_
                                  _%rest137143%_
                                  _%e137141%_)))
                             (let ()
                               (declare (not safe))
                               (_%else137033137047%_)))))))
               _%hd136961136999%_
               _%hd136958136991%_
               _%hd136955136983%_)
              (let ()
                (declare (not safe))
                (_%g136946136967%_ _%g136947136970%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g136946136967%_
                                                 _%g136947136970%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136946136967%_
                                         _%g136947136970%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136946136967%_ _%g136947136970%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136946136967%_ _%g136947136970%_))))))
          (declare (not safe))
          (_%g136945137145%_ _%stx136944%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self136722%_ _%stx136723%_)
        (let* ((_%g136725136750%_
                (lambda (_%g136726136747%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136726136747%_))))
               (_%g136724136940%_
                (lambda (_%g136726136753%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136726136753%_))
                      (let ((_%e136733136755%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136726136753%_))))
                        (let ((_%hd136732136758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136733136755%_)))
                              (_%tl136731136760%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136733136755%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136731136760%_))
                              (let ((_%e136736136763%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136731136760%_))))
                                (let ((_%hd136735136766%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136736136763%_)))
                                      (_%tl136734136768%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136736136763%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136734136768%_))
                                      (let ((_%e136739136771%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136734136768%_))))
                                        (let ((_%hd136738136774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136739136771%_)))
                                              (_%tl136737136776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136739136771%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136737136776%_))
                                              (let ((_%e136742136779%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136737136776%_))))
                                                (let ((_%hd136741136782%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136742136779%_)))
                                                      (_%tl136740136784%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136742136779%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl136740136784%_))
                                                      (let ((_%e136745136787%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl136740136784%_))))
                (let ((_%hd136744136790%_
                       (let () (declare (not safe)) (##car _%e136745136787%_)))
                      (_%tl136743136792%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e136745136787%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136743136792%_))
                      ((lambda (_%L136795%_
                                _%L136796%_
                                _%L136797%_
                                _%L136798%_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self136722%_
                                            _%L136796%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self136722%_
                                                  _%L136795%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self136722%_
                                                        _%L136797%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp136819%_ ((_%rest136822%_
                                                 (cons _%L136797%_
                                                       (cons _%L136795%_
                                                             (cons _%L136796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind136824%_ '())
                                                (_%args136825%_ '()))
                               (let* ((_%rest136826136834%_ _%rest136822%_)
                                      (_%else136828136842%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind136824%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp145279 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp145279 _%args136825%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K136830136928%_
                                       (lambda (_%rest136845%_ _%e136846%_)
                                         (let* ((_%__stx144887144888%_
                                                 _%e136846%_)
                                                (_%g136851136869%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx144887144888%_)))))
                                           (let ((_%__kont144889144890%_
                                                  (lambda ()
                                                    (let ((__tmp145280
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e136846%_))
                         _%args136825%_)))
              (declare (not safe))
              (_%lp136819%_ _%rest136845%_ _%bind136824%_ __tmp145280))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144891144892%_
                                                  (lambda ()
                                                    (let ((__tmp145281
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e136846%_))
                         _%args136825%_)))
              (declare (not safe))
              (_%lp136819%_ _%rest136845%_ _%bind136824%_ __tmp145281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144893144894%_
                                                  (lambda ()
                                                    (let ((_%tmp136876%_
                                                           (let ((__tmp145282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp145282))))
              (let ((__tmp145284
                     (cons (cons _%tmp136876%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e136846%_))
                                       '()))
                           _%bind136824%_))
                    (__tmp145283 (cons _%tmp136876%_ _%args136825%_)))
                (declare (not safe))
                (_%lp136819%_ _%rest136845%_ __tmp145284 __tmp145283))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx144887144888%_))
                                                 (let ((_%e136855136907%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx144887144888%_))))
                                                   (let ((_%tl136853136912%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e136855136907%_)))
                                                         (_%hd136854136910%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e136855136907%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd136854136910%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd136854136910%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl136853136912%_))
                         (let ((_%e136858136915%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl136853136912%_))))
                           (let ((_%tl136856136920%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e136858136915%_)))
                                 (_%hd136857136918%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e136858136915%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl136856136920%_))
                                 (_%__kont144889144890%_)
                                 (_%__kont144893144894%_))))
                         (_%__kont144893144894%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd136854136910%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl136853136912%_))
                             (let ((_%e136864136892%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl136853136912%_))))
                               (let ((_%tl136862136897%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e136864136892%_)))
                                     (_%hd136863136895%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e136864136892%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl136862136897%_))
                                     (_%__kont144891144892%_)
                                     (_%__kont144893144894%_))))
                             (_%__kont144893144894%_))
                         (_%__kont144893144894%_)))
                 (_%__kont144893144894%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144893144894%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest136826136834%_))
                                     (let ((_%hd136831136931%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest136826136834%_)))
                                           (_%tl136832136933%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest136826136834%_))))
                                       (let* ((_%e136936%_ _%hd136831136931%_)
                                              (_%rest136938%_
                                               _%tl136832136933%_))
                                         (declare (not safe))
                                         (_%K136830136928%_
                                          _%rest136938%_
                                          _%e136936%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%else136828136842%_)))))))
                       _%hd136744136790%_
                       _%hd136741136782%_
                       _%hd136738136774%_
                       _%hd136735136766%_)
                      (let ()
                        (declare (not safe))
                        (_%g136725136750%_ _%g136726136753%_)))))
              (let ()
                (declare (not safe))
                (_%g136725136750%_ _%g136726136753%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g136725136750%_
                                                 _%g136726136753%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136725136750%_
                                         _%g136726136753%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136725136750%_ _%g136726136753%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136725136750%_ _%g136726136753%_))))))
          (declare (not safe))
          (_%g136724136940%_ _%stx136723%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self136561%_ _%stx136562%_)
        (letrec ((_%import-set-template136564%_
                  (lambda (_%in136667%_ _%phi136668%_)
                    (let ((_%iphi136670%_
                           (fx+ _%phi136668%_
                                (##direct-structure-ref
                                 _%in136667%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports136671%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in136667%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp136673%_ ((_%rest136675%_ _%imports136671%_)
                                         (_%r136676%_ '()))
                        (let* ((_%rest136677136685%_ _%rest136675%_)
                               (_%else136679136693%_ (lambda () _%r136676%_))
                               (_%K136681136710%_
                                (lambda (_%rest136696%_ _%in136697%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in136697%_
                                         'gx#module-context::t))
                                      (let ()
                                        (if (let ()
                                              (declare (not safe))
                                              (##fxzero? _%iphi136670%_))
                                            (let ((__tmp145285
                                                   (cons _%in136697%_
                                                         _%r136676%_)))
                                              (declare (not safe))
                                              (_%lp136673%_
                                               _%rest136696%_
                                               __tmp145285))
                                            (let ()
                                              (declare (not safe))
                                              (_%lp136673%_
                                               _%rest136696%_
                                               _%r136676%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in136697%_
                                             'gx#module-import::t))
                                          (let ()
                                            (let ((_%iphi136701%_
                                                   (fx+ _%phi136668%_
                                                        (##direct-structure-ref
                                                         _%in136697%_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fxzero? _%iphi136701%_))
                                                  (let ((__tmp145286
                                                         (cons (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in136697%_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)
                       _%r136676%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%lp136673%_
                                                     _%rest136696%_
                                                     __tmp145286))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%lp136673%_
                                                     _%rest136696%_
                                                     _%r136676%_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in136697%_
                                                 'gx#import-set::t))
                                              (let ()
                                                (let ((_%xphi136704%_
                                                       (fx+ _%iphi136670%_
                                                            (##direct-structure-ref
                                                             _%in136697%_
                                                             '2
                                                             gx#import-set::t
                                                             '#f))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##fxzero?
                                                         _%xphi136704%_))
                                                      (let ()
                                                        (let ((__tmp145287
                                                               (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%in136697%_
                              '1
                              gx#import-set::t
                              '#f)
                             _%r136676%_)))
                  (declare (not safe))
                  (_%lp136673%_ _%rest136696%_ __tmp145287)))
              (if (let () (declare (not safe)) (##fxpositive? _%xphi136704%_))
                  (let ()
                    (let ((__tmp145288
                           (let ((__tmp145289
                                  (let ()
                                    (declare (not safe))
                                    (_%import-set-template136564%_
                                     _%in136697%_
                                     _%iphi136670%_))))
                             (declare (not safe))
                             (__foldl1 cons _%r136676%_ __tmp145289))))
                      (declare (not safe))
                      (_%lp136673%_ _%rest136696%_ __tmp145288)))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (_%lp136673%_ _%rest136696%_ _%r136676%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp136673%_
                                                   _%rest136696%_
                                                   _%r136676%_)))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest136677136685%_))
                              (let ((_%hd136682136713%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest136677136685%_)))
                                    (_%tl136683136715%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest136677136685%_))))
                                (let* ((_%in136718%_ _%hd136682136713%_)
                                       (_%rest136720%_ _%tl136683136715%_))
                                  (declare (not safe))
                                  (_%K136681136710%_
                                   _%rest136720%_
                                   _%in136718%_)))
                              (let ()
                                (declare (not safe))
                                (_%else136679136693%_)))))))))
          (let* ((_%g136566136576%_
                  (lambda (_%g136567136573%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136567136573%_))))
                 (_%g136565136664%_
                  (lambda (_%g136567136579%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136567136579%_))
                        (let ((_%e136571136581%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136567136579%_))))
                          (let ((_%hd136570136584%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136571136581%_)))
                                (_%tl136569136586%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136571136581%_))))
                            ((lambda (_%L136589%_)
                               (let ((_%ht136600%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp136602%_ ((_%rest136604%_
                                                     _%L136589%_)
                                                    (_%loads136605%_ '()))
                                   (letrec ((_%K136607%_
                                             (lambda (_%ctx136657%_
                                                      _%rest136658%_)
                                               (let ((_%id136660%_
                                                      (##structure-ref
                                                       _%ctx136657%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht136600%_
                                                        _%id136660%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp136602%_
                                                        _%rest136658%_
                                                        _%loads136605%_))
                                                     (let ((_%rt136662%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id136660%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht136600%_
                                                          _%id136660%_
                                                          _%rt136662%_))
                                                       (let ((__tmp145290
                                                              (cons _%rt136662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%loads136605%_)))
                 (declare (not safe))
                 (_%lp136602%_ _%rest136658%_ __tmp145290))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_%rest136608136616%_
                                             _%rest136604%_)
                                            (_%else136610136628%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp145292
                                                            (lambda (_%g136623136625%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g136623136625%_)))
                   (__tmp145291 (reverse _%loads136605%_)))
               (declare (not safe))
               (##map __tmp145292 __tmp145291)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K136612136645%_
                                             (lambda (_%rest136631%_
                                                      _%in136632%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in136632%_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%K136607%_
                                                        _%in136632%_
                                                        _%rest136631%_)))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in136632%_
                                                          'gx#module-import::t))
                                                       (let ()
                                                         (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%in136632%_
                               '3
                               gx#module-import::t
                               '#f))
                     (let ((__tmp145293
                            (##direct-structure-ref
                             (##direct-structure-ref
                              _%in136632%_
                              '1
                              gx#module-import::t
                              '#f)
                             '1
                             gx#module-export::t
                             '#f)))
                       (declare (not safe))
                       (_%K136607%_ __tmp145293 _%rest136631%_))
                     (let ()
                       (declare (not safe))
                       (_%lp136602%_ _%rest136631%_ _%loads136605%_))))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in136632%_
                      'gx#import-set::t))
                   (let ()
                     (let ((_%phi136637%_
                            (##direct-structure-ref
                             _%in136632%_
                             '2
                             gx#import-set::t
                             '#f)))
                       (if (fxzero? _%phi136637%_)
                           (let ()
                             (let ((__tmp145294
                                    (##direct-structure-ref
                                     _%in136632%_
                                     '1
                                     gx#import-set::t
                                     '#f)))
                               (declare (not safe))
                               (_%K136607%_ __tmp145294 _%rest136631%_)))
                           (if (fxpositive? _%phi136637%_)
                               (let ()
                                 (let* ((_%deps136641%_
                                         (let ()
                                           (declare (not safe))
                                           (_%import-set-template136564%_
                                            _%in136632%_
                                            '0)))
                                        (__tmp145295
                                         (let ()
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            _%rest136631%_
                                            _%deps136641%_))))
                                   (declare (not safe))
                                   (_%lp136602%_ __tmp145295 _%loads136605%_)))
                               (let ()
                                 (let ()
                                   (declare (not safe))
                                   (_%lp136602%_
                                    _%rest136631%_
                                    _%loads136605%_)))))))
                   (let ()
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"Unexpected import"
                        _%stx136562%_
                        _%in136632%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest136608136616%_))
                                           (let ((_%hd136613136648%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest136608136616%_)))
                                                 (_%tl136614136650%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest136608136616%_))))
                                             (let* ((_%in136653%_
                                                     _%hd136613136648%_)
                                                    (_%rest136655%_
                                                     _%tl136614136650%_))
                                               (declare (not safe))
                                               (_%K136612136645%_
                                                _%rest136655%_
                                                _%in136653%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%else136610136628%_))))))))
                             _%tl136569136586%_)))
                        (let ()
                          (declare (not safe))
                          (_%g136566136576%_ _%g136567136579%_))))))
            (declare (not safe))
            (_%g136565136664%_ _%stx136562%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self136374%_ _%stx136375%_)
        (letrec ((_%add-lift!136377%_
                  (lambda (_%expr136559%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr136559%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote136378%_
                  (lambda (_%id136556%_ _%marks136557%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id136556%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks136557%_
                                                        '()))))))))
                 (_%generate-simple136379%_
                  (lambda (_%stxq136551%_)
                    (let ((_%gid136553%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid136554%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq136551%_))))
                      (let ((__tmp145296
                             (cons 'define
                                   (cons _%gid136553%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136378%_
                                                  _%qid136554%_
                                                  ''()))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136377%_ __tmp145296))
                      (let ((__tmp145297
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145297 _%stxq136551%_ _%gid136553%_))
                      _%gid136553%_)))
                 (_%generate-serialized136380%_
                  (lambda (_%stxq136541%_ _%marks136542%_)
                    (let* ((_%mark-refs136544%_
                            (map _%generate-mark136381%_ _%marks136542%_))
                           (_%gid136546%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid136548%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq136541%_))))
                      (let ((__tmp145298
                             (cons 'define
                                   (cons _%gid136546%_
                                         (cons (let ((__tmp145299
                                                      (cons 'list
                                                            _%mark-refs136544%_)))
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136378%_
                                                  _%qid136548%_
                                                  __tmp145299))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136377%_ __tmp145298))
                      (let ((__tmp145300
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145300 _%stxq136541%_ _%gid136546%_))
                      _%gid136546%_)))
                 (_%generate-mark136381%_
                  (lambda (_%mark136526%_)
                    (let ((_%$e136528%_
                           (let ((__tmp145301
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp145301 _%mark136526%_))))
                      (if _%$e136528%_
                          (values _%$e136528%_)
                          (let ()
                            (let* ((_%gid136532%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-temporary__% '#t)))
                                   (_%repr136534%_
                                    (let ()
                                      (declare (not safe))
                                      (_%serialize-mark136382%_
                                       _%mark136526%_)))
                                   (_%ctx136536%_
                                    (let ((__tmp145302
                                           (##structure-ref
                                            _%mark136526%_
                                            '2
                                            gx#expander-mark::t
                                            '#f)))
                                      (declare (not safe))
                                      (gx#core-context-top__1 __tmp145302)))
                                   (_%ctx-ref136538%_
                                    (if (eq? _%ctx136536%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#current-expander-context)))
                                        '(gx#current-expander-context)
                                        (cons 'gx#import-module
                                              (cons (cons 'quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_%context-ref136383%_ _%ctx136536%_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              (let ((__tmp145303
                                     (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-marks))))
                                (declare (not safe))
                                (hash-put!
                                 __tmp145303
                                 _%mark136526%_
                                 _%gid136532%_))
                              (let ((__tmp145304
                                     (cons 'define
                                           (cons _%gid136532%_
                                                 (cons (cons 'gx#core-deserialize-mark
                                                             (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%repr136534%_ '()))
                           (cons _%ctx-ref136538%_ '())))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (_%add-lift!136377%_ __tmp145304))
                              _%gid136532%_))))))
                 (_%serialize-mark136382%_
                  (lambda (_%mark136473%_)
                    (letrec ((_%quote-e136475%_
                              (lambda (_%sym136524%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym136524%_))
                                    _%sym136524%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym136524%_))))))
                      (let* ((_%mark136476136485%_ _%mark136473%_)
                             (_%E136478136489%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark136476136485%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K136479136501%_
                              (lambda (_%trace136492%_
                                       _%phi136493%_
                                       _%ctx136494%_
                                       _%subst136495%_)
                                (let ((_%subs136497%_
                                       (if _%subst136495%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst136495%_))
                                           '())))
                                  (cons _%phi136493%_
                                        (map (lambda (_%pair136499%_)
                                               (cons (let ((__tmp145305
                                                            (car _%pair136499%_)))
                                                       (declare (not safe))
                                                       (_%quote-e136475%_
                                                        __tmp145305))
                                                     (let ((__tmp145306
                                                            (cdr _%pair136499%_)))
                                                       (declare (not safe))
                                                       (_%quote-e136475%_
                                                        __tmp145306))))
                                             _%subs136497%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark136476136485%_
                               'gx#expander-mark::t))
                            (let* ((_%e136480136504%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136476136485%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst136507%_ _%e136480136504%_)
                                   (_%e136481136509%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136476136485%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx136512%_ _%e136481136509%_)
                                   (_%e136482136514%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136476136485%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi136517%_ _%e136482136514%_)
                                   (_%e136483136519%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136476136485%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace136522%_ _%e136483136519%_))
                              (declare (not safe))
                              (_%K136479136501%_
                               _%trace136522%_
                               _%phi136517%_
                               _%ctx136512%_
                               _%subst136507%_))
                            (let ()
                              (declare (not safe))
                              (_%E136478136489%_)))))))
                 (_%context-ref136383%_
                  (lambda (_%ctx136460%_)
                    (if (let ((__tmp145307
                               (##structure-ref
                                _%ctx136460%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp145307
                           'gx#module-context::t))
                        (let ((_%ctx-ref136462%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-nested136385%_ _%ctx136460%_)))
                              (_%ctx-origin136463%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-origin136384%_ _%ctx136460%_)))
                              (_%origin136464%_
                               (let ((__tmp145308
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (_%context-ref-origin136384%_ __tmp145308))))
                          (if (eq? _%origin136464%_ _%ctx-origin136463%_)
                              (let ((_%ref136466%_
                                     (let ((__tmp145309
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-context))))
                                       (declare (not safe))
                                       (_%context-ref-nested136385%_
                                        __tmp145309))))
                                (let _%lp136468%_ ((_%ref136470%_
                                                    (cdr _%ref136466%_))
                                                   (_%ctx-ref136471%_
                                                    (cdr _%ctx-ref136462%_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _%ref136470%_))
                                           (eq? (car _%ref136470%_)
                                                (car _%ctx-ref136471%_)))
                                      (let ((__tmp145311 (cdr _%ref136470%_))
                                            (__tmp145310
                                             (cdr _%ctx-ref136471%_)))
                                        (declare (not safe))
                                        (_%lp136468%_ __tmp145311 __tmp145310))
                                      (cons '#f _%ctx-ref136471%_))))
                              _%ctx-ref136462%_))
                        (let ((__tmp145312
                               (##structure-ref
                                _%ctx136460%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp145312)))))
                 (_%context-ref-origin136384%_
                  (lambda (_%ctx136452%_)
                    (let _%lp136454%_ ((_%ctx136456%_ _%ctx136452%_))
                      (let ((_%super136458%_
                             (##structure-ref
                              _%ctx136456%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136458%_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_%lp136454%_ _%super136458%_))
                            _%ctx136456%_)))))
                 (_%context-ref-nested136385%_
                  (lambda (_%ctx136443%_)
                    (let _%lp136445%_ ((_%ctx136447%_ _%ctx136443%_)
                                       (_%r136448%_ '()))
                      (let ((_%super136450%_
                             (##structure-ref
                              _%ctx136447%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136450%_
                               'gx#module-context::t))
                            (let ((__tmp145313
                                   (cons (car (##structure-ref
                                               _%ctx136447%_
                                               '7
                                               gx#module-context::t
                                               '#f))
                                         _%r136448%_)))
                              (declare (not safe))
                              (_%lp136445%_ _%super136450%_ __tmp145313))
                            (cons (let ((__tmp145314
                                         (##structure-ref
                                          _%ctx136447%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp145314))
                                  _%r136448%_)))))))
          (let* ((_%g136387136400%_
                  (lambda (_%g136388136397%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136388136397%_))))
                 (_%g136386136440%_
                  (lambda (_%g136388136403%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136388136403%_))
                        (let ((_%e136392136405%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136388136403%_))))
                          (let ((_%hd136391136408%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136392136405%_)))
                                (_%tl136390136410%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136392136405%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136390136410%_))
                                (let ((_%e136395136413%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136390136410%_))))
                                  (let ((_%hd136394136416%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136395136413%_)))
                                        (_%tl136393136418%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136395136413%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136393136418%_))
                                        ((lambda (_%L136421%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L136421%_))
                                               (let ((_%$e136434%_
                                                      (let ((__tmp145315
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp145315 _%L136421%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e136434%_
                                                     (values _%$e136434%_)
                                                     (let ()
                                                       (let ((_%marks136438%_
                                                              (##direct-structure-ref
                                                               _%L136421%_
                                                               '4
                                                               gx#syntax-quote::t
                                                               '#f)))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _%marks136438%_))
                     (let ()
                       (declare (not safe))
                       (_%generate-simple136379%_ _%L136421%_))
                     (let ()
                       (declare (not safe))
                       (_%generate-serialized136380%_
                        _%L136421%_
                        _%marks136438%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L136421%_))))
                                         _%hd136394136416%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g136387136400%_
                                           _%g136388136403%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g136387136400%_ _%g136388136403%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g136387136400%_ _%g136388136403%_))))))
            (declare (not safe))
            (_%g136386136440%_ _%stx136375%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self136306%_ _%stx136307%_)
        (let* ((_%g136309136326%_
                (lambda (_%g136310136323%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136310136323%_))))
               (_%g136308136371%_
                (lambda (_%g136310136329%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136310136329%_))
                      (let ((_%e136315136331%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136310136329%_))))
                        (let ((_%hd136314136334%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136315136331%_)))
                              (_%tl136313136336%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136315136331%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136313136336%_))
                              (let ((_%e136318136339%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136313136336%_))))
                                (let ((_%hd136317136342%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136318136339%_)))
                                      (_%tl136316136344%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136318136339%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136316136344%_))
                                      (let ((_%e136321136347%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136316136344%_))))
                                        (let ((_%hd136320136350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136321136347%_)))
                                              (_%tl136319136352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136321136347%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136319136352%_))
                                              ((lambda (_%L136355%_
                                                        _%L136356%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136356%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self136306%_ _%L136355%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136320136350%_
                                               _%hd136317136342%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g136309136326%_
                                                 _%g136310136329%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136309136326%_
                                         _%g136310136329%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136309136326%_ _%g136310136329%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136309136326%_ _%g136310136329%_))))))
          (declare (not safe))
          (_%g136308136371%_ _%stx136307%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self136255%_ _%stx136256%_)
        (let* ((_%g136258136268%_
                (lambda (_%g136259136265%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136259136265%_))))
               (_%g136257136303%_
                (lambda (_%g136259136271%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136259136271%_))
                      (let ((_%e136263136273%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136259136271%_))))
                        (let ((_%hd136262136276%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136263136273%_)))
                              (_%tl136261136278%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136263136273%_))))
                          ((lambda (_%L136281%_)
                             (let* ((_%c-body136295%_
                                     (map (lambda (_%g136290136292%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self136255%_
                                               _%g136290136292%_)))
                                          _%L136281%_))
                                    (_%c-body136300%_
                                     (let ((__tmp145316
                                            (lambda (_%$obj136297%_)
                                              (let ((__tmp145317
                                                     (let ()
                                                       (declare (not safe))
                                                       (eq? _%$obj136297%_
                                                            '#!void))))
                                                (declare (not safe))
                                                (not __tmp145317)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp145316
                                        _%c-body136295%_))))
                               (cons '%#begin _%c-body136300%_)))
                           _%tl136261136278%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136258136268%_ _%g136259136271%_))))))
          (declare (not safe))
          (_%g136257136303%_ _%stx136256%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self136160%_ _%stx136161%_)
        (let* ((_%g136163136173%_
                (lambda (_%g136164136170%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136164136170%_))))
               (_%g136162136252%_
                (lambda (_%g136164136176%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136164136176%_))
                      (let ((_%e136168136178%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136164136176%_))))
                        (let ((_%hd136167136181%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136168136178%_)))
                              (_%tl136166136183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136168136178%_))))
                          ((lambda (_%L136186%_)
                             (let* ((_%phi136196%_
                                     (let ((__tmp145318
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp145318 '1)))
                                    (_%block136198%_
                                     (let ((__tmp145319
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self136160%_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp145319
                                        _%phi136196%_)))
                                    (_%compiled136201%_
                                     (let ((__tmp145320
                                            (lambda ()
                                              (let ((__tmp145322
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%L136186%_))
                                                    (__tmp145321
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self136160%_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp145322
                                                 'state:
                                                 __tmp145321)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp145320
                                        gx#current-expander-phi
                                        _%phi136196%_))))
                               (let* ((_%g136204136214%_
                                       (lambda (_%g136205136211%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g136205136211%_))))
                                      (_%g136203136249%_
                                       (lambda (_%g136205136217%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%g136205136217%_))
                                             (let ((_%e136209136219%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%g136205136217%_))))
                                               (let ((_%hd136208136222%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e136209136219%_)))
                                                     (_%tl136207136224%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e136209136219%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd136208136222%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _%hd136208136222%_))
                                                         ((lambda (_%L136227%_)
                                                            (let ((_%c-body136244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_%$obj136241%_)
                                     (let ((__tmp145323
                                            (let ()
                                              (declare (not safe))
                                              (eq? _%$obj136241%_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp145323)))
                                   _%L136227%_)))
                      (if _%block136198%_
                          (let ()
                            (cons '%#begin-syntax
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'load-module
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons _%block136198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%c-body136244%_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _%c-body136244%_))
                              (let () '#!void)
                              (let ()
                                (cons '%#begin-syntax _%c-body136244%_))))))
                  _%tl136207136224%_)
                 (let ()
                   (declare (not safe))
                   (_%g136204136214%_ _%g136205136217%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g136204136214%_
                                                        _%g136205136217%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g136204136214%_
                                                _%g136205136217%_))))))
                                 (declare (not safe))
                                 (_%g136203136249%_ _%compiled136201%_))))
                           _%tl136166136183%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136163136173%_ _%g136164136176%_))))))
          (declare (not safe))
          (_%g136162136252%_ _%stx136161%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self136091%_ _%stx136092%_)
        (let ((__tmp145324
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self136091%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145324))
        (let* ((_%g136094136108%_
                (lambda (_%g136095136105%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136095136105%_))))
               (_%g136093136157%_
                (lambda (_%g136095136111%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136095136111%_))
                      (let ((_%e136100136113%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136095136111%_))))
                        (let ((_%hd136099136116%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136100136113%_)))
                              (_%tl136098136118%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136100136113%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136098136118%_))
                              (let ((_%e136103136121%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136098136118%_))))
                                (let ((_%hd136102136124%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136103136121%_)))
                                      (_%tl136101136126%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136103136121%_))))
                                  ((lambda (_%L136129%_ _%L136130%_)
                                     (let ((_%key136143%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L136130%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key136143%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx136092%_
                                              _%L136130%_
                                              _%key136143%_)))
                                       (let* ((_%ctx136145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L136130%_)))
                                              (_%code136148%_
                                               (let ((__tmp145325
                                                      (lambda ()
                                                        (let ((__tmp145326
                                                               (##structure-ref
                                                                _%ctx136145%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self136091%_
                                                           __tmp145326)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp145325
                                                  gx#current-expander-context
                                                  _%ctx136145%_)))
                                              (_%rt136150%_
                                               (let ((__tmp145327
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp145327
                                                  _%ctx136145%_)))
                                              (_%loader136152%_
                                               (if _%rt136150%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt136150%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid136154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L136130%_))))
                                         (let ((__tmp145328
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self136091%_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp145328))
                                         (cons '%#module
                                               (cons _%modid136154%_
                                                     (cons _%code136148%_
                                                           _%loader136152%_))))))
                                   _%tl136101136126%_
                                   _%hd136102136124%_)))
                              (let ()
                                (declare (not safe))
                                (_%g136094136108%_ _%g136095136111%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136094136108%_ _%g136095136111%_))))))
          (declare (not safe))
          (_%g136093136157%_ _%stx136092%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx136078%_ _%context-chain136079%_)
        (let _%lp136081%_ ((_%ctx136083%_ _%ctx136078%_) (_%path136084%_ '()))
          (let ((_%super136086%_
                 (##structure-ref _%ctx136083%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super136086%_ _%context-chain136079%_)
                (let ()
                  (let ((__tmp145329
                         (let ((__tmp145330
                                (car (##structure-ref
                                      _%ctx136083%_
                                      '7
                                      gx#module-context::t
                                      '#f))))
                           (declare (not safe))
                           (cons __tmp145330 _%path136084%_))))
                    (declare (not safe))
                    (cons '#f __tmp145329)))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super136086%_
                       'gx#module-context::t))
                    (let ()
                      (let ((__tmp145331
                             (cons (car (##structure-ref
                                         _%ctx136083%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%path136084%_)))
                        (declare (not safe))
                        (_%lp136081%_ _%super136086%_ __tmp145331)))
                    (let ()
                      (cons (let ((__tmp145332
                                   (##structure-ref
                                    _%ctx136083%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (make-symbol__1 '":" __tmp145332))
                            _%path136084%_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp136071%_ ((_%ctx136073%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r136074%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx136073%_ 'gx#module-context::t))
              (let ()
                (let ((__tmp145334
                       (##structure-ref
                        _%ctx136073%_
                        '3
                        gx#phi-context::t
                        '#f))
                      (__tmp145333 (cons _%ctx136073%_ _%r136074%_)))
                  (declare (not safe))
                  (_%lp136071%_ __tmp145334 __tmp145333)))
              (let () _%r136074%_)))))
    (define gxc#generate-meta-import%
      (lambda (_%self135834%_ _%stx135835%_)
        (letrec* ((_%context-chain135837%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-spec135838%_
                   (lambda (_%in136007%_)
                     (let* ((_%in136008136020%_ _%in136007%_)
                            (_%E136010136024%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in136008136020%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K136011136034%_
                             (lambda (_%phi136027%_
                                      _%name136028%_
                                      _%src-name136029%_
                                      _%src-phi136030%_
                                      _%src-key136031%_
                                      _%src-ctx136032%_)
                               (cons _%phi136027%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name136028%_))
                                           (cons _%src-phi136030%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name136029%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in136008136020%_
                              'gx#module-import::t))
                           (let ((_%e136012136037%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in136008136020%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e136012136037%_
                                    'gx#module-export::t))
                                 (let* ((_%e136015136040%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136012136037%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx136043%_ _%e136015136040%_)
                                        (_%e136016136045%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136012136037%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key136048%_ _%e136016136045%_)
                                        (_%e136017136050%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136012136037%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi136053%_ _%e136017136050%_)
                                        (_%e136018136055%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136012136037%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name136058%_ _%e136018136055%_)
                                        (_%e136013136060%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136008136020%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name136063%_ _%e136013136060%_)
                                        (_%e136014136065%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136008136020%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi136068%_ _%e136014136065%_))
                                   (declare (not safe))
                                   (_%K136011136034%_
                                    _%phi136068%_
                                    _%name136063%_
                                    _%src-name136058%_
                                    _%src-phi136053%_
                                    _%src-key136048%_
                                    _%src-ctx136043%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%E136010136024%_))))
                           (let ()
                             (declare (not safe))
                             (_%E136010136024%_))))))
                  (_%make-import-path135839%_
                   (lambda (_%ctx136005%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx136005%_
                        _%context-chain135837%_))))
                  (_%make-import-spec-in135840%_
                   (lambda (_%ctx136002%_ _%in136003%_)
                     (cons 'spec:
                           (cons (let ()
                                   (declare (not safe))
                                   (_%make-import-path135839%_ _%ctx136002%_))
                                 (reverse _%in136003%_))))))
          (let ((__tmp145335
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self135834%_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp145335))
          (let* ((_%g135842135852%_
                  (lambda (_%g135843135849%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135843135849%_))))
                 (_%g135841135999%_
                  (lambda (_%g135843135855%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135843135855%_))
                        (let ((_%e135847135857%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135843135855%_))))
                          (let ((_%hd135846135860%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135847135857%_)))
                                (_%tl135845135862%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135847135857%_))))
                            ((lambda (_%L135865%_)
                               (let _%lp135876%_ ((_%rest135878%_ _%L135865%_)
                                                  (_%current-src135879%_ '#f)
                                                  (_%current-in135880%_ '())
                                                  (_%r135881%_ '()))
                                 (let* ((_%rest135882135890%_ _%rest135878%_)
                                        (_%else135884135900%_
                                         (lambda ()
                                           (let ((_%r135898%_
                                                  (if _%current-src135879%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%make-import-spec-in135840%_
                                                               _%current-src135879%_
                                                               _%current-in135880%_))
                                                            _%r135881%_)
                                                      _%r135881%_)))
                                             (cons '%#import
                                                   (reverse _%r135898%_)))))
                                        (_%K135886135987%_
                                         (lambda (_%rest135903%_ _%in135904%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in135904%_
                                                  'gx#module-import::t))
                                               (let ()
                                                 (let* ((_%in135906135913%_
                                                         _%in135904%_)
                                                        (_%E135908135917%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%in135906135913%_
                            '((module-import (module-export src-ctx)))))
                   '#!void))
                (_%K135909135925%_
                 (lambda (_%src-ctx135920%_)
                   (if (eq? _%current-src135879%_ _%src-ctx135920%_)
                       (let ()
                         (let ((__tmp145336
                                (cons (let ()
                                        (declare (not safe))
                                        (_%make-import-spec135838%_
                                         _%in135904%_))
                                      _%current-in135880%_)))
                           (declare (not safe))
                           (_%lp135876%_
                            _%rest135903%_
                            _%current-src135879%_
                            __tmp145336
                            _%r135881%_)))
                       (if _%current-src135879%_
                           (let ()
                             (let ((__tmp145338
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%make-import-spec135838%_
                                             _%in135904%_))
                                          '()))
                                   (__tmp145337
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%make-import-spec-in135840%_
                                             _%current-src135879%_
                                             _%current-in135880%_))
                                          _%r135881%_)))
                               (declare (not safe))
                               (_%lp135876%_
                                _%rest135903%_
                                _%src-ctx135920%_
                                __tmp145338
                                __tmp145337)))
                           (let ()
                             (let ((__tmp145339
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%make-import-spec135838%_
                                             _%in135904%_))
                                          '())))
                               (declare (not safe))
                               (_%lp135876%_
                                _%rest135903%_
                                _%src-ctx135920%_
                                __tmp145339
                                _%r135881%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in135906135913%_
                                                          'gx#module-import::t))
                                                       (let ((_%e135910135928%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%in135906135913%_
                         '1
                         '#f
                         '#f))))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        _%e135910135928%_
                        'gx#module-export::t))
                     (let* ((_%e135911135931%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%e135910135928%_
                                '1
                                '#f
                                '#f)))
                            (_%src-ctx135934%_ _%e135911135931%_))
                       (declare (not safe))
                       (_%K135909135925%_ _%src-ctx135934%_))
                     (let () (declare (not safe)) (_%E135908135917%_))))
               (let () (declare (not safe)) (_%E135908135917%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in135904%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (let* ((_%phi135937%_
                                                             (##direct-structure-ref
                                                              _%in135904%_
                                                              '2
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src135939%_
                                                             (##direct-structure-ref
                                                              _%in135904%_
                                                              '1
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src-in135979%_
                                                             (let* ((_%g135940135949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_%make-import-path135839%_ _%src135939%_)))
                            (_%E135943135953%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g135940135949%_
                                        '([path])
                                        '(path)))
                               '#!void)))
                       (let ((_%K135945135969%_
                              (lambda (_%path135967%_) _%path135967%_))
                             (_%K135944135959%_
                              (lambda (_%path135957%_)
                                (cons 'in: _%path135957%_))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g135940135949%_))
                             (let ((_%tl135947135974%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g135940135949%_)))
                                   (_%hd135946135972%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g135940135949%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl135947135974%_))
                                   (let ((_%path135977%_ _%hd135946135972%_))
                                     (declare (not safe))
                                     (_%K135945135969%_ _%path135977%_))
                                   (let ((_%path135962%_ _%g135940135949%_))
                                     (declare (not safe))
                                     (_%K135944135959%_ _%path135962%_))))
                             (let ((_%path135962%_ _%g135940135949%_))
                               (declare (not safe))
                               (_%K135944135959%_ _%path135962%_))))))
                    (_%r135981%_
                     (if _%current-src135879%_
                         (cons (let ()
                                 (declare (not safe))
                                 (_%make-import-spec-in135840%_
                                  _%current-src135879%_
                                  _%current-in135880%_))
                               _%r135881%_)
                         _%r135881%_)))
               (let ((__tmp145340
                      (cons (if (fxzero? _%phi135937%_)
                                _%src-in135979%_
                                (cons 'phi:
                                      (cons _%phi135937%_
                                            (cons _%src-in135979%_ '()))))
                            _%r135981%_)))
                 (declare (not safe))
                 (_%lp135876%_ _%rest135903%_ '#f '() __tmp145340))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in135904%_
                                                          'gx#module-context::t))
                                                       (let ()
                                                         (let* ((_%r135985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if _%current-src135879%_
                             (cons (let ()
                                     (declare (not safe))
                                     (_%make-import-spec-in135840%_
                                      _%current-src135879%_
                                      _%current-in135880%_))
                                   _%r135881%_)
                             _%r135881%_))
                        (__tmp145341
                         (cons (cons 'runtime:
                                     (let ()
                                       (declare (not safe))
                                       (_%make-import-path135839%_
                                        _%in135904%_)))
                               _%r135985%_)))
                   (declare (not safe))
                   (_%lp135876%_ _%rest135903%_ '#f '() __tmp145341)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135882135890%_))
                                       (let ((_%hd135887135990%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135882135890%_)))
                                             (_%tl135888135992%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135882135890%_))))
                                         (let* ((_%in135995%_
                                                 _%hd135887135990%_)
                                                (_%rest135997%_
                                                 _%tl135888135992%_))
                                           (declare (not safe))
                                           (_%K135886135987%_
                                            _%rest135997%_
                                            _%in135995%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else135884135900%_))))))
                             _%tl135845135862%_)))
                        (let ()
                          (declare (not safe))
                          (_%g135842135852%_ _%g135843135855%_))))))
            (declare (not safe))
            (_%g135841135999%_ _%stx135835%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self135644%_ _%stx135645%_)
        (letrec* ((_%context-chain135647%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-path135648%_
                   (lambda (_%ctx135832%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx135832%_
                        _%context-chain135647%_)))))
          (let* ((_%g135650135660%_
                  (lambda (_%g135651135657%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135651135657%_))))
                 (_%g135649135829%_
                  (lambda (_%g135651135663%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135651135663%_))
                        (let ((_%e135655135665%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135651135663%_))))
                          (let ((_%hd135654135668%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135655135665%_)))
                                (_%tl135653135670%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135655135665%_))))
                            ((lambda (_%L135673%_)
                               (let _%lp135684%_ ((_%rest135686%_ _%L135673%_)
                                                  (_%r135687%_ '()))
                                 (let* ((_%rest135688135696%_ _%rest135686%_)
                                        (_%else135690135704%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r135687%_))))
                                        (_%K135692135817%_
                                         (lambda (_%rest135707%_ _%out135708%_)
                                           (let* ((_%out135709135722%_
                                                   _%out135708%_)
                                                  (_%E135712135726%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out135709135722%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K135716135796%_
                                                    (lambda (_%name135792%_
                                                             _%phi135793%_
                                                             _%key135794%_)
                                                      (let ((__tmp145342
                                                             (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%phi135793%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%key135794%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-identifier-key
                                                      _%name135792%_))
                                                   '()))))
                           _%r135687%_)))
                (declare (not safe))
                (_%lp135684%_ _%rest135707%_ __tmp145342))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K135713135776%_
                                                    (lambda (_%phi135730%_
                                                             _%src135731%_)
                                                      (let* ((_%out135771%_
                                                              (if _%src135731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g135732135741%_
                                              (let ()
                                                (declare (not safe))
                                                (_%make-import-path135648%_
                                                 _%src135731%_)))
                                             (_%E135735135745%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g135732135741%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K135737135761%_
                                               (lambda (_%path135759%_)
                                                 _%path135759%_))
                                              (_%K135736135751%_
                                               (lambda (_%path135749%_)
                                                 (cons 'in: _%path135749%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g135732135741%_))
                                              (let ((_%tl135739135766%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g135732135741%_)))
                                                    (_%hd135738135764%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g135732135741%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl135739135766%_))
                                                    (let ((_%path135769%_
                                                           _%hd135738135764%_))
                                                      (declare (not safe))
                                                      (_%K135737135761%_
                                                       _%path135769%_))
                                                    (let ((_%path135754%_
                                                           _%g135732135741%_))
                                                      (declare (not safe))
                                                      (_%K135736135751%_
                                                       _%path135754%_))))
                                              (let ((_%path135754%_
                                                     _%g135732135741%_))
                                                (declare (not safe))
                                                (_%K135736135751%_
                                                 _%path135754%_)))))
                                      '()))
                          '#t))
                     (_%out135773%_
                      (if (fxzero? _%phi135730%_)
                          _%out135771%_
                          (cons 'phi:
                                (cons _%phi135730%_
                                      (cons _%out135771%_ '()))))))
                (let ((__tmp145343 (cons _%out135773%_ _%r135687%_)))
                  (declare (not safe))
                  (_%lp135684%_ _%rest135707%_ __tmp145343))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match135711135789%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out135709135722%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e135714135779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135709135722%_
                               '1
                               '#f
                               '#f)))
                           (_%e135715135784%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135709135722%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src135782%_ _%e135714135779%_)
                            (_%phi135787%_ _%e135715135784%_))
                        (let ()
                          (declare (not safe))
                          (_%K135713135776%_ _%phi135787%_ _%src135782%_))))
                    (let () (declare (not safe)) (_%E135712135726%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out135709135722%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e135717135799%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out135709135722%_
                        '1
                        '#f
                        '#f)))
                    (_%e135718135802%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135709135722%_
                        '2
                        '#f
                        '#f)))
                    (_%e135719135807%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135709135722%_
                        '3
                        '#f
                        '#f)))
                    (_%e135720135812%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135709135722%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key135805%_ _%e135718135802%_)
                     (_%phi135810%_ _%e135719135807%_)
                     (_%name135815%_ _%e135720135812%_))
                 (let ()
                   (declare (not safe))
                   (_%K135716135796%_
                    _%name135815%_
                    _%phi135810%_
                    _%key135805%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%try-match135711135789%_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135688135696%_))
                                       (let ((_%hd135693135820%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135688135696%_)))
                                             (_%tl135694135822%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135688135696%_))))
                                         (let* ((_%out135825%_
                                                 _%hd135693135820%_)
                                                (_%rest135827%_
                                                 _%tl135694135822%_))
                                           (declare (not safe))
                                           (_%K135692135817%_
                                            _%rest135827%_
                                            _%out135825%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else135690135704%_))))))
                             _%tl135653135670%_)))
                        (let ()
                          (declare (not safe))
                          (_%g135650135660%_ _%g135651135663%_))))))
            (declare (not safe))
            (_%g135649135829%_ _%stx135645%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self135605%_ _%stx135606%_)
        (let ((__tmp145344
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135605%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145344))
        (let* ((_%g135608135618%_
                (lambda (_%g135609135615%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135609135615%_))))
               (_%g135607135641%_
                (lambda (_%g135609135621%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135609135621%_))
                      (let ((_%e135613135623%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135609135621%_))))
                        (let ((_%hd135612135626%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135613135623%_)))
                              (_%tl135611135628%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135613135623%_))))
                          ((lambda (_%L135631%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L135631%_)))
                           _%tl135611135628%_)))
                      (let ()
                        (declare (not safe))
                        (_%g135608135618%_ _%g135609135621%_))))))
          (declare (not safe))
          (_%g135607135641%_ _%stx135606%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self135476%_ _%stx135477%_)
        (letrec ((_%generate1135479%_
                  (lambda (_%id135600%_ _%eid135601%_)
                    (let ((_%eid135603%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid135601%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid135603%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx135477%_
                             _%eid135603%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id135600%_))
                            (cons _%eid135603%_ '()))))))
          (let* ((_%g135481135509%_
                  (lambda (_%g135482135506%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135482135506%_))))
                 (_%g135480135597%_
                  (lambda (_%g135482135512%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135482135512%_))
                        (let ((_%e135487135514%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135482135512%_))))
                          (let ((_%hd135486135517%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135487135514%_)))
                                (_%tl135485135519%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135487135514%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl135485135519%_))
                                (let ((_g145345_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl135485135519%_
                                          '0))))
                                  (begin
                                    (let ((_g145346_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145345_)
                                                 (##vector-length _g145345_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145346_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145346_)))
                                    (let ((_%target135488135522%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145345_ 0)))
                                          (_%tl135490135524%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145345_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135490135524%_))
                                          (letrec ((_%loop135491135527%_
                                                    (lambda (_%hd135489135530%_
                                                             _%eid135495135532%_
                                                             _%id135496135534%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd135489135530%_))
                                                          (let ((_%e135492135537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd135489135530%_))))
                    (let ((_%lp-hd135493135540%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135492135537%_)))
                          (_%lp-tl135494135542%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135492135537%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd135493135540%_))
                          (let ((_%e135501135545%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd135493135540%_))))
                            (let ((_%hd135500135548%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135501135545%_)))
                                  (_%tl135499135550%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135501135545%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl135499135550%_))
                                  (let ((_%e135504135553%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl135499135550%_))))
                                    (let ((_%hd135503135556%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135504135553%_)))
                                          (_%tl135502135558%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135504135553%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135502135558%_))
                                          (let ((__tmp145348
                                                 (cons _%hd135503135556%_
                                                       _%eid135495135532%_))
                                                (__tmp145347
                                                 (cons _%hd135500135548%_
                                                       _%id135496135534%_)))
                                            (declare (not safe))
                                            (_%loop135491135527%_
                                             _%lp-tl135494135542%_
                                             __tmp145348
                                             __tmp145347))
                                          (let ()
                                            (declare (not safe))
                                            (_%g135481135509%_
                                             _%g135482135512%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g135481135509%_ _%g135482135512%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g135481135509%_ _%g135482135512%_)))))
                  (let ((_%eid135497135561%_ (reverse _%eid135495135532%_))
                        (_%id135498135563%_ (reverse _%id135496135534%_)))
                    ((lambda (_%L135566%_ _%L135567%_)
                       (cons '%#extern
                             (map _%generate1135479%_
                                  (let ((__tmp145349
                                         (lambda (_%g135582135585%_
                                                  _%g135583135587%_)
                                           (cons _%g135582135585%_
                                                 _%g135583135587%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145349 '() _%L135567%_))
                                  (let ((__tmp145350
                                         (lambda (_%g135589135592%_
                                                  _%g135590135594%_)
                                           (cons _%g135589135592%_
                                                 _%g135590135594%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145350 '() _%L135566%_)))))
                     _%eid135497135561%_
                     _%id135498135563%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop135491135527%_
                                               _%target135488135522%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g135481135509%_
                                             _%g135482135512%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135481135509%_ _%g135482135512%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135481135509%_ _%g135482135512%_))))))
            (declare (not safe))
            (_%g135480135597%_ _%stx135477%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self135266%_ _%stx135267%_)
        (letrec ((_%generate1135269%_
                  (lambda (_%id135471%_)
                    (let ((_%eid135473%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id135471%_)))
                          (_%ident135474%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id135471%_))))
                      (cons '%#define-runtime
                            (cons _%ident135474%_ (cons _%eid135473%_ '()))))))
                 (_%generate*135270%_
                  (lambda (_%all135439%_)
                    (let* ((_%all135440135448%_ _%all135439%_)
                           (_%else135442135456%_
                            (lambda () (cons '%#begin _%all135439%_)))
                           (_%K135444135461%_
                            (lambda (_%one135459%_) _%one135459%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all135440135448%_))
                          (let ((_%hd135445135464%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all135440135448%_)))
                                (_%tl135446135466%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all135440135448%_))))
                            (let ((_%one135469%_ _%hd135445135464%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl135446135466%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K135444135461%_ _%one135469%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%else135442135456%_)))))
                          (let ()
                            (declare (not safe))
                            (_%else135442135456%_)))))))
          (let* ((_%g135272135289%_
                  (lambda (_%g135273135286%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135273135286%_))))
                 (_%g135271135436%_
                  (lambda (_%g135273135292%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135273135292%_))
                        (let ((_%e135278135294%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135273135292%_))))
                          (let ((_%hd135277135297%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135278135294%_)))
                                (_%tl135276135299%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135278135294%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135276135299%_))
                                (let ((_%e135281135302%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135276135299%_))))
                                  (let ((_%hd135280135305%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135281135302%_)))
                                        (_%tl135279135307%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135281135302%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135279135307%_))
                                        (let ((_%e135284135310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135279135307%_))))
                                          (let ((_%hd135283135313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135284135310%_)))
                                                (_%tl135282135315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135284135310%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135282135315%_))
                                                ((lambda (_%L135318%_
                                                          _%L135319%_)
                                                   (let _%lp135335%_ ((_%rest135337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L135319%_)
                              (_%r135338%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx144966144967%_
                                                             _%rest135337%_)
                                                            (_%g135343135360%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx144966144967%_)))))
               (let ((_%__kont144968144969%_
                      (lambda (_%L135423%_)
                        (let ()
                          (declare (not safe))
                          (_%lp135335%_ _%L135423%_ _%r135338%_))))
                     (_%__kont144970144971%_
                      (lambda (_%L135396%_ _%L135397%_)
                        (let ((__tmp145351
                               (cons (let ()
                                       (declare (not safe))
                                       (_%generate1135269%_ _%L135397%_))
                                     _%r135338%_)))
                          (declare (not safe))
                          (_%lp135335%_ _%L135396%_ __tmp145351))))
                     (_%__kont144972144973%_
                      (lambda (_%L135372%_)
                        (let ((__tmp145352
                               (let ((__tmp145353
                                      (cons (let ()
                                              (declare (not safe))
                                              (_%generate1135269%_
                                               _%L135372%_))
                                            '())))
                                 (declare (not safe))
                                 (__foldl1 cons __tmp145353 _%r135338%_))))
                          (declare (not safe))
                          (_%generate*135270%_ __tmp145352))))
                     (_%__kont144974144975%_
                      (lambda ()
                        (let ((__tmp145354 (reverse _%r135338%_)))
                          (declare (not safe))
                          (_%generate*135270%_ __tmp145354)))))
                 (let ((_%g135341135383%_
                        (lambda ()
                          (let ((_%L135372%_ _%__stx144966144967%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L135372%_))
                                (_%__kont144972144973%_ _%L135372%_)
                                (_%__kont144974144975%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx144966144967%_))
                       (let ((_%e135348135412%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx144966144967%_))))
                         (let ((_%tl135346135417%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e135348135412%_)))
                               (_%hd135347135415%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e135348135412%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd135347135415%_))
                               (let ((_%e135349135420%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd135347135415%_))))
                                 (if (equal? _%e135349135420%_ '#f)
                                     (_%__kont144968144969%_
                                      _%tl135346135417%_)
                                     (_%__kont144970144971%_
                                      _%tl135346135417%_
                                      _%hd135347135415%_)))
                               (_%__kont144970144971%_
                                _%tl135346135417%_
                                _%hd135347135415%_))))
                       (let () (declare (not safe)) (_%g135341135383%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd135283135313%_
                                                 _%hd135280135305%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g135272135289%_
                                                   _%g135273135292%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g135272135289%_
                                           _%g135273135292%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135272135289%_ _%g135273135292%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135272135289%_ _%g135273135292%_))))))
            (declare (not safe))
            (_%g135271135436%_ _%stx135267%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self135163%_ _%stx135164%_)
        (let* ((_%g135166135183%_
                (lambda (_%g135167135180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135167135180%_))))
               (_%g135165135263%_
                (lambda (_%g135167135186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135167135186%_))
                      (let ((_%e135172135188%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135167135186%_))))
                        (let ((_%hd135171135191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135172135188%_)))
                              (_%tl135170135193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135172135188%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135170135193%_))
                              (let ((_%e135175135196%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135170135193%_))))
                                (let ((_%hd135174135199%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135175135196%_)))
                                      (_%tl135173135201%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135175135196%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135173135201%_))
                                      (let ((_%e135178135204%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135173135201%_))))
                                        (let ((_%hd135177135207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135178135204%_)))
                                              (_%tl135176135209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135178135204%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135176135209%_))
                                              ((lambda (_%L135212%_
                                                        _%L135213%_)
                                                 (let* ((_%eid135228%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L135213%_)))
                                                        (_%phi135230%_
                                                         (let ((__tmp145355
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp145355 '1)))
                (_%block135232%_
                 (let ((__tmp145356
                        (let ()
                          (declare (not safe))
                          (slot-ref__0 _%self135163%_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp145356 _%phi135230%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g135235135242%_
                                                           (lambda (_%g135236135239%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g135236135239%_))))
                  (_%g135234135260%_
                   (lambda (_%g135236135245%_)
                     ((lambda (_%L135247%_)
                        (let ()
                          (let ((__tmp145358
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _%self135163%_ 'state)))
                                (__tmp145357
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime))
                                       (cons _%L135247%_
                                             (cons _%L135212%_ '())))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp145358
                             _%phi135230%_
                             __tmp145357))))
                      _%g135236135245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%g135234135260%_
                                                      _%eid135228%_))
                                                   (if _%block135232%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block135232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%L135213%_))
                                             (cons _%eid135228%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135213%_))
                           (cons _%eid135228%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135177135207%_
                                               _%hd135174135199%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135166135183%_
                                                 _%g135167135186%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135166135183%_
                                         _%g135167135186%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135166135183%_ _%g135167135186%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135166135183%_ _%g135167135186%_))))))
          (declare (not safe))
          (_%g135165135263%_ _%stx135164%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self135095%_ _%stx135096%_)
        (let* ((_%g135098135115%_
                (lambda (_%g135099135112%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135099135112%_))))
               (_%g135097135160%_
                (lambda (_%g135099135118%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135099135118%_))
                      (let ((_%e135104135120%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135099135118%_))))
                        (let ((_%hd135103135123%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135104135120%_)))
                              (_%tl135102135125%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135104135120%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135102135125%_))
                              (let ((_%e135107135128%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135102135125%_))))
                                (let ((_%hd135106135131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135107135128%_)))
                                      (_%tl135105135133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135107135128%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135105135133%_))
                                      (let ((_%e135110135136%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135105135133%_))))
                                        (let ((_%hd135109135139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135110135136%_)))
                                              (_%tl135108135141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135110135136%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135108135141%_))
                                              ((lambda (_%L135144%_
                                                        _%L135145%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%L135145%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135144%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135109135139%_
                                               _%hd135106135131%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135098135115%_
                                                 _%g135099135118%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135098135115%_
                                         _%g135099135118%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135098135115%_ _%g135099135118%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135098135115%_ _%g135099135118%_))))))
          (declare (not safe))
          (_%g135097135160%_ _%stx135096%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self135092%_ _%stx135093%_)
        (let ((__tmp145360
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135092%_ 'state)))
              (__tmp145359
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp145360 __tmp145359 _%stx135093%_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _%self135092%_ _%stx135093%_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self135089%_ _%stx135090%_)
        (let ((__tmp145362
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135089%_ 'state)))
              (__tmp145361
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp145362 __tmp145361 _%stx135090%_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp145364 (list)) (__tmp145363 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp145364
         '(src n open blocks)
         __tmp145363
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args135086%_
        (apply make-instance gxc#meta-state::t _%$args135086%_)))
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
      (lambda (_%self135072%_ _%ctx135073%_)
        (let ()
          (let ((_%self135076%_ _%self135072%_))
            (let ()
              (if (let ((__tmp145365
                         (let ()
                           (declare (not safe))
                           (##structure-length _%self135076%_))))
                    (declare (not safe))
                    (##fx< '4 __tmp145365))
                  (begin
                    (let ((__tmp145366
                           (let ((__tmp145367
                                  (##structure-ref
                                   _%ctx135073%_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#module-id->path-string __tmp145367))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self135076%_
                       __tmp145366
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self135076%_
                       '1
                       '2
                       '#f
                       '#f))
                    (let ((__tmp145368
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self135076%_
                       __tmp145368
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self135076%_
                       '()
                       '4
                       '#f
                       '#f))
                    '#!void)
                  (let ((__tmp145369
                         (let ()
                           (declare (not safe))
                           (##vector-length _%self135076%_))))
                    (declare (not safe))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self135076%_
                           '4
                           __tmp145369))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp145371 (list)) (__tmp145370 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp145371
         '(ctx phi n code)
         __tmp145370
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args134947%_
        (apply make-instance gxc#meta-state-block::t _%$args134947%_)))
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
      (lambda (_%state134906%_ _%phi134907%_)
        (let* ((_%state134908134916%_ _%state134906%_)
               (_%E134910134920%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state134908134916%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K134911134929%_
                (lambda (_%open134923%_ _%n134924%_ _%src134925%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open134923%_ _%phi134907%_))
                      '#f
                      (let ((_%block-ref134927%_
                             (let ((__tmp145372 (number->string _%n134924%_)))
                               (declare (not safe))
                               (##string-append
                                _%src134925%_
                                '"~"
                                __tmp145372))))
                        (##structure-set!
                         _%state134906%_
                         (let () (declare (not safe)) (##fx+ _%n134924%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp145373
                               (let ((__tmp145374
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp145374
                                  _%phi134907%_
                                  _%n134924%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open134923%_ _%phi134907%_ __tmp145373))
                        _%block-ref134927%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state134908134916%_
                 'gxc#meta-state::t))
              (let* ((_%e134912134932%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134908134916%_
                         '1
                         '#f
                         '#f)))
                     (_%src134935%_ _%e134912134932%_)
                     (_%e134913134937%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134908134916%_
                         '2
                         '#f
                         '#f)))
                     (_%n134940%_ _%e134913134937%_)
                     (_%e134914134942%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134908134916%_
                         '3
                         '#f
                         '#f)))
                     (_%open134945%_ _%e134914134942%_))
                (declare (not safe))
                (_%K134911134929%_ _%open134945%_ _%n134940%_ _%src134935%_))
              (let () (declare (not safe)) (_%E134910134920%_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state134900%_ _%phi134901%_ _%stx134902%_)
        (let ((_%block134904%_
               (let ((__tmp145375
                      (##structure-ref
                       _%state134900%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp145375 _%phi134901%_))))
          (##structure-set!
           _%block134904%_
           (cons _%stx134902%_
                 (##structure-ref
                  _%block134904%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state134894%_)
        (##structure-set!
         _%state134894%_
         (let ((__tmp145378
                (lambda (_%_134896%_ _%block134897%_ _%r134898%_)
                  (cons _%block134897%_ _%r134898%_)))
               (__tmp145377
                (##structure-ref _%state134894%_ '4 gxc#meta-state::t '#f))
               (__tmp145376
                (##structure-ref _%state134894%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp145378 __tmp145377 __tmp145376))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state134894%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state134846%_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _%state134846%_))
        (let ((__tmp145380
               (lambda (_%block134848%_ _%r134849%_)
                 (let* ((_%block134850134859%_ _%block134848%_)
                        (_%E134852134863%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block134850134859%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K134853134871%_
                         (lambda (_%code134866%_
                                  _%n134867%_
                                  _%phi134868%_
                                  _%ctx134869%_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%code134866%_))
                               _%r134849%_
                               (cons (cons _%ctx134869%_
                                           (cons _%phi134868%_
                                                 (cons _%n134867%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code134866%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r134849%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block134850134859%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e134854134874%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134850134859%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx134877%_ _%e134854134874%_)
                              (_%e134855134879%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134850134859%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi134882%_ _%e134855134879%_)
                              (_%e134856134884%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134850134859%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n134887%_ _%e134856134884%_)
                              (_%e134857134889%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134850134859%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code134892%_ _%e134857134889%_))
                         (declare (not safe))
                         (_%K134853134871%_
                          _%code134892%_
                          _%n134887%_
                          _%phi134882%_
                          _%ctx134877%_))
                       (let () (declare (not safe)) (_%E134852134863%_))))))
              (__tmp145379
               (##structure-ref _%state134846%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp145380 '() __tmp145379))))
    (define gxc#collect-expression-refs
      (lambda (_%stx134842%_)
        (let ((_%ht134844%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs
             _%stx134842%_
             'table:
             _%ht134844%_))
          _%ht134844%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self134785%_ _%stx134786%_)
        (let* ((_%g134788134801%_
                (lambda (_%g134789134798%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134789134798%_))))
               (_%g134787134839%_
                (lambda (_%g134789134804%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134789134804%_))
                      (let ((_%e134793134806%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134789134804%_))))
                        (let ((_%hd134792134809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134793134806%_)))
                              (_%tl134791134811%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134793134806%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134791134811%_))
                              (let ((_%e134796134814%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134791134811%_))))
                                (let ((_%hd134795134817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134796134814%_)))
                                      (_%tl134794134819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134796134814%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134794134819%_))
                                      ((lambda (_%L134822%_)
                                         (let* ((_%bind134834%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L134822%_)))
                                                (_%eid134836%_
                                                 (if _%bind134834%_
                                                     (##structure-ref
                                                      _%bind134834%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L134822%_)))))
                                           (let ((__tmp145381
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _%self134785%_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp145381
                                              _%eid134836%_
                                              _%eid134836%_))))
                                       _%hd134795134817%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g134788134801%_
                                         _%g134789134804%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134788134801%_ _%g134789134804%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134788134801%_ _%g134789134804%_))))))
          (declare (not safe))
          (_%g134787134839%_ _%stx134786%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self134712%_ _%stx134713%_)
        (let* ((_%g134715134732%_
                (lambda (_%g134716134729%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134716134729%_))))
               (_%g134714134782%_
                (lambda (_%g134716134735%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134716134735%_))
                      (let ((_%e134721134737%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134716134735%_))))
                        (let ((_%hd134720134740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134721134737%_)))
                              (_%tl134719134742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134721134737%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134719134742%_))
                              (let ((_%e134724134745%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134719134742%_))))
                                (let ((_%hd134723134748%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134724134745%_)))
                                      (_%tl134722134750%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134724134745%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134722134750%_))
                                      (let ((_%e134727134753%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134722134750%_))))
                                        (let ((_%hd134726134756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134727134753%_)))
                                              (_%tl134725134758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134727134753%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134725134758%_))
                                              ((lambda (_%L134761%_
                                                        _%L134762%_)
                                                 (let* ((_%bind134777%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L134762%_)))
                                                        (_%eid134779%_
                                                         (if _%bind134777%_
                                                             (##structure-ref
                                                              _%bind134777%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L134762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp145382
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self134712%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp145382
                                                      _%eid134779%_
                                                      _%eid134779%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self134712%_
                                                      _%L134761%_))))
                                               _%hd134726134756%_
                                               _%hd134723134748%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g134715134732%_
                                                 _%g134716134735%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134715134732%_
                                         _%g134716134735%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134715134732%_ _%g134716134735%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134715134732%_ _%g134716134735%_))))))
          (declare (not safe))
          (_%g134714134782%_ _%stx134713%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self134669%_ _%stx134670%_)
        (let* ((_%g134672134682%_
                (lambda (_%g134673134679%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134673134679%_))))
               (_%g134671134709%_
                (lambda (_%g134673134685%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134673134685%_))
                      (let ((_%e134677134687%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134673134685%_))))
                        (let ((_%hd134676134690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134677134687%_)))
                              (_%tl134675134692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134677134687%_))))
                          ((lambda (_%L134695%_)
                             (let ((__tmp145383
                                    (lambda (_%g134704134706%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self134669%_
                                         _%g134704134706%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp145383 _%L134695%_)))
                           _%tl134675134692%_)))
                      (let ()
                        (declare (not safe))
                        (_%g134672134682%_ _%g134673134685%_))))))
          (declare (not safe))
          (_%g134671134709%_ _%stx134670%_))))
    (define gxc#count-values-single%
      (lambda (_%self134666%_ _%stx134667%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self134532%_ _%stx134533%_)
        (let* ((_%__stx144996144997%_ _%stx134533%_)
               (_%g134536134565%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144996144997%_)))))
          (let ((_%__kont144998144999%_
                 (lambda (_%L134633%_ _%L134634%_)
                   (length (let ((__tmp145384
                                  (lambda (_%g134655134658%_ _%g134656134660%_)
                                    (cons _%g134655134658%_
                                          _%g134656134660%_))))
                             (declare (not safe))
                             (__foldr1 __tmp145384 '() _%L134633%_)))))
                (_%__kont145002145003%_ (lambda () '#f)))
            (let ((_%__match145041145042%_
                   (lambda (_%e134542134577%_
                            _%hd134541134580%_
                            _%tl134540134582%_
                            _%e134545134585%_
                            _%hd134544134588%_
                            _%tl134543134590%_
                            _%e134548134593%_
                            _%hd134547134596%_
                            _%tl134546134598%_
                            _%e134551134601%_
                            _%hd134550134604%_
                            _%tl134549134606%_
                            _%__splice145000145001%_
                            _%target134552134609%_
                            _%tl134554134611%_)
                     (letrec ((_%loop134555134614%_
                               (lambda (_%hd134553134617%_
                                        _%rand134559134619%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd134553134617%_))
                                     (let ((_%e134556134622%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd134553134617%_))))
                                       (let ((_%lp-tl134558134627%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e134556134622%_)))
                                             (_%lp-hd134557134625%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e134556134622%_))))
                                         (let ((__tmp145385
                                                (cons _%lp-hd134557134625%_
                                                      _%rand134559134619%_)))
                                           (declare (not safe))
                                           (_%loop134555134614%_
                                            _%lp-tl134558134627%_
                                            __tmp145385))))
                                     (let ((_%rand134560134630%_
                                            (reverse _%rand134559134619%_)))
                                       (let ((_%L134633%_ _%rand134560134630%_)
                                             (_%L134634%_ _%hd134550134604%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L134634%_
                                                'values))
                                             (_%__kont144998144999%_
                                              _%L134633%_
                                              _%L134634%_)
                                             (_%__kont145002145003%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop134555134614%_ _%target134552134609%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144996144997%_))
                  (let ((_%e134542134577%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144996144997%_))))
                    (let ((_%tl134540134582%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e134542134577%_)))
                          (_%hd134541134580%_
                           (let ()
                             (declare (not safe))
                             (##car _%e134542134577%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl134540134582%_))
                          (let ((_%e134545134585%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl134540134582%_))))
                            (let ((_%tl134543134590%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e134545134585%_)))
                                  (_%hd134544134588%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e134545134585%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd134544134588%_))
                                  (let ((_%e134548134593%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd134544134588%_))))
                                    (let ((_%tl134546134598%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134548134593%_)))
                                          (_%hd134547134596%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134548134593%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd134547134596%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd134547134596%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl134546134598%_))
                                                  (let ((_%e134551134601%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl134546134598%_))))
                                                    (let ((_%tl134549134606%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e134551134601%_)))
                                                          (_%hd134550134604%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e134551134601%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl134549134606%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl134543134590%_))
                      (let ((_%__splice145000145001%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl134543134590%_
                                '0))))
                        (let ((_%tl134554134611%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145000145001%_ '1)))
                              (_%target134552134609%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145000145001%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl134554134611%_))
                              (_%__match145041145042%_
                               _%e134542134577%_
                               _%hd134541134580%_
                               _%tl134540134582%_
                               _%e134545134585%_
                               _%hd134544134588%_
                               _%tl134543134590%_
                               _%e134548134593%_
                               _%hd134547134596%_
                               _%tl134546134598%_
                               _%e134551134601%_
                               _%hd134550134604%_
                               _%tl134549134606%_
                               _%__splice145000145001%_
                               _%target134552134609%_
                               _%tl134554134611%_)
                              (_%__kont145002145003%_))))
                      (_%__kont145002145003%_))
                  (_%__kont145002145003%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145002145003%_))
                                              (_%__kont145002145003%_))
                                          (_%__kont145002145003%_))))
                                  (_%__kont145002145003%_))))
                          (_%__kont145002145003%_))))
                  (_%__kont145002145003%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self134435%_ _%stx134436%_)
        (let* ((_%g134438134459%_
                (lambda (_%g134439134456%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134439134456%_))))
               (_%g134437134529%_
                (lambda (_%g134439134462%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134439134462%_))
                      (let ((_%e134445134464%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134439134462%_))))
                        (let ((_%hd134444134467%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134445134464%_)))
                              (_%tl134443134469%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134445134464%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134443134469%_))
                              (let ((_%e134448134472%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134443134469%_))))
                                (let ((_%hd134447134475%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134448134472%_)))
                                      (_%tl134446134477%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134448134472%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134446134477%_))
                                      (let ((_%e134451134480%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134446134477%_))))
                                        (let ((_%hd134450134483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134451134480%_)))
                                              (_%tl134449134485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134451134480%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl134449134485%_))
                                              (let ((_%e134454134488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl134449134485%_))))
                                                (let ((_%hd134453134491%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e134454134488%_)))
                                                      (_%tl134452134493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e134454134488%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl134452134493%_))
                                                      ((lambda (_%L134496%_
                                                                _%L134497%_
                                                                _%L134498%_)
                                                         (let ((_%c1134515134517%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self134435%_ _%L134497%_))))
                   (if _%c1134515134517%_
                       (let* ((_%c1134520%_ _%c1134515134517%_)
                              (_%c2134521134523%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self134435%_
                                  _%L134496%_))))
                         (if _%c2134521134523%_
                             (let ((_%c2134526%_ _%c2134521134523%_))
                               (if (fx= _%c1134520%_ _%c2134526%_)
                                   _%c1134520%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd134453134491%_
               _%hd134450134483%_
               _%hd134447134475%_)
              (let ()
                (declare (not safe))
                (_%g134438134459%_ _%g134439134462%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g134438134459%_
                                                 _%g134439134462%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134438134459%_
                                         _%g134439134462%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134438134459%_ _%g134439134462%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134438134459%_ _%g134439134462%_))))))
          (declare (not safe))
          (_%g134437134529%_ _%stx134436%_))))))
