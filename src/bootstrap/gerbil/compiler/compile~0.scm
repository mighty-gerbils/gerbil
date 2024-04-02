(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712093477)
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
        (letrec ((_%hash-e143754%_
                  (lambda (_%id143756%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id143756%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _%hash-e143754%_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp145123 (list gxc#::void::t))
            (__tmp145122 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp145123
         '()
         __tmp145122
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args143750%_
        (apply make-instance gxc#::collect-bindings::t _%$args143750%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp145124
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
        (__make-promise __tmp145124)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx143742%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self143745%_
                (let ((__obj145098
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj145098))
               (__tmp145125
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143745%_ _%stx143742%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145125
           gxc#current-compile-method
           _%self143745%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp145127 (list gxc#::void::t))
            (__tmp145126 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp145127
         '(modules)
         __tmp145126
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args143739%_
        (apply make-instance gxc#::lift-modules::t _%$args143739%_)))
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
      (let ((__tmp145128
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
        (__make-promise __tmp145128)))
    (define gxc#apply-lift-modules__%
      (lambda (_%_143712%_ _%modules143709143714%_ _%stx143716%_)
        (let ((_%modules143719%_
               (if (eq? _%modules143709143714%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules143709143714%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self143721%_
                  (let ((__obj145100
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145100
                       _%modules143719%_
                       '1
                       '#f
                       '#f))
                    __obj145100))
                 (__tmp145129
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143721%_ _%stx143716%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145129
             gxc#current-compile-method
             _%self143721%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords143728%_ . _%args143729%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords143728%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143728%_
                  'modules:
                  absent-value))
               _%args143729%_)))
    (define gxc#apply-lift-modules
      (lambda _%args143710143735%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args143710143735%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp145131 (list)) (__tmp145130 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp145131
         '()
         __tmp145130
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args143705%_
        (apply make-instance gxc#::find-runtime-code::t _%$args143705%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp145132
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
        (__make-promise __tmp145132)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx143697%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self143700%_
                (let ((__obj145102
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj145102))
               (__tmp145133
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143700%_ _%stx143697%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145133
           gxc#current-compile-method
           _%self143700%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp145135 (list gxc#::false::t))
            (__tmp145134 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp145135
         '()
         __tmp145134
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args143694%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args143694%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp145136
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
        (__make-promise __tmp145136)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx143686%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self143689%_
                (let ((__obj145104
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj145104))
               (__tmp145137
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143689%_ _%stx143686%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145137
           gxc#current-compile-method
           _%self143689%_))))
    (define gxc#::count-values::t
      (let ((__tmp145139 (list gxc#::false-expression::t))
            (__tmp145138 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp145139
         '()
         __tmp145138
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args143683%_
        (apply make-instance gxc#::count-values::t _%$args143683%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp145140
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
        (__make-promise __tmp145140)))
    (define gxc#apply-count-values
      (lambda (_%stx143675%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self143678%_
                (let ((__obj145106
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj145106))
               (__tmp145141
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143678%_ _%stx143675%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145141
           gxc#current-compile-method
           _%self143678%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp145142 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp145142
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args143672%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args143672%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp145143
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
        (__make-promise __tmp145143)))
    (define gxc#::generate-loader::t
      (let ((__tmp145145 (list gxc#::generate-runtime-empty::t))
            (__tmp145144 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp145145
         '()
         __tmp145144
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args143668%_
        (apply make-instance gxc#::generate-loader::t _%$args143668%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp145146
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
        (__make-promise __tmp145146)))
    (define gxc#apply-generate-loader
      (lambda (_%stx143660%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self143663%_
                (let ((__obj145109
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj145109))
               (__tmp145147
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143663%_ _%stx143660%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145147
           gxc#current-compile-method
           _%self143663%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp145148 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp145148
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args143657%_
        (apply make-instance gxc#::generate-runtime::t _%$args143657%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp145149
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
        (__make-promise __tmp145149)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx143649%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self143652%_
                (let ((__obj145111
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj145111))
               (__tmp145150
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143652%_ _%stx143649%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145150
           gxc#current-compile-method
           _%self143652%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp145152 (list gxc#::generate-runtime::t))
            (__tmp145151 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp145152
         '()
         __tmp145151
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args143646%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args143646%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp145153
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
        (__make-promise __tmp145153)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx143638%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self143641%_
                (let ((__obj145113
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj145113))
               (__tmp145154
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143641%_ _%stx143638%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145154
           gxc#current-compile-method
           _%self143641%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp145155 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp145155
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args143635%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args143635%_)))
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
      (let ((__tmp145156
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
        (__make-promise __tmp145156)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%_143608%_ _%table143605143610%_ _%stx143612%_)
        (let ((_%table143615%_
               (if (eq? _%table143605143610%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table143605143610%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self143617%_
                  (let ((__obj145115
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145115
                       _%table143615%_
                       '1
                       '#f
                       '#f))
                    __obj145115))
                 (__tmp145157
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143617%_ _%stx143612%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145157
             gxc#current-compile-method
             _%self143617%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords143624%_ . _%args143625%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords143624%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143624%_
                  'table:
                  absent-value))
               _%args143625%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args143606143631%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args143606143631%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp145159 (list gxc#::void-expression::t))
            (__tmp145158 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp145159
         '(state)
         __tmp145158
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args143601%_
        (apply make-instance gxc#::generate-meta::t _%$args143601%_)))
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
      (let ((__tmp145160
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
        (__make-promise __tmp145160)))
    (define gxc#apply-generate-meta__%
      (lambda (_%_143574%_ _%state143571143576%_ _%stx143578%_)
        (let ((_%state143581%_
               (if (eq? _%state143571143576%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143571143576%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self143583%_
                  (let ((__obj145117
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145117
                       _%state143581%_
                       '1
                       '#f
                       '#f))
                    __obj145117))
                 (__tmp145161
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143583%_ _%stx143578%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145161
             gxc#current-compile-method
             _%self143583%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords143590%_ . _%args143591%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords143590%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143590%_
                  'state:
                  absent-value))
               _%args143591%_)))
    (define gxc#apply-generate-meta
      (lambda _%args143572143597%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args143572143597%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp145163 (list)) (__tmp145162 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp145163
         '(state)
         __tmp145162
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args143567%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args143567%_)))
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
      (let ((__tmp145164
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
        (__make-promise __tmp145164)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%_143540%_ _%state143537143542%_ _%stx143544%_)
        (let ((_%state143547%_
               (if (eq? _%state143537143542%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143537143542%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self143549%_
                  (let ((__obj145119
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145119
                       _%state143547%_
                       '1
                       '#f
                       '#f))
                    __obj145119))
                 (__tmp145165
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143549%_ _%stx143544%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145165
             gxc#current-compile-method
             _%self143549%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords143556%_ . _%args143557%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords143556%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143556%_
                  'state:
                  absent-value))
               _%args143557%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args143538143563%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args143538143563%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self143466%_ _%stx143467%_)
        (let* ((_%g143469143486%_
                (lambda (_%g143470143483%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143470143483%_))))
               (_%g143468143533%_
                (lambda (_%g143470143489%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143470143489%_))
                      (let ((_%e143475143491%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143470143489%_))))
                        (let ((_%hd143474143494%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143475143491%_)))
                              (_%tl143473143496%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143475143491%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143473143496%_))
                              (let ((_%e143478143499%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143473143496%_))))
                                (let ((_%hd143477143502%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143478143499%_)))
                                      (_%tl143476143504%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143478143499%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143476143504%_))
                                      (let ((_%e143481143507%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143476143504%_))))
                                        (let ((_%hd143480143510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143481143507%_)))
                                              (_%tl143479143512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143481143507%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143479143512%_))
                                              ((lambda (_%L143515%_
                                                        _%L143516%_)
                                                 (let ((__tmp145166
                                                        (lambda (_%bind143531%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind143531%_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _%bind143531%_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp145166
                                                    _%L143516%_)))
                                               _%hd143480143510%_
                                               _%hd143477143502%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143469143486%_
                                                 _%g143470143489%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143469143486%_
                                         _%g143470143489%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143469143486%_ _%g143470143489%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143469143486%_ _%g143470143489%_))))))
          (declare (not safe))
          (_%g143468143533%_ _%stx143467%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self143398%_ _%stx143399%_)
        (let* ((_%g143401143418%_
                (lambda (_%g143402143415%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143402143415%_))))
               (_%g143400143463%_
                (lambda (_%g143402143421%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143402143421%_))
                      (let ((_%e143407143423%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143402143421%_))))
                        (let ((_%hd143406143426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143407143423%_)))
                              (_%tl143405143428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143407143423%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143405143428%_))
                              (let ((_%e143410143431%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143405143428%_))))
                                (let ((_%hd143409143434%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143410143431%_)))
                                      (_%tl143408143436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143410143431%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143408143436%_))
                                      (let ((_%e143413143439%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143408143436%_))))
                                        (let ((_%hd143412143442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143413143439%_)))
                                              (_%tl143411143444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143413143439%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143411143444%_))
                                              ((lambda (_%L143447%_
                                                        _%L143448%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _%L143448%_
                                                    '#t)))
                                               _%hd143412143442%_
                                               _%hd143409143434%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143401143418%_
                                                 _%g143402143421%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143401143418%_
                                         _%g143402143421%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143401143418%_ _%g143402143421%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143401143418%_ _%g143402143421%_))))))
          (declare (not safe))
          (_%g143400143463%_ _%stx143399%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self143340%_ _%stx143341%_)
        (let* ((_%g143343143357%_
                (lambda (_%g143344143354%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143344143354%_))))
               (_%g143342143395%_
                (lambda (_%g143344143360%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143344143360%_))
                      (let ((_%e143349143362%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143344143360%_))))
                        (let ((_%hd143348143365%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143349143362%_)))
                              (_%tl143347143367%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143349143362%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143347143367%_))
                              (let ((_%e143352143370%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143347143367%_))))
                                (let ((_%hd143351143373%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143352143370%_)))
                                      (_%tl143350143375%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143352143370%_))))
                                  ((lambda (_%L143378%_ _%L143379%_)
                                     (let ((_%ctx143392%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L143379%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self143340%_
                                           'modules))
                                        (cons _%ctx143392%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self143340%_
                                                        'modules)))))
                                       (let ((__tmp145167
                                              (lambda ()
                                                (let ((__tmp145168
                                                       (##structure-ref
                                                        _%ctx143392%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143340%_
                                                   __tmp145168)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp145167
                                          gx#current-expander-context
                                          _%ctx143392%_))))
                                   _%tl143350143375%_
                                   _%hd143351143373%_)))
                              (let ()
                                (declare (not safe))
                                (_%g143343143357%_ _%g143344143360%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143343143357%_ _%g143344143360%_))))))
          (declare (not safe))
          (_%g143342143395%_ _%stx143341%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls143293143295%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls143293143295%_
              (let ((_%decls143298%_ _%decls143293143295%_))
                (let _%lp143300%_ ((_%rest143302%_ _%decls143298%_))
                  (let* ((_%rest143303143311%_ _%rest143302%_)
                         (_%else143305143319%_ (lambda () '#f))
                         (_%K143307143328%_
                          (lambda (_%decls143322%_ _%decl143323%_)
                            (if (equal? _%decl143323%_ '(not safe))
                                (let () '#t)
                                (if (equal? _%decl143323%_ '(safe))
                                    (let () '#f)
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (_%lp143300%_ _%decls143322%_))))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest143303143311%_))
                        (let ((_%hd143308143331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest143303143311%_)))
                              (_%tl143309143333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest143303143311%_))))
                          (let* ((_%decl143336%_ _%hd143308143331%_)
                                 (_%decls143338%_ _%tl143309143333%_))
                            (declare (not safe))
                            (_%K143307143328%_
                             _%decls143338%_
                             _%decl143336%_)))
                        (let ()
                          (declare (not safe))
                          (_%else143305143319%_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id143287%_ _%syntax?143288%_)
        (let ((_%eid143290%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id143287%_))
                '1
                gx#binding::t
                '#f))
              (_%ht143291%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid143290%_))
              '#!void
              (let ((__tmp145169
                     (let ((__tmp145170
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid143290%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp145170 _%syntax?143288%_))))
                (declare (not safe))
                (hash-put! _%ht143291%_ _%eid143290%_ __tmp145169))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id143285%_)
        (let ((__tmp145171
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _%id143285%_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp145171))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key143240%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key143240%_))
            (let () _%key143240%_)
            (if (uninterned-symbol? _%key143240%_)
                (let ()
                  (let ()
                    (declare (not safe))
                    (gxc#generate-runtime-gensym-reference__0 _%key143240%_)))
                (let ()
                  (let* ((_%key143244143251%_ _%key143240%_)
                         (_%E143246143255%_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _%key143244143251%_
                                     '([eid . mark])))
                            '#!void))
                         (_%K143247143273%_
                          (lambda (_%mark143258%_ _%eid143259%_)
                            (let ((_%$e143261%_
                                   (##structure-ref
                                    _%mark143258%_
                                    '1
                                    gx#expander-mark::t
                                    '#f)))
                              (if _%$e143261%_
                                  ((lambda (_%ht143264%_)
                                     (let ((_%$e143266%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-get
                                               _%ht143264%_
                                               _%eid143259%_))))
                                       (if _%$e143266%_
                                           ((lambda (_%id143269%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (interned-symbol?
                                                     _%id143269%_))
                                                  _%id143269%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%id143269%_))))
                                            _%$e143266%_)
                                           (let ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%eid143259%_))))))
                                   _%$e143261%_)
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-identifier-key
                                       _%eid143259%_))))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%key143244143251%_))
                        (let ((_%hd143248143276%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%key143244143251%_)))
                              (_%tl143249143278%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%key143244143251%_))))
                          (let* ((_%eid143281%_ _%hd143248143276%_)
                                 (_%mark143283%_ _%tl143249143278%_))
                            (declare (not safe))
                            (_%K143247143273%_ _%mark143283%_ _%eid143281%_)))
                        (let ()
                          (declare (not safe))
                          (_%E143246143255%_)))))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self143237%_ _%stx143238%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self143084%_ _%stx143085%_)
        (letrec ((_%simplify143087%_
                  (lambda (_%body143135%_)
                    (let _%lp143137%_ ((_%rest143139%_ _%body143135%_)
                                       (_%r143140%_ '()))
                      (let* ((_%rest143141143149%_ _%rest143139%_)
                             (_%else143143143157%_
                              (lambda () (reverse _%r143140%_)))
                             (_%K143145143225%_
                              (lambda (_%rest143160%_ _%hd143161%_)
                                (let* ((_%hd143162143178%_ _%hd143161%_)
                                       (_%else143166143186%_
                                        (lambda ()
                                          (let ((__tmp145172
                                                 (cons _%hd143161%_
                                                       _%r143140%_)))
                                            (declare (not safe))
                                            (_%lp143137%_
                                             _%rest143160%_
                                             __tmp145172)))))
                                  (let ((_%K143174143215%_
                                         (lambda (_%exprs143213%_)
                                           (let ((__tmp145173
                                                  (let ()
                                                    (declare (not safe))
                                                    (__foldr1
                                                     cons
                                                     _%rest143160%_
                                                     _%exprs143213%_))))
                                             (declare (not safe))
                                             (_%lp143137%_
                                              __tmp145173
                                              _%r143140%_))))
                                        (_%K143169143199%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143160%_))
                                               (let ((__tmp145174
                                                      (cons _%hd143161%_
                                                            _%r143140%_)))
                                                 (declare (not safe))
                                                 (_%lp143137%_
                                                  _%rest143160%_
                                                  __tmp145174))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143137%_
                                                  _%rest143160%_
                                                  _%r143140%_)))))
                                        (_%K143168143191%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143160%_))
                                               (let ((__tmp145175
                                                      (cons _%hd143161%_
                                                            _%r143140%_)))
                                                 (declare (not safe))
                                                 (_%lp143137%_
                                                  _%rest143160%_
                                                  __tmp145175))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143137%_
                                                  _%rest143160%_
                                                  _%r143140%_))))))
                                    (let ((_%try-match143165143194%_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _%hd143162143178%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%K143168143191%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%else143166143186%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd143162143178%_))
                                          (let ((_%tl143176143220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd143162143178%_)))
                                                (_%hd143175143218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd143162143178%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd143175143218%_
                                                         'begin))
                                                (let ((_%exprs143223%_
                                                       _%tl143176143220%_))
                                                  (declare (not safe))
                                                  (_%K143174143215%_
                                                   _%exprs143223%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd143175143218%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl143176143220%_))
                                                        (let ((_%tl143173143207%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl143176143220%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl143173143207%_))
                      (let () (declare (not safe)) (_%K143169143199%_))
                      (let ()
                        (declare (not safe))
                        (_%try-match143165143194%_))))
                (let () (declare (not safe)) (_%try-match143165143194%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%try-match143165143194%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%try-match143165143194%_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest143141143149%_))
                            (let ((_%hd143146143228%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143141143149%_)))
                                  (_%tl143147143230%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143141143149%_))))
                              (let* ((_%hd143233%_ _%hd143146143228%_)
                                     (_%rest143235%_ _%tl143147143230%_))
                                (declare (not safe))
                                (_%K143145143225%_
                                 _%rest143235%_
                                 _%hd143233%_)))
                            (let ()
                              (declare (not safe))
                              (_%else143143143157%_))))))))
          (let* ((_%g143089143099%_
                  (lambda (_%g143090143096%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143090143096%_))))
                 (_%g143088143132%_
                  (lambda (_%g143090143102%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143090143102%_))
                        (let ((_%e143094143104%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143090143102%_))))
                          (let ((_%hd143093143107%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143094143104%_)))
                                (_%tl143092143109%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143094143104%_))))
                            ((lambda (_%L143112%_)
                               (let* ((_%body143127%_
                                       (map (lambda (_%g143122143124%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self143084%_
                                                 _%g143122143124%_)))
                                            _%L143112%_))
                                      (_%body143129%_
                                       (let ()
                                         (declare (not safe))
                                         (_%simplify143087%_ _%body143127%_))))
                                 (if (let ((__tmp145176
                                            (length _%body143129%_)))
                                       (declare (not safe))
                                       (##fx= __tmp145176 '1))
                                     (car _%body143129%_)
                                     (cons 'begin _%body143129%_))))
                             _%tl143092143109%_)))
                        (let ()
                          (declare (not safe))
                          (_%g143089143099%_ _%g143090143102%_))))))
            (declare (not safe))
            (_%g143088143132%_ _%stx143085%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self143045%_ _%stx143046%_)
        (let* ((_%g143048143058%_
                (lambda (_%g143049143055%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143049143055%_))))
               (_%g143047143081%_
                (lambda (_%g143049143061%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143049143061%_))
                      (let ((_%e143053143063%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143049143061%_))))
                        (let ((_%hd143052143066%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143053143063%_)))
                              (_%tl143051143068%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143053143063%_))))
                          ((lambda (_%L143071%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L143071%_))))
                           _%tl143051143068%_)))
                      (let ()
                        (declare (not safe))
                        (_%g143048143058%_ _%g143049143061%_))))))
          (declare (not safe))
          (_%g143047143081%_ _%stx143046%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self142809%_ _%stx142810%_)
        (let* ((_%__stx143779143780%_ _%stx142810%_)
               (_%g142814142866%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx143779143780%_)))))
          (let ((_%__kont143781143782%_
                 (lambda (_%L143027%_ _%L143028%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self142809%_ _%L143027%_))))
                (_%__kont143783143784%_
                 (lambda (_%L142975%_ _%L142976%_ _%L142977%_)
                   (if (let ((__tmp145177
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L142977%_))))
                         (declare (not safe))
                         (##memq __tmp145177 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self142809%_ _%L142975%_)))))
                (_%__kont143787143788%_
                 (lambda (_%L142895%_ _%L142896%_)
                   (let ((_%decls142911%_ (map gx#syntax->datum _%L142896%_)))
                     (let ((__tmp145180
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls142911%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self142809%_
                                                   _%L142895%_))
                                                '())))))
                           (__tmp145178
                            (let ((__tmp145179
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp145179 _%decls142911%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp145180
                        gxc#current-compile-decls
                        __tmp145178))))))
            (let* ((_%__match143834143835%_
                    (lambda (_%e142832142919%_
                             _%hd142831142922%_
                             _%tl142830142924%_
                             _%e142835142927%_
                             _%hd142834142930%_
                             _%tl142833142932%_
                             _%e142838142935%_
                             _%hd142837142938%_
                             _%tl142836142940%_
                             _%__splice143785143786%_
                             _%target142839142943%_
                             _%tl142841142945%_)
                      (letrec ((_%loop142842142948%_
                                (lambda (_%hd142840142951%_
                                         _%param142846142953%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142840142951%_))
                                      (let ((_%e142843142956%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142840142951%_))))
                                        (let ((_%lp-tl142845142961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142843142956%_)))
                                              (_%lp-hd142844142959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142843142956%_))))
                                          (let ((__tmp145181
                                                 (cons _%lp-hd142844142959%_
                                                       _%param142846142953%_)))
                                            (declare (not safe))
                                            (_%loop142842142948%_
                                             _%lp-tl142845142961%_
                                             __tmp145181))))
                                      (let ((_%param142847142964%_
                                             (reverse _%param142846142953%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142833142932%_))
                                            (let ((_%e142850142967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142833142932%_))))
                                              (let ((_%tl142848142972%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142850142967%_)))
                                                    (_%hd142849142970%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142850142967%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142848142972%_))
                                                    (let ((_%L142975%_
                                                           _%hd142849142970%_)
                                                          (_%L142976%_
                                                           _%param142847142964%_)
                                                          (_%L142977%_
                                                           _%hd142837142938%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L142977%_))
                       (let ((__tmp145182
                              (let ((__tmp145183
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L142977%_))))
                                (declare (not safe))
                                (##memq __tmp145183 gxc#gambit-annotations))))
                         (declare (not safe))
                         (not __tmp145182)))
                  (_%__kont143783143784%_ _%L142975%_ _%L142976%_ _%L142977%_)
                  (_%__kont143787143788%_
                   _%hd142849142970%_
                   _%hd142834142930%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g142814142866%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g142814142866%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop142842142948%_ _%target142839142943%_ '())))))
                   (_%__match143808143809%_
                    (lambda (_%e142820143003%_
                             _%hd142819143006%_
                             _%tl142818143008%_
                             _%e142823143011%_
                             _%hd142822143014%_
                             _%tl142821143016%_
                             _%e142826143019%_
                             _%hd142825143022%_
                             _%tl142824143024%_)
                      (let ((_%L143027%_ _%hd142825143022%_)
                            (_%L143028%_ _%hd142822143014%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L143028%_))
                            (_%__kont143781143782%_ _%L143027%_ _%L143028%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd142822143014%_))
                                (let ((_%e142838142935%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd142822143014%_))))
                                  (let ((_%tl142836142940%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142838142935%_)))
                                        (_%hd142837142938%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142838142935%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl142836142940%_))
                                        (let ((_%__splice143785143786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl142836142940%_
                                                  '0))))
                                          (let ((_%tl142841142945%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143785143786%_
                                                    '1)))
                                                (_%target142839142943%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143785143786%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142841142945%_))
                                                (_%__match143834143835%_
                                                 _%e142820143003%_
                                                 _%hd142819143006%_
                                                 _%tl142818143008%_
                                                 _%e142823143011%_
                                                 _%hd142822143014%_
                                                 _%tl142821143016%_
                                                 _%e142838142935%_
                                                 _%hd142837142938%_
                                                 _%tl142836142940%_
                                                 _%__splice143785143786%_
                                                 _%target142839142943%_
                                                 _%tl142841142945%_)
                                                (_%__kont143787143788%_
                                                 _%hd142825143022%_
                                                 _%hd142822143014%_))))
                                        (_%__kont143787143788%_
                                         _%hd142825143022%_
                                         _%hd142822143014%_))))
                                (_%__kont143787143788%_
                                 _%hd142825143022%_
                                 _%hd142822143014%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx143779143780%_))
                  (let ((_%e142820143003%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx143779143780%_))))
                    (let ((_%tl142818143008%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142820143003%_)))
                          (_%hd142819143006%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142820143003%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142818143008%_))
                          (let ((_%e142823143011%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142818143008%_))))
                            (let ((_%tl142821143016%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142823143011%_)))
                                  (_%hd142822143014%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142823143011%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl142821143016%_))
                                  (let ((_%e142826143019%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl142821143016%_))))
                                    (let ((_%tl142824143024%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142826143019%_)))
                                          (_%hd142825143022%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142826143019%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142824143024%_))
                                          (_%__match143808143809%_
                                           _%e142820143003%_
                                           _%hd142819143006%_
                                           _%tl142818143008%_
                                           _%e142823143011%_
                                           _%hd142822143014%_
                                           _%tl142821143016%_
                                           _%e142826143019%_
                                           _%hd142825143022%_
                                           _%tl142824143024%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142822143014%_))
                                              (let ((_%e142838142935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142822143014%_))))
                                                (let ((_%tl142836142940%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142838142935%_)))
                                                      (_%hd142837142938%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142838142935%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl142836142940%_))
                                                      (let ((_%__splice143785143786%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl142836142940%_ '0))))
                (let ((_%tl142841142945%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143785143786%_ '1)))
                      (_%target142839142943%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143785143786%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142841142945%_))
                      (_%__match143834143835%_
                       _%e142820143003%_
                       _%hd142819143006%_
                       _%tl142818143008%_
                       _%e142823143011%_
                       _%hd142822143014%_
                       _%tl142821143016%_
                       _%e142838142935%_
                       _%hd142837142938%_
                       _%tl142836142940%_
                       _%__splice143785143786%_
                       _%target142839142943%_
                       _%tl142841142945%_)
                      (let () (declare (not safe)) (_%g142814142866%_)))))
              (let () (declare (not safe)) (_%g142814142866%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g142814142866%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142822143014%_))
                                      (let ((_%e142838142935%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142822143014%_))))
                                        (let ((_%tl142836142940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142838142935%_)))
                                              (_%hd142837142938%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142838142935%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl142836142940%_))
                                              (let ((_%__splice143785143786%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl142836142940%_
                                                        '0))))
                                                (let ((_%tl142841142945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143785143786%_
                                                          '1)))
                                                      (_%target142839142943%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143785143786%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142841142945%_))
                                                      (_%__match143834143835%_
                                                       _%e142820143003%_
                                                       _%hd142819143006%_
                                                       _%tl142818143008%_
                                                       _%e142823143011%_
                                                       _%hd142822143014%_
                                                       _%tl142821143016%_
                                                       _%e142838142935%_
                                                       _%hd142837142938%_
                                                       _%tl142836142940%_
                                                       _%__splice143785143786%_
                                                       _%target142839142943%_
                                                       _%tl142841142945%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g142814142866%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142814142866%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142814142866%_))))))
                          (let () (declare (not safe)) (_%g142814142866%_)))))
                  (let () (declare (not safe)) (_%g142814142866%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self142768%_ _%stx142769%_)
        (let* ((_%g142771142781%_
                (lambda (_%g142772142778%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142772142778%_))))
               (_%g142770142806%_
                (lambda (_%g142772142784%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142772142784%_))
                      (let ((_%e142776142786%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142772142784%_))))
                        (let ((_%hd142775142789%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142776142786%_)))
                              (_%tl142774142791%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142776142786%_))))
                          ((lambda (_%L142794%_)
                             (let ((_%decls142804%_
                                    (map gx#syntax->datum _%L142794%_)))
                               (let ((__tmp145184
                                      (let ((__tmp145185
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp145185
                                         _%decls142804%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp145184))
                               (cons 'declare _%decls142804%_)))
                           _%tl142774142791%_)))
                      (let ()
                        (declare (not safe))
                        (_%g142771142781%_ _%g142772142784%_))))))
          (declare (not safe))
          (_%g142770142806%_ _%stx142769%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self142514%_ _%stx142515%_)
        (let* ((_%g142517142534%_
                (lambda (_%g142518142531%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142518142531%_))))
               (_%g142516142765%_
                (lambda (_%g142518142537%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142518142537%_))
                      (let ((_%e142523142539%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142518142537%_))))
                        (let ((_%hd142522142542%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142523142539%_)))
                              (_%tl142521142544%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142523142539%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142521142544%_))
                              (let ((_%e142526142547%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142521142544%_))))
                                (let ((_%hd142525142550%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142526142547%_)))
                                      (_%tl142524142552%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142526142547%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142524142552%_))
                                      (let ((_%e142529142555%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142524142552%_))))
                                        (let ((_%hd142528142558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142529142555%_)))
                                              (_%tl142527142560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142529142555%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142527142560%_))
                                              ((lambda (_%L142563%_
                                                        _%L142564%_)
                                                 (let* ((_%__stx143887143888%_
                                                         _%L142564%_)
                                                        (_%g142581142595%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx143887143888%_)))))
                                                   (let ((_%__kont143889143890%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self142514%_
                                                               _%L142563%_))))
                                                         (_%__kont143891143892%_
                                                          (lambda (_%L142727%_)
                                                            (let ((_%eid142736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L142727%_))))
                      (let ((_%lambda-expr142737142739%_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression
                                _%L142563%_))))
                        (if _%lambda-expr142737142739%_
                            (let* ((_%lambda-expr142742%_
                                    _%lambda-expr142737142739%_)
                                   (__tmp145186
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145186
                               _%lambda-expr142742%_
                               _%eid142736%_))
                            '#f))
                      (cons 'define
                            (cons _%eid142736%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self142514%_
                                           _%L142563%_))
                                        '()))))))
                 (_%__kont143893143894%_
                  (lambda ()
                    (let* ((_%tmp142602%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body142711%_
                            (let _%lp142604%_ ((_%rest142606%_ _%L142564%_)
                                               (_%k142607%_ '0)
                                               (_%r142608%_ '()))
                              (let* ((_%__stx143857143858%_ _%rest142606%_)
                                     (_%g142613142630%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx143857143858%_)))))
                                (let ((_%__kont143859143860%_
                                       (lambda (_%L142698%_)
                                         (let ((__tmp145187
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k142607%_ '1))))
                                           (declare (not safe))
                                           (_%lp142604%_
                                            _%L142698%_
                                            __tmp145187
                                            _%r142608%_))))
                                      (_%__kont143861143862%_
                                       (lambda (_%L142671%_ _%L142672%_)
                                         (let ((__tmp145189
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k142607%_ '1)))
                                               (__tmp145188
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L142672%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values-ref
                                   _%tmp142602%_
                                   _%k142607%_
                                   _%L142671%_))
                                '())))
              _%r142608%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp142604%_
                                            _%L142671%_
                                            __tmp145189
                                            __tmp145188))))
                                      (_%__kont143863143864%_
                                       (lambda (_%L142642%_)
                                         (let ((__tmp145190
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L142642%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values->list
                                   _%tmp142602%_
                                   _%k142607%_))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp145190
                                            _%r142608%_))))
                                      (_%__kont143865143866%_
                                       (lambda () (reverse _%r142608%_))))
                                  (let ((_%g142611142658%_
                                         (lambda ()
                                           (let ((_%L142642%_
                                                  _%__stx143857143858%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L142642%_))
                                                 (_%__kont143863143864%_
                                                  _%L142642%_)
                                                 (_%__kont143865143866%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx143857143858%_))
                                        (let ((_%e142618142687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx143857143858%_))))
                                          (let ((_%tl142616142692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142618142687%_)))
                                                (_%hd142617142690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142618142687%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd142617142690%_))
                                                (let ((_%e142619142695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142617142690%_))))
                                                  (if (equal? _%e142619142695%_
                                                              '#f)
                                                      (_%__kont143859143860%_
                                                       _%tl142616142692%_)
                                                      (_%__kont143861143862%_
                                                       _%tl142616142692%_
                                                       _%hd142617142690%_)))
                                                (_%__kont143861143862%_
                                                 _%tl142616142692%_
                                                 _%hd142617142690%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g142611142658%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp142602%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142514%_
                                                       _%L142563%_))
                                                    '())))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-check-values
                                           _%tmp142602%_
                                           _%L142564%_
                                           _%L142563%_))
                                        _%body142711%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx143887143888%_))
                                                         (let ((_%e142585142749%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx143887143888%_))))
                   (let ((_%tl142583142754%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e142585142749%_)))
                         (_%hd142584142752%_
                          (let ()
                            (declare (not safe))
                            (##car _%e142585142749%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd142584142752%_))
                         (let ((_%e142586142757%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd142584142752%_))))
                           (if (equal? _%e142586142757%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142583142754%_))
                                   (_%__kont143889143890%_)
                                   (_%__kont143893143894%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142583142754%_))
                                   (_%__kont143891143892%_ _%hd142584142752%_)
                                   (_%__kont143893143894%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142583142754%_))
                             (_%__kont143891143892%_ _%hd142584142752%_)
                             (_%__kont143893143894%_)))))
                 (_%__kont143893143894%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142528142558%_
                                               _%hd142525142550%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g142517142534%_
                                                 _%g142518142537%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142517142534%_
                                         _%g142518142537%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142517142534%_ _%g142518142537%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g142517142534%_ _%g142518142537%_))))))
          (declare (not safe))
          (_%g142516142765%_ _%stx142515%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals142489%_ _%hd142490%_ _%expr142491%_)
        (let ((_%$e142493%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _%expr142491%_))))
          (if _%$e142493%_
              ((lambda (_%count142496%_)
                 (let ((_%len142498%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142490%_)))
                       (_%cmp142499%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142490%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len142498%_ '0))
                           (_%cmp142499%_ _%count142496%_ _%len142498%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr142491%_
                          _%hd142490%_)))))
               _%$e142493%_)
              (let ()
                (let* ((_%len142505%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142490%_)))
                       (_%cmp142507%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142490%_))
                            '##fx=
                            '##fx>=))
                       (_%errmsg142509%_
                        (let ((__tmp145192
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-list? _%hd142490%_))
                                   '"Context expects "
                                   '"Context expects at least "))
                              (__tmp145191 (number->string _%len142505%_)))
                          (declare (not safe))
                          (##string-append
                           __tmp145192
                           __tmp145191
                           '" values")))
                       (_%count142511%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-temporary__0))))
                  (if (and (let ((__tmp145193
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-list? _%hd142490%_))))
                             (declare (not safe))
                             (not __tmp145193))
                           (let ()
                             (declare (not safe))
                             (##fx= _%len142505%_ '0)))
                      '#!void
                      (cons 'let
                            (cons (cons (cons _%count142511%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-values-count
                                                       _%vals142489%_))
                                                    '()))
                                        '())
                                  (cons (cons 'if
                                              (cons (cons 'not
                                                          (cons (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#current-compile-decls-unsafe?))
                            (cons _%cmp142507%_
                                  (cons _%count142511%_
                                        (cons _%len142505%_ '())))
                            (cons 'let
                                  (cons '()
                                        (cons '(declare (not safe))
                                              (cons (cons _%cmp142507%_
                                                          (cons _%count142511%_
                                                                (cons _%len142505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'error
                                                                (cons _%errmsg142509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%count142511%_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var142484%_)
        (letrec ((_%generate-inline142486%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var142484%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var142484%_ '()))
                                      (cons '1 '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline142486%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline142486%_))
                                      '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var142477%_ _%i142478%_ _%rest142479%_)
        (letrec ((_%generate-inline142481%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i142478%_ '0))
                             (let ((__tmp145194
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%rest142479%_))))
                               (declare (not safe))
                               (not __tmp145194)))
                        (cons 'if
                              (cons (cons '##values? (cons _%var142477%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var142477%_
                                                      (cons '0 '())))
                                          (cons _%var142477%_ '()))))
                        (cons '##vector-ref
                              (cons _%var142477%_ (cons _%i142478%_ '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline142481%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline142481%_))
                                      '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var142471%_ _%i142472%_)
        (if (let () (declare (not safe)) (##fx= _%i142472%_ '0))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (gxc#current-compile-decls-unsafe?))
                  (cons 'if
                        (cons (cons '##values? (cons _%var142471%_ '()))
                              (cons (cons '##vector->list
                                          (cons _%var142471%_ '()))
                                    (cons (cons 'list (cons _%var142471%_ '()))
                                          '()))))
                  (cons 'let
                        (cons '()
                              (cons '(declare (not safe))
                                    (cons (cons 'if
                                                (cons (cons '##values?
                                                            (cons _%var142471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '##vector->list (cons _%var142471%_ '()))
                    (cons (cons 'list (cons _%var142471%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
            (if (let () (declare (not safe)) (##fx= _%i142472%_ '1))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (gxc#current-compile-decls-unsafe?))
                      (cons 'if
                            (cons (cons '##values? (cons _%var142471%_ '()))
                                  (cons (cons '##cdr
                                              (cons (cons '##vector->list
                                                          (cons _%var142471%_
                                                                '()))
                                                    '()))
                                        (cons ''() '()))))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons 'if
                                                    (cons (cons '##values?
                                                                (cons _%var142471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '##cdr
                              (cons (cons '##vector->list
                                          (cons _%var142471%_ '()))
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
                                        (cons _%var142471%_ '()))
                                  (cons _%i142472%_ '())))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons '##list-tail
                                                    (cons (cons '##vector->list
                                                                (cons _%var142471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons _%i142472%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self142403%_ _%stx142404%_)
        (let* ((_%g142406142423%_
                (lambda (_%g142407142420%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142407142420%_))))
               (_%g142405142468%_
                (lambda (_%g142407142426%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142407142426%_))
                      (let ((_%e142412142428%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142407142426%_))))
                        (let ((_%hd142411142431%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142412142428%_)))
                              (_%tl142410142433%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142412142428%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142410142433%_))
                              (let ((_%e142415142436%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142410142433%_))))
                                (let ((_%hd142414142439%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142415142436%_)))
                                      (_%tl142413142441%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142415142436%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142413142441%_))
                                      (let ((_%e142418142444%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142413142441%_))))
                                        (let ((_%hd142417142447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142418142444%_)))
                                              (_%tl142416142449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142418142444%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142416142449%_))
                                              ((lambda (_%L142452%_
                                                        _%L142453%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _%self142403%_
                                                    _%L142453%_
                                                    _%L142452%_)))
                                               _%hd142417142447%_
                                               _%hd142414142439%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g142406142423%_
                                                 _%g142407142426%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142406142423%_
                                         _%g142407142426%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142406142423%_ _%g142407142426%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g142406142423%_ _%g142407142426%_))))))
          (declare (not safe))
          (_%g142405142468%_ _%stx142404%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self142362%_ _%hd142363%_ _%body142364%_)
        (let* ((_%hd142366%_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _%hd142363%_)))
               (_%body142368%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self142362%_ _%body142364%_)))
               (_%body142400%_
                (let* ((_%body142369142377%_ _%body142368%_)
                       (_%else142371142385%_
                        (lambda () (cons _%body142368%_ '())))
                       (_%K142373142390%_
                        (lambda (_%exprs142388%_) _%exprs142388%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body142369142377%_))
                      (let ((_%hd142374142393%_
                             (let ()
                               (declare (not safe))
                               (##car _%body142369142377%_)))
                            (_%tl142375142395%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body142369142377%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd142374142393%_ 'begin))
                            (let ((_%exprs142398%_ _%tl142375142395%_))
                              (declare (not safe))
                              (_%K142373142390%_ _%exprs142398%_))
                            (let ()
                              (declare (not safe))
                              (_%else142371142385%_))))
                      (let () (declare (not safe)) (_%else142371142385%_))))))
          (cons 'lambda (cons _%hd142366%_ _%body142400%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd142360%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd142360%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self140899%_ _%stx140900%_)
        (letrec ((_%dispatch-case?140902%_
                  (lambda (_%hd141590%_ _%body141591%_)
                    (let* ((_%form141593%_
                            (cons _%hd141590%_ (cons _%body141591%_ '())))
                           (_%__stx143919143920%_ _%form141593%_)
                           (_%g141598141755%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx143919143920%_)))))
                      (let ((_%__kont143921143922%_
                             (lambda (_%L142280%_ _%L142281%_ _%L142282%_)
                               '#t))
                            (_%__kont143927143928%_
                             (lambda (_%L142068%_
                                      _%L142069%_
                                      _%L142070%_
                                      _%L142071%_
                                      _%L142072%_
                                      _%L142073%_)
                               '#t))
                            (_%__kont143933143934%_
                             (lambda (_%L141863%_
                                      _%L141864%_
                                      _%L141865%_
                                      _%L141866%_)
                               '#t))
                            (_%__kont143935143936%_ (lambda () '#f)))
                        (let* ((_%__match144060144061%_
                                (lambda (_%e141717141767%_
                                         _%hd141716141770%_
                                         _%tl141715141772%_
                                         _%e141720141775%_
                                         _%hd141719141778%_
                                         _%tl141718141780%_
                                         _%e141723141783%_
                                         _%hd141722141786%_
                                         _%tl141721141788%_
                                         _%e141726141791%_
                                         _%hd141725141794%_
                                         _%tl141724141796%_
                                         _%e141729141799%_
                                         _%hd141728141802%_
                                         _%tl141727141804%_
                                         _%e141732141807%_
                                         _%hd141731141810%_
                                         _%tl141730141812%_
                                         _%e141735141815%_
                                         _%hd141734141818%_
                                         _%tl141733141820%_
                                         _%e141738141823%_
                                         _%hd141737141826%_
                                         _%tl141736141828%_
                                         _%e141741141831%_
                                         _%hd141740141834%_
                                         _%tl141739141836%_
                                         _%e141744141839%_
                                         _%hd141743141842%_
                                         _%tl141742141844%_
                                         _%e141747141847%_
                                         _%hd141746141850%_
                                         _%tl141745141852%_
                                         _%e141750141855%_
                                         _%hd141749141858%_
                                         _%tl141748141860%_)
                                  (let ((_%L141863%_ _%hd141749141858%_)
                                        (_%L141864%_ _%hd141740141834%_)
                                        (_%L141865%_ _%hd141731141810%_)
                                        (_%L141866%_ _%hd141716141770%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L141866%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L141865%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L141866%_
                                                _%L141863%_))
                                             (let ((__tmp145195
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _%L141864%_
                                                       _%L141866%_))))
                                               (declare (not safe))
                                               (not __tmp145195)))
                                        (_%__kont143933143934%_
                                         _%L141863%_
                                         _%L141864%_
                                         _%L141865%_
                                         _%L141866%_)
                                        (_%__kont143935143936%_)))))
                               (_%__match144032144033%_
                                (lambda (_%e141717141767%_
                                         _%hd141716141770%_
                                         _%tl141715141772%_
                                         _%e141720141775%_
                                         _%hd141719141778%_
                                         _%tl141718141780%_
                                         _%e141723141783%_
                                         _%hd141722141786%_
                                         _%tl141721141788%_
                                         _%e141726141791%_
                                         _%hd141725141794%_
                                         _%tl141724141796%_
                                         _%e141729141799%_
                                         _%hd141728141802%_
                                         _%tl141727141804%_
                                         _%e141732141807%_
                                         _%hd141731141810%_
                                         _%tl141730141812%_
                                         _%e141735141815%_
                                         _%hd141734141818%_
                                         _%tl141733141820%_
                                         _%e141738141823%_
                                         _%hd141737141826%_
                                         _%tl141736141828%_
                                         _%e141741141831%_
                                         _%hd141740141834%_
                                         _%tl141739141836%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141733141820%_))
                                      (let ((_%e141744141839%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141733141820%_))))
                                        (let ((_%tl141742141844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141744141839%_)))
                                              (_%hd141743141842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141744141839%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd141743141842%_))
                                              (let ((_%e141747141847%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd141743141842%_))))
                                                (let ((_%tl141745141852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141747141847%_)))
                                                      (_%hd141746141850%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141747141847%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd141746141850%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd141746141850%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141745141852%_))
                      (let ((_%e141750141855%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141745141852%_))))
                        (let ((_%tl141748141860%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141750141855%_)))
                              (_%hd141749141858%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141750141855%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141748141860%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl141742141844%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141718141780%_))
                                      (_%__match144060144061%_
                                       _%e141717141767%_
                                       _%hd141716141770%_
                                       _%tl141715141772%_
                                       _%e141720141775%_
                                       _%hd141719141778%_
                                       _%tl141718141780%_
                                       _%e141723141783%_
                                       _%hd141722141786%_
                                       _%tl141721141788%_
                                       _%e141726141791%_
                                       _%hd141725141794%_
                                       _%tl141724141796%_
                                       _%e141729141799%_
                                       _%hd141728141802%_
                                       _%tl141727141804%_
                                       _%e141732141807%_
                                       _%hd141731141810%_
                                       _%tl141730141812%_
                                       _%e141735141815%_
                                       _%hd141734141818%_
                                       _%tl141733141820%_
                                       _%e141738141823%_
                                       _%hd141737141826%_
                                       _%tl141736141828%_
                                       _%e141741141831%_
                                       _%hd141740141834%_
                                       _%tl141739141836%_
                                       _%e141744141839%_
                                       _%hd141743141842%_
                                       _%tl141742141844%_
                                       _%e141747141847%_
                                       _%hd141746141850%_
                                       _%tl141745141852%_
                                       _%e141750141855%_
                                       _%hd141749141858%_
                                       _%tl141748141860%_)
                                      (_%__kont143935143936%_))
                                  (_%__kont143935143936%_))
                              (_%__kont143935143936%_))))
                      (_%__kont143935143936%_))
                  (_%__kont143935143936%_))
              (_%__kont143935143936%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143935143936%_))))
                                      (_%__kont143935143936%_))))
                               (_%__match143962143963%_
                                (lambda (_%e141653141908%_
                                         _%hd141652141911%_
                                         _%tl141651141913%_
                                         _%__splice143929143930%_
                                         _%target141654141916%_
                                         _%tl141656141918%_)
                                  (letrec ((_%loop141657141921%_
                                            (lambda (_%hd141655141924%_
                                                     _%arg141661141926%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141655141924%_))
                                                  (let ((_%e141658141929%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141655141924%_))))
                                                    (let ((_%lp-tl141660141934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141658141929%_)))
                                                          (_%lp-hd141659141932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141658141929%_))))
                                                      (let ((__tmp145196
                                                             (cons _%lp-hd141659141932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141661141926%_)))
                (declare (not safe))
                (_%loop141657141921%_ _%lp-tl141660141934%_ __tmp145196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141662141937%_
                                                         (reverse _%arg141661141926%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141651141913%_))
                                                        (let ((_%e141665141940%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141651141913%_))))
                  (let ((_%tl141663141945%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141665141940%_)))
                        (_%hd141664141943%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141665141940%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141664141943%_))
                        (let ((_%e141668141948%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141664141943%_))))
                          (let ((_%tl141666141953%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141668141948%_)))
                                (_%hd141667141951%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141668141948%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141667141951%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141667141951%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141666141953%_))
                                        (let ((_%e141671141956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141666141953%_))))
                                          (let ((_%tl141669141961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141671141956%_)))
                                                (_%hd141670141959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141671141956%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141670141959%_))
                                                (let ((_%e141674141964%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141670141959%_))))
                                                  (let ((_%tl141672141969%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141674141964%_)))
                                                        (_%hd141673141967%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141674141964%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141673141967%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141673141967%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141672141969%_))
                        (let ((_%e141677141972%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141672141969%_))))
                          (let ((_%tl141675141977%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141677141972%_)))
                                (_%hd141676141975%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141677141972%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141675141977%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141669141961%_))
                                    (let ((_%e141680141980%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141669141961%_))))
                                      (let ((_%tl141678141985%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141680141980%_)))
                                            (_%hd141679141983%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141680141980%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141679141983%_))
                                            (let ((_%e141683141988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141679141983%_))))
                                              (let ((_%tl141681141993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141683141988%_)))
                                                    (_%hd141682141991%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141683141988%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141682141991%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141682141991%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141681141993%_))
                                                            (let ((_%e141686141996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141681141993%_))))
                      (let ((_%tl141684142001%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141686141996%_)))
                            (_%hd141685141999%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141686141996%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141684142001%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141678141985%_))
                                (if (let ((__tmp145197
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl141678141985%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp145197 '1))
                                    (let ((_%__splice143931143932%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141678141985%_
                                              '1))))
                                      (let ((_%tl141689142006%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143931143932%_
                                                '1)))
                                            (_%target141687142004%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143931143932%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141689142006%_))
                                            (let ((_%e141698142009%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141689142006%_))))
                                              (let ((_%tl141696142014%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141698142009%_)))
                                                    (_%hd141697142012%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141698142009%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd141697142012%_))
                                                    (let ((_%e141701142017%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd141697142012%_))))
                                                      (let ((_%tl141699142022%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141701142017%_)))
                    (_%hd141700142020%_
                     (let () (declare (not safe)) (##car _%e141701142017%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd141700142020%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd141700142020%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl141699142022%_))
                            (let ((_%e141704142025%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl141699142022%_))))
                              (let ((_%tl141702142030%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141704142025%_)))
                                    (_%hd141703142028%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141704142025%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl141702142030%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141696142014%_))
                                        (letrec ((_%loop141690142033%_
                                                  (lambda (_%hd141688142036%_
                                                           _%xarg141694142038%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd141688142036%_))
                                                        (let ((_%e141691142041%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd141688142036%_))))
                  (let ((_%lp-tl141693142046%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141691142041%_)))
                        (_%lp-hd141692142044%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141691142041%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd141692142044%_))
                        (let ((_%e141707142049%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd141692142044%_))))
                          (let ((_%tl141705142054%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141707142049%_)))
                                (_%hd141706142052%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141707142049%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141706142052%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd141706142052%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141705142054%_))
                                        (let ((_%e141710142057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141705142054%_))))
                                          (let ((_%tl141708142062%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141710142057%_)))
                                                (_%hd141709142060%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141710142057%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141708142062%_))
                                                (let ((__tmp145198
                                                       (cons _%hd141709142060%_
                                                             _%xarg141694142038%_)))
                                                  (declare (not safe))
                                                  (_%loop141690142033%_
                                                   _%lp-tl141693142046%_
                                                   __tmp145198))
                                                (_%__match144032144033%_
                                                 _%e141653141908%_
                                                 _%hd141652141911%_
                                                 _%tl141651141913%_
                                                 _%e141665141940%_
                                                 _%hd141664141943%_
                                                 _%tl141663141945%_
                                                 _%e141668141948%_
                                                 _%hd141667141951%_
                                                 _%tl141666141953%_
                                                 _%e141671141956%_
                                                 _%hd141670141959%_
                                                 _%tl141669141961%_
                                                 _%e141674141964%_
                                                 _%hd141673141967%_
                                                 _%tl141672141969%_
                                                 _%e141677141972%_
                                                 _%hd141676141975%_
                                                 _%tl141675141977%_
                                                 _%e141680141980%_
                                                 _%hd141679141983%_
                                                 _%tl141678141985%_
                                                 _%e141683141988%_
                                                 _%hd141682141991%_
                                                 _%tl141681141993%_
                                                 _%e141686141996%_
                                                 _%hd141685141999%_
                                                 _%tl141684142001%_))))
                                        (_%__match144032144033%_
                                         _%e141653141908%_
                                         _%hd141652141911%_
                                         _%tl141651141913%_
                                         _%e141665141940%_
                                         _%hd141664141943%_
                                         _%tl141663141945%_
                                         _%e141668141948%_
                                         _%hd141667141951%_
                                         _%tl141666141953%_
                                         _%e141671141956%_
                                         _%hd141670141959%_
                                         _%tl141669141961%_
                                         _%e141674141964%_
                                         _%hd141673141967%_
                                         _%tl141672141969%_
                                         _%e141677141972%_
                                         _%hd141676141975%_
                                         _%tl141675141977%_
                                         _%e141680141980%_
                                         _%hd141679141983%_
                                         _%tl141678141985%_
                                         _%e141683141988%_
                                         _%hd141682141991%_
                                         _%tl141681141993%_
                                         _%e141686141996%_
                                         _%hd141685141999%_
                                         _%tl141684142001%_))
                                    (_%__match144032144033%_
                                     _%e141653141908%_
                                     _%hd141652141911%_
                                     _%tl141651141913%_
                                     _%e141665141940%_
                                     _%hd141664141943%_
                                     _%tl141663141945%_
                                     _%e141668141948%_
                                     _%hd141667141951%_
                                     _%tl141666141953%_
                                     _%e141671141956%_
                                     _%hd141670141959%_
                                     _%tl141669141961%_
                                     _%e141674141964%_
                                     _%hd141673141967%_
                                     _%tl141672141969%_
                                     _%e141677141972%_
                                     _%hd141676141975%_
                                     _%tl141675141977%_
                                     _%e141680141980%_
                                     _%hd141679141983%_
                                     _%tl141678141985%_
                                     _%e141683141988%_
                                     _%hd141682141991%_
                                     _%tl141681141993%_
                                     _%e141686141996%_
                                     _%hd141685141999%_
                                     _%tl141684142001%_))
                                (_%__match144032144033%_
                                 _%e141653141908%_
                                 _%hd141652141911%_
                                 _%tl141651141913%_
                                 _%e141665141940%_
                                 _%hd141664141943%_
                                 _%tl141663141945%_
                                 _%e141668141948%_
                                 _%hd141667141951%_
                                 _%tl141666141953%_
                                 _%e141671141956%_
                                 _%hd141670141959%_
                                 _%tl141669141961%_
                                 _%e141674141964%_
                                 _%hd141673141967%_
                                 _%tl141672141969%_
                                 _%e141677141972%_
                                 _%hd141676141975%_
                                 _%tl141675141977%_
                                 _%e141680141980%_
                                 _%hd141679141983%_
                                 _%tl141678141985%_
                                 _%e141683141988%_
                                 _%hd141682141991%_
                                 _%tl141681141993%_
                                 _%e141686141996%_
                                 _%hd141685141999%_
                                 _%tl141684142001%_))))
                        (_%__match144032144033%_
                         _%e141653141908%_
                         _%hd141652141911%_
                         _%tl141651141913%_
                         _%e141665141940%_
                         _%hd141664141943%_
                         _%tl141663141945%_
                         _%e141668141948%_
                         _%hd141667141951%_
                         _%tl141666141953%_
                         _%e141671141956%_
                         _%hd141670141959%_
                         _%tl141669141961%_
                         _%e141674141964%_
                         _%hd141673141967%_
                         _%tl141672141969%_
                         _%e141677141972%_
                         _%hd141676141975%_
                         _%tl141675141977%_
                         _%e141680141980%_
                         _%hd141679141983%_
                         _%tl141678141985%_
                         _%e141683141988%_
                         _%hd141682141991%_
                         _%tl141681141993%_
                         _%e141686141996%_
                         _%hd141685141999%_
                         _%tl141684142001%_))))
                (let ((_%xarg141695142065%_ (reverse _%xarg141694142038%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141663141945%_))
                      (let ((_%L142068%_ _%hd141703142028%_)
                            (_%L142069%_ _%xarg141695142065%_)
                            (_%L142070%_ _%hd141685141999%_)
                            (_%L142071%_ _%hd141676141975%_)
                            (_%L142072%_ _%tl141656141918%_)
                            (_%L142073%_ _%arg141662141937%_))
                        (if (and (let ((__tmp145199
                                        (let ((__tmp145200
                                               (lambda (_%g142116142119%_
                                                        _%g142117142121%_)
                                                 (cons _%g142116142119%_
                                                       _%g142117142121%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145200
                                           '()
                                           _%L142073%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp145199))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L142072%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L142071%_
                                    'apply))
                                 (let ((__tmp145203
                                        (length (let ((__tmp145204
                                                       (lambda (_%g142123142126%_
                                                                _%g142124142128%_)
                                                         (cons _%g142123142126%_
                                                               _%g142124142128%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145204
                                                   '()
                                                   _%L142073%_))))
                                       (__tmp145201
                                        (length (let ((__tmp145202
                                                       (lambda (_%g142130142133%_
                                                                _%g142131142135%_)
                                                         (cons _%g142130142133%_
                                                               _%g142131142135%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145202
                                                   '()
                                                   _%L142069%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp145203 __tmp145201))
                                 (let ((__tmp145207
                                        (let ((__tmp145208
                                               (lambda (_%g142137142140%_
                                                        _%g142138142142%_)
                                                 (cons _%g142137142140%_
                                                       _%g142138142142%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145208
                                           '()
                                           _%L142073%_)))
                                       (__tmp145205
                                        (let ((__tmp145206
                                               (lambda (_%g142144142147%_
                                                        _%g142145142149%_)
                                                 (cons _%g142144142147%_
                                                       _%g142145142149%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145206
                                           '()
                                           _%L142069%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp145207
                                    __tmp145205))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L142072%_
                                    _%L142068%_))
                                 (let ((__tmp145209
                                        (let ((__tmp145213
                                               (lambda (_%g142151142153%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _%g142151142153%_
                                                    _%L142070%_))))
                                              (__tmp145210
                                               (let ((__tmp145212
                                                      (lambda (_%g142155142158%_
                                                               _%g142156142160%_)
                                                        (cons _%g142155142158%_
                                                              _%g142156142160%_)))
                                                     (__tmp145211
                                                      (cons _%L142072%_ '())))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp145212
                                                  __tmp145211
                                                  _%L142073%_))))
                                          (declare (not safe))
                                          (__find __tmp145213 __tmp145210))))
                                   (declare (not safe))
                                   (not __tmp145209)))
                            (_%__kont143927143928%_
                             _%L142068%_
                             _%L142069%_
                             _%L142070%_
                             _%L142071%_
                             _%L142072%_
                             _%L142073%_)
                            (_%__match144032144033%_
                             _%e141653141908%_
                             _%hd141652141911%_
                             _%tl141651141913%_
                             _%e141665141940%_
                             _%hd141664141943%_
                             _%tl141663141945%_
                             _%e141668141948%_
                             _%hd141667141951%_
                             _%tl141666141953%_
                             _%e141671141956%_
                             _%hd141670141959%_
                             _%tl141669141961%_
                             _%e141674141964%_
                             _%hd141673141967%_
                             _%tl141672141969%_
                             _%e141677141972%_
                             _%hd141676141975%_
                             _%tl141675141977%_
                             _%e141680141980%_
                             _%hd141679141983%_
                             _%tl141678141985%_
                             _%e141683141988%_
                             _%hd141682141991%_
                             _%tl141681141993%_
                             _%e141686141996%_
                             _%hd141685141999%_
                             _%tl141684142001%_)))
                      (_%__match144032144033%_
                       _%e141653141908%_
                       _%hd141652141911%_
                       _%tl141651141913%_
                       _%e141665141940%_
                       _%hd141664141943%_
                       _%tl141663141945%_
                       _%e141668141948%_
                       _%hd141667141951%_
                       _%tl141666141953%_
                       _%e141671141956%_
                       _%hd141670141959%_
                       _%tl141669141961%_
                       _%e141674141964%_
                       _%hd141673141967%_
                       _%tl141672141969%_
                       _%e141677141972%_
                       _%hd141676141975%_
                       _%tl141675141977%_
                       _%e141680141980%_
                       _%hd141679141983%_
                       _%tl141678141985%_
                       _%e141683141988%_
                       _%hd141682141991%_
                       _%tl141681141993%_
                       _%e141686141996%_
                       _%hd141685141999%_
                       _%tl141684142001%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop141690142033%_
                                             _%target141687142004%_
                                             '())))
                                        (_%__match144032144033%_
                                         _%e141653141908%_
                                         _%hd141652141911%_
                                         _%tl141651141913%_
                                         _%e141665141940%_
                                         _%hd141664141943%_
                                         _%tl141663141945%_
                                         _%e141668141948%_
                                         _%hd141667141951%_
                                         _%tl141666141953%_
                                         _%e141671141956%_
                                         _%hd141670141959%_
                                         _%tl141669141961%_
                                         _%e141674141964%_
                                         _%hd141673141967%_
                                         _%tl141672141969%_
                                         _%e141677141972%_
                                         _%hd141676141975%_
                                         _%tl141675141977%_
                                         _%e141680141980%_
                                         _%hd141679141983%_
                                         _%tl141678141985%_
                                         _%e141683141988%_
                                         _%hd141682141991%_
                                         _%tl141681141993%_
                                         _%e141686141996%_
                                         _%hd141685141999%_
                                         _%tl141684142001%_))
                                    (_%__match144032144033%_
                                     _%e141653141908%_
                                     _%hd141652141911%_
                                     _%tl141651141913%_
                                     _%e141665141940%_
                                     _%hd141664141943%_
                                     _%tl141663141945%_
                                     _%e141668141948%_
                                     _%hd141667141951%_
                                     _%tl141666141953%_
                                     _%e141671141956%_
                                     _%hd141670141959%_
                                     _%tl141669141961%_
                                     _%e141674141964%_
                                     _%hd141673141967%_
                                     _%tl141672141969%_
                                     _%e141677141972%_
                                     _%hd141676141975%_
                                     _%tl141675141977%_
                                     _%e141680141980%_
                                     _%hd141679141983%_
                                     _%tl141678141985%_
                                     _%e141683141988%_
                                     _%hd141682141991%_
                                     _%tl141681141993%_
                                     _%e141686141996%_
                                     _%hd141685141999%_
                                     _%tl141684142001%_))))
                            (_%__match144032144033%_
                             _%e141653141908%_
                             _%hd141652141911%_
                             _%tl141651141913%_
                             _%e141665141940%_
                             _%hd141664141943%_
                             _%tl141663141945%_
                             _%e141668141948%_
                             _%hd141667141951%_
                             _%tl141666141953%_
                             _%e141671141956%_
                             _%hd141670141959%_
                             _%tl141669141961%_
                             _%e141674141964%_
                             _%hd141673141967%_
                             _%tl141672141969%_
                             _%e141677141972%_
                             _%hd141676141975%_
                             _%tl141675141977%_
                             _%e141680141980%_
                             _%hd141679141983%_
                             _%tl141678141985%_
                             _%e141683141988%_
                             _%hd141682141991%_
                             _%tl141681141993%_
                             _%e141686141996%_
                             _%hd141685141999%_
                             _%tl141684142001%_))
                        (_%__match144032144033%_
                         _%e141653141908%_
                         _%hd141652141911%_
                         _%tl141651141913%_
                         _%e141665141940%_
                         _%hd141664141943%_
                         _%tl141663141945%_
                         _%e141668141948%_
                         _%hd141667141951%_
                         _%tl141666141953%_
                         _%e141671141956%_
                         _%hd141670141959%_
                         _%tl141669141961%_
                         _%e141674141964%_
                         _%hd141673141967%_
                         _%tl141672141969%_
                         _%e141677141972%_
                         _%hd141676141975%_
                         _%tl141675141977%_
                         _%e141680141980%_
                         _%hd141679141983%_
                         _%tl141678141985%_
                         _%e141683141988%_
                         _%hd141682141991%_
                         _%tl141681141993%_
                         _%e141686141996%_
                         _%hd141685141999%_
                         _%tl141684142001%_))
                    (_%__match144032144033%_
                     _%e141653141908%_
                     _%hd141652141911%_
                     _%tl141651141913%_
                     _%e141665141940%_
                     _%hd141664141943%_
                     _%tl141663141945%_
                     _%e141668141948%_
                     _%hd141667141951%_
                     _%tl141666141953%_
                     _%e141671141956%_
                     _%hd141670141959%_
                     _%tl141669141961%_
                     _%e141674141964%_
                     _%hd141673141967%_
                     _%tl141672141969%_
                     _%e141677141972%_
                     _%hd141676141975%_
                     _%tl141675141977%_
                     _%e141680141980%_
                     _%hd141679141983%_
                     _%tl141678141985%_
                     _%e141683141988%_
                     _%hd141682141991%_
                     _%tl141681141993%_
                     _%e141686141996%_
                     _%hd141685141999%_
                     _%tl141684142001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144032144033%_
                                                     _%e141653141908%_
                                                     _%hd141652141911%_
                                                     _%tl141651141913%_
                                                     _%e141665141940%_
                                                     _%hd141664141943%_
                                                     _%tl141663141945%_
                                                     _%e141668141948%_
                                                     _%hd141667141951%_
                                                     _%tl141666141953%_
                                                     _%e141671141956%_
                                                     _%hd141670141959%_
                                                     _%tl141669141961%_
                                                     _%e141674141964%_
                                                     _%hd141673141967%_
                                                     _%tl141672141969%_
                                                     _%e141677141972%_
                                                     _%hd141676141975%_
                                                     _%tl141675141977%_
                                                     _%e141680141980%_
                                                     _%hd141679141983%_
                                                     _%tl141678141985%_
                                                     _%e141683141988%_
                                                     _%hd141682141991%_
                                                     _%tl141681141993%_
                                                     _%e141686141996%_
                                                     _%hd141685141999%_
                                                     _%tl141684142001%_))))
                                            (_%__match144032144033%_
                                             _%e141653141908%_
                                             _%hd141652141911%_
                                             _%tl141651141913%_
                                             _%e141665141940%_
                                             _%hd141664141943%_
                                             _%tl141663141945%_
                                             _%e141668141948%_
                                             _%hd141667141951%_
                                             _%tl141666141953%_
                                             _%e141671141956%_
                                             _%hd141670141959%_
                                             _%tl141669141961%_
                                             _%e141674141964%_
                                             _%hd141673141967%_
                                             _%tl141672141969%_
                                             _%e141677141972%_
                                             _%hd141676141975%_
                                             _%tl141675141977%_
                                             _%e141680141980%_
                                             _%hd141679141983%_
                                             _%tl141678141985%_
                                             _%e141683141988%_
                                             _%hd141682141991%_
                                             _%tl141681141993%_
                                             _%e141686141996%_
                                             _%hd141685141999%_
                                             _%tl141684142001%_))))
                                    (_%__match144032144033%_
                                     _%e141653141908%_
                                     _%hd141652141911%_
                                     _%tl141651141913%_
                                     _%e141665141940%_
                                     _%hd141664141943%_
                                     _%tl141663141945%_
                                     _%e141668141948%_
                                     _%hd141667141951%_
                                     _%tl141666141953%_
                                     _%e141671141956%_
                                     _%hd141670141959%_
                                     _%tl141669141961%_
                                     _%e141674141964%_
                                     _%hd141673141967%_
                                     _%tl141672141969%_
                                     _%e141677141972%_
                                     _%hd141676141975%_
                                     _%tl141675141977%_
                                     _%e141680141980%_
                                     _%hd141679141983%_
                                     _%tl141678141985%_
                                     _%e141683141988%_
                                     _%hd141682141991%_
                                     _%tl141681141993%_
                                     _%e141686141996%_
                                     _%hd141685141999%_
                                     _%tl141684142001%_))
                                (_%__match144032144033%_
                                 _%e141653141908%_
                                 _%hd141652141911%_
                                 _%tl141651141913%_
                                 _%e141665141940%_
                                 _%hd141664141943%_
                                 _%tl141663141945%_
                                 _%e141668141948%_
                                 _%hd141667141951%_
                                 _%tl141666141953%_
                                 _%e141671141956%_
                                 _%hd141670141959%_
                                 _%tl141669141961%_
                                 _%e141674141964%_
                                 _%hd141673141967%_
                                 _%tl141672141969%_
                                 _%e141677141972%_
                                 _%hd141676141975%_
                                 _%tl141675141977%_
                                 _%e141680141980%_
                                 _%hd141679141983%_
                                 _%tl141678141985%_
                                 _%e141683141988%_
                                 _%hd141682141991%_
                                 _%tl141681141993%_
                                 _%e141686141996%_
                                 _%hd141685141999%_
                                 _%tl141684142001%_))
                            (_%__kont143935143936%_))))
                    (_%__kont143935143936%_))
                (_%__kont143935143936%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont143935143936%_))))
                                            (_%__kont143935143936%_))))
                                    (_%__kont143935143936%_))
                                (_%__kont143935143936%_))))
                        (_%__kont143935143936%_))
                    (_%__kont143935143936%_))
                (_%__kont143935143936%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont143935143936%_))))
                                        (_%__kont143935143936%_))
                                    (_%__kont143935143936%_))
                                (_%__kont143935143936%_))))
                        (_%__kont143935143936%_))))
                (_%__kont143935143936%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141657141921%_
                                       _%target141654141916%_
                                       '())))))
                               (_%__match143950143951%_
                                (lambda (_%e141605142168%_
                                         _%hd141604142171%_
                                         _%tl141603142173%_
                                         _%__splice143923143924%_
                                         _%target141606142176%_
                                         _%tl141608142178%_)
                                  (letrec ((_%loop141609142181%_
                                            (lambda (_%hd141607142184%_
                                                     _%arg141613142186%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141607142184%_))
                                                  (let ((_%e141610142189%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141607142184%_))))
                                                    (let ((_%lp-tl141612142194%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141610142189%_)))
                                                          (_%lp-hd141611142192%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141610142189%_))))
                                                      (let ((__tmp145214
                                                             (cons _%lp-hd141611142192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141613142186%_)))
                (declare (not safe))
                (_%loop141609142181%_ _%lp-tl141612142194%_ __tmp145214))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141614142197%_
                                                         (reverse _%arg141613142186%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141603142173%_))
                                                        (let ((_%e141617142200%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141603142173%_))))
                  (let ((_%tl141615142205%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141617142200%_)))
                        (_%hd141616142203%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141617142200%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141616142203%_))
                        (let ((_%e141620142208%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141616142203%_))))
                          (let ((_%tl141618142213%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141620142208%_)))
                                (_%hd141619142211%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141620142208%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141619142211%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141619142211%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141618142213%_))
                                        (let ((_%e141623142216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141618142213%_))))
                                          (let ((_%tl141621142221%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141623142216%_)))
                                                (_%hd141622142219%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141623142216%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141622142219%_))
                                                (let ((_%e141626142224%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141622142219%_))))
                                                  (let ((_%tl141624142229%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141626142224%_)))
                                                        (_%hd141625142227%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141626142224%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141625142227%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141625142227%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141624142229%_))
                        (let ((_%e141629142232%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141624142229%_))))
                          (let ((_%tl141627142237%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141629142232%_)))
                                (_%hd141628142235%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141629142232%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141627142237%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141621142221%_))
                                    (let ((_%__splice143925143926%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141621142221%_
                                              '0))))
                                      (let ((_%tl141632142242%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143925143926%_
                                                '1)))
                                            (_%target141630142240%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143925143926%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141632142242%_))
                                            (letrec ((_%loop141633142245%_
                                                      (lambda (_%hd141631142248%_
                                                               _%xarg141637142250%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141631142248%_))
                                                            (let ((_%e141634142253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141631142248%_))))
                      (let ((_%lp-tl141636142258%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141634142253%_)))
                            (_%lp-hd141635142256%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141634142253%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141635142256%_))
                            (let ((_%e141641142261%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141635142256%_))))
                              (let ((_%tl141639142266%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141641142261%_)))
                                    (_%hd141640142264%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141641142261%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141640142264%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141640142264%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141639142266%_))
                                            (let ((_%e141644142269%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141639142266%_))))
                                              (let ((_%tl141642142274%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141644142269%_)))
                                                    (_%hd141643142272%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141644142269%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141642142274%_))
                                                    (let ((__tmp145215
                                                           (cons _%hd141643142272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg141637142250%_)))
              (declare (not safe))
              (_%loop141633142245%_ _%lp-tl141636142258%_ __tmp145215))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match143962143963%_
                                                     _%e141605142168%_
                                                     _%hd141604142171%_
                                                     _%tl141603142173%_
                                                     _%__splice143923143924%_
                                                     _%target141606142176%_
                                                     _%tl141608142178%_))))
                                            (_%__match143962143963%_
                                             _%e141605142168%_
                                             _%hd141604142171%_
                                             _%tl141603142173%_
                                             _%__splice143923143924%_
                                             _%target141606142176%_
                                             _%tl141608142178%_))
                                        (_%__match143962143963%_
                                         _%e141605142168%_
                                         _%hd141604142171%_
                                         _%tl141603142173%_
                                         _%__splice143923143924%_
                                         _%target141606142176%_
                                         _%tl141608142178%_))
                                    (_%__match143962143963%_
                                     _%e141605142168%_
                                     _%hd141604142171%_
                                     _%tl141603142173%_
                                     _%__splice143923143924%_
                                     _%target141606142176%_
                                     _%tl141608142178%_))))
                            (_%__match143962143963%_
                             _%e141605142168%_
                             _%hd141604142171%_
                             _%tl141603142173%_
                             _%__splice143923143924%_
                             _%target141606142176%_
                             _%tl141608142178%_))))
                    (let ((_%xarg141638142277%_
                           (reverse _%xarg141637142250%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141615142205%_))
                          (let ((_%L142280%_ _%xarg141638142277%_)
                                (_%L142281%_ _%hd141628142235%_)
                                (_%L142282%_ _%arg141614142197%_))
                            (if (and (let ((__tmp145216
                                            (let ((__tmp145217
                                                   (lambda (_%g142310142313%_
                                                            _%g142311142315%_)
                                                     (cons _%g142310142313%_
                                                           _%g142311142315%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145217
                                               '()
                                               _%L142282%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp145216))
                                     (let ((__tmp145220
                                            (length (let ((__tmp145221
                                                           (lambda (_%g142317142320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142318142322%_)
                     (cons _%g142317142320%_ _%g142318142322%_))))
              (declare (not safe))
              (__foldr1 __tmp145221 '() _%L142282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp145218
                                            (length (let ((__tmp145219
                                                           (lambda (_%g142324142327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142325142329%_)
                     (cons _%g142324142327%_ _%g142325142329%_))))
              (declare (not safe))
              (__foldr1 __tmp145219 '() _%L142280%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145220 __tmp145218))
                                     (let ((__tmp145224
                                            (let ((__tmp145225
                                                   (lambda (_%g142331142334%_
                                                            _%g142332142336%_)
                                                     (cons _%g142331142334%_
                                                           _%g142332142336%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145225
                                               '()
                                               _%L142282%_)))
                                           (__tmp145222
                                            (let ((__tmp145223
                                                   (lambda (_%g142338142341%_
                                                            _%g142339142343%_)
                                                     (cons _%g142338142341%_
                                                           _%g142339142343%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145223
                                               '()
                                               _%L142280%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp145224
                                        __tmp145222))
                                     (let ((__tmp145226
                                            (let ((__tmp145229
                                                   (lambda (_%g142345142347%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g142345142347%_
                                                        _%L142281%_))))
                                                  (__tmp145227
                                                   (let ((__tmp145228
                                                          (lambda (_%g142349142352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g142350142354%_)
                    (cons _%g142349142352%_ _%g142350142354%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp145228
                                                      '()
                                                      _%L142282%_))))
                                              (declare (not safe))
                                              (__find __tmp145229
                                                      __tmp145227))))
                                       (declare (not safe))
                                       (not __tmp145226)))
                                (_%__kont143921143922%_
                                 _%L142280%_
                                 _%L142281%_
                                 _%L142282%_)
                                (_%__match143962143963%_
                                 _%e141605142168%_
                                 _%hd141604142171%_
                                 _%tl141603142173%_
                                 _%__splice143923143924%_
                                 _%target141606142176%_
                                 _%tl141608142178%_)))
                          (_%__match143962143963%_
                           _%e141605142168%_
                           _%hd141604142171%_
                           _%tl141603142173%_
                           _%__splice143923143924%_
                           _%target141606142176%_
                           _%tl141608142178%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop141633142245%_
                                                 _%target141630142240%_
                                                 '())))
                                            (_%__match143962143963%_
                                             _%e141605142168%_
                                             _%hd141604142171%_
                                             _%tl141603142173%_
                                             _%__splice143923143924%_
                                             _%target141606142176%_
                                             _%tl141608142178%_))))
                                    (_%__match143962143963%_
                                     _%e141605142168%_
                                     _%hd141604142171%_
                                     _%tl141603142173%_
                                     _%__splice143923143924%_
                                     _%target141606142176%_
                                     _%tl141608142178%_))
                                (_%__match143962143963%_
                                 _%e141605142168%_
                                 _%hd141604142171%_
                                 _%tl141603142173%_
                                 _%__splice143923143924%_
                                 _%target141606142176%_
                                 _%tl141608142178%_))))
                        (_%__match143962143963%_
                         _%e141605142168%_
                         _%hd141604142171%_
                         _%tl141603142173%_
                         _%__splice143923143924%_
                         _%target141606142176%_
                         _%tl141608142178%_))
                    (_%__match143962143963%_
                     _%e141605142168%_
                     _%hd141604142171%_
                     _%tl141603142173%_
                     _%__splice143923143924%_
                     _%target141606142176%_
                     _%tl141608142178%_))
                (_%__match143962143963%_
                 _%e141605142168%_
                 _%hd141604142171%_
                 _%tl141603142173%_
                 _%__splice143923143924%_
                 _%target141606142176%_
                 _%tl141608142178%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match143962143963%_
                                                 _%e141605142168%_
                                                 _%hd141604142171%_
                                                 _%tl141603142173%_
                                                 _%__splice143923143924%_
                                                 _%target141606142176%_
                                                 _%tl141608142178%_))))
                                        (_%__match143962143963%_
                                         _%e141605142168%_
                                         _%hd141604142171%_
                                         _%tl141603142173%_
                                         _%__splice143923143924%_
                                         _%target141606142176%_
                                         _%tl141608142178%_))
                                    (_%__match143962143963%_
                                     _%e141605142168%_
                                     _%hd141604142171%_
                                     _%tl141603142173%_
                                     _%__splice143923143924%_
                                     _%target141606142176%_
                                     _%tl141608142178%_))
                                (_%__match143962143963%_
                                 _%e141605142168%_
                                 _%hd141604142171%_
                                 _%tl141603142173%_
                                 _%__splice143923143924%_
                                 _%target141606142176%_
                                 _%tl141608142178%_))))
                        (_%__match143962143963%_
                         _%e141605142168%_
                         _%hd141604142171%_
                         _%tl141603142173%_
                         _%__splice143923143924%_
                         _%target141606142176%_
                         _%tl141608142178%_))))
                (_%__match143962143963%_
                 _%e141605142168%_
                 _%hd141604142171%_
                 _%tl141603142173%_
                 _%__splice143923143924%_
                 _%target141606142176%_
                 _%tl141608142178%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141609142181%_
                                       _%target141606142176%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx143919143920%_))
                              (let ((_%e141605142168%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx143919143920%_))))
                                (let ((_%tl141603142173%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141605142168%_)))
                                      (_%hd141604142171%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141605142168%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141604142171%_))
                                      (let ((_%__splice143923143924%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141604142171%_
                                                '0))))
                                        (let ((_%tl141608142178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143923143924%_
                                                  '1)))
                                              (_%target141606142176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143923143924%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141608142178%_))
                                              (_%__match143950143951%_
                                               _%e141605142168%_
                                               _%hd141604142171%_
                                               _%tl141603142173%_
                                               _%__splice143923143924%_
                                               _%target141606142176%_
                                               _%tl141608142178%_)
                                              (_%__match143962143963%_
                                               _%e141605142168%_
                                               _%hd141604142171%_
                                               _%tl141603142173%_
                                               _%__splice143923143924%_
                                               _%target141606142176%_
                                               _%tl141608142178%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141603142173%_))
                                          (let ((_%e141720141775%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141603142173%_))))
                                            (let ((_%tl141718141780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141720141775%_)))
                                                  (_%hd141719141778%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141720141775%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141719141778%_))
                                                  (let ((_%e141723141783%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141719141778%_))))
                                                    (let ((_%tl141721141788%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141723141783%_)))
                                                          (_%hd141722141786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141723141783%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141722141786%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141722141786%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141721141788%_))
                          (let ((_%e141726141791%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141721141788%_))))
                            (let ((_%tl141724141796%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141726141791%_)))
                                  (_%hd141725141794%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141726141791%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141725141794%_))
                                  (let ((_%e141729141799%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141725141794%_))))
                                    (let ((_%tl141727141804%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141729141799%_)))
                                          (_%hd141728141802%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141729141799%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141728141802%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141728141802%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141727141804%_))
                                                  (let ((_%e141732141807%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141727141804%_))))
                                                    (let ((_%tl141730141812%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141732141807%_)))
                                                          (_%hd141731141810%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141732141807%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141730141812%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141724141796%_))
                      (let ((_%e141735141815%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141724141796%_))))
                        (let ((_%tl141733141820%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141735141815%_)))
                              (_%hd141734141818%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141735141815%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141734141818%_))
                              (let ((_%e141738141823%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141734141818%_))))
                                (let ((_%tl141736141828%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141738141823%_)))
                                      (_%hd141737141826%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141738141823%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141737141826%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141737141826%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141736141828%_))
                                              (let ((_%e141741141831%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141736141828%_))))
                                                (let ((_%tl141739141836%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141741141831%_)))
                                                      (_%hd141740141834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141741141831%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141739141836%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141733141820%_))
                                                          (let ((_%e141744141839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141733141820%_))))
                    (let ((_%tl141742141844%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141744141839%_)))
                          (_%hd141743141842%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141744141839%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd141743141842%_))
                          (let ((_%e141747141847%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd141743141842%_))))
                            (let ((_%tl141745141852%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141747141847%_)))
                                  (_%hd141746141850%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141747141847%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd141746141850%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd141746141850%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141745141852%_))
                                          (let ((_%e141750141855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141745141852%_))))
                                            (let ((_%tl141748141860%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141750141855%_)))
                                                  (_%hd141749141858%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141750141855%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141748141860%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141742141844%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141718141780%_))
                                                          (_%__match144060144061%_
                                                           _%e141605142168%_
                                                           _%hd141604142171%_
                                                           _%tl141603142173%_
                                                           _%e141720141775%_
                                                           _%hd141719141778%_
                                                           _%tl141718141780%_
                                                           _%e141723141783%_
                                                           _%hd141722141786%_
                                                           _%tl141721141788%_
                                                           _%e141726141791%_
                                                           _%hd141725141794%_
                                                           _%tl141724141796%_
                                                           _%e141729141799%_
                                                           _%hd141728141802%_
                                                           _%tl141727141804%_
                                                           _%e141732141807%_
                                                           _%hd141731141810%_
                                                           _%tl141730141812%_
                                                           _%e141735141815%_
                                                           _%hd141734141818%_
                                                           _%tl141733141820%_
                                                           _%e141738141823%_
                                                           _%hd141737141826%_
                                                           _%tl141736141828%_
                                                           _%e141741141831%_
                                                           _%hd141740141834%_
                                                           _%tl141739141836%_
                                                           _%e141744141839%_
                                                           _%hd141743141842%_
                                                           _%tl141742141844%_
                                                           _%e141747141847%_
                                                           _%hd141746141850%_
                                                           _%tl141745141852%_
                                                           _%e141750141855%_
                                                           _%hd141749141858%_
                                                           _%tl141748141860%_)
                                                          (_%__kont143935143936%_))
                                                      (_%__kont143935143936%_))
                                                  (_%__kont143935143936%_))))
                                          (_%__kont143935143936%_))
                                      (_%__kont143935143936%_))
                                  (_%__kont143935143936%_))))
                          (_%__kont143935143936%_))))
                  (_%__kont143935143936%_))
              (_%__kont143935143936%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143935143936%_))
                                          (_%__kont143935143936%_))
                                      (_%__kont143935143936%_))))
                              (_%__kont143935143936%_))))
                      (_%__kont143935143936%_))
                  (_%__kont143935143936%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143935143936%_))
                                              (_%__kont143935143936%_))
                                          (_%__kont143935143936%_))))
                                  (_%__kont143935143936%_))))
                          (_%__kont143935143936%_))
                      (_%__kont143935143936%_))
                  (_%__kont143935143936%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143935143936%_))))
                                          (_%__kont143935143936%_)))))
                              (_%__kont143935143936%_)))))))
                 (_%dispatch-case-e140903%_
                  (lambda (_%hd141054%_ _%body141055%_)
                    (let* ((_%form141057%_
                            (cons _%hd141054%_ (cons _%body141055%_ '())))
                           (_%__stx144063144064%_ _%form141057%_)
                           (_%g141061141185%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144063144064%_)))))
                      (let ((_%__kont144065144066%_
                             (lambda (_%L141556%_ _%L141557%_ _%L141558%_)
                               (let ((__tmp145230
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141557%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140899%_
                                  __tmp145230))))
                            (_%__kont144071144072%_
                             (lambda (_%L141404%_
                                      _%L141405%_
                                      _%L141406%_
                                      _%L141407%_)
                               (let ((__tmp145231
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141404%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140899%_
                                  __tmp145231))))
                            (_%__kont144075144076%_
                             (lambda (_%L141270%_ _%L141271%_ _%L141272%_)
                               (let ((__tmp145232
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141270%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140899%_
                                  __tmp145232)))))
                        (let* ((_%__match144172144173%_
                                (lambda (_%e141153141190%_
                                         _%hd141152141193%_
                                         _%tl141151141195%_
                                         _%e141156141198%_
                                         _%hd141155141201%_
                                         _%tl141154141203%_
                                         _%e141159141206%_
                                         _%hd141158141209%_
                                         _%tl141157141211%_
                                         _%e141162141214%_
                                         _%hd141161141217%_
                                         _%tl141160141219%_
                                         _%e141165141222%_
                                         _%hd141164141225%_
                                         _%tl141163141227%_
                                         _%e141168141230%_
                                         _%hd141167141233%_
                                         _%tl141166141235%_
                                         _%e141171141238%_
                                         _%hd141170141241%_
                                         _%tl141169141243%_
                                         _%e141174141246%_
                                         _%hd141173141249%_
                                         _%tl141172141251%_
                                         _%e141177141254%_
                                         _%hd141176141257%_
                                         _%tl141175141259%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141169141243%_))
                                      (let ((_%e141180141262%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141169141243%_))))
                                        (let ((_%tl141178141267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141180141262%_)))
                                              (_%hd141179141265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141180141262%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141178141267%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141154141203%_))
                                                  (_%__kont144075144076%_
                                                   _%hd141176141257%_
                                                   _%hd141167141233%_
                                                   _%hd141152141193%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141061141185%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141061141185%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141061141185%_)))))
                               (_%__match144102144103%_
                                (lambda (_%e141114141308%_
                                         _%hd141113141311%_
                                         _%tl141112141313%_
                                         _%__splice144073144074%_
                                         _%target141115141316%_
                                         _%tl141117141318%_)
                                  (letrec ((_%loop141118141321%_
                                            (lambda (_%hd141116141324%_
                                                     _%arg141122141326%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141116141324%_))
                                                  (let ((_%e141119141329%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141116141324%_))))
                                                    (let ((_%lp-tl141121141334%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141119141329%_)))
                                                          (_%lp-hd141120141332%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141119141329%_))))
                                                      (let ((__tmp145233
                                                             (cons _%lp-hd141120141332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141122141326%_)))
                (declare (not safe))
                (_%loop141118141321%_ _%lp-tl141121141334%_ __tmp145233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141123141337%_
                                                         (reverse _%arg141122141326%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141112141313%_))
                                                        (let ((_%e141126141340%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141112141313%_))))
                  (let ((_%tl141124141345%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141126141340%_)))
                        (_%hd141125141343%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141126141340%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141125141343%_))
                        (let ((_%e141129141348%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141125141343%_))))
                          (let ((_%tl141127141353%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141129141348%_)))
                                (_%hd141128141351%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141129141348%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141128141351%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141128141351%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141127141353%_))
                                        (let ((_%e141132141356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141127141353%_))))
                                          (let ((_%tl141130141361%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141132141356%_)))
                                                (_%hd141131141359%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141132141356%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141131141359%_))
                                                (let ((_%e141135141364%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141131141359%_))))
                                                  (let ((_%tl141133141369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141135141364%_)))
                                                        (_%hd141134141367%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141135141364%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141134141367%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141134141367%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141133141369%_))
                        (let ((_%e141138141372%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141133141369%_))))
                          (let ((_%tl141136141377%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141138141372%_)))
                                (_%hd141137141375%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141138141372%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141136141377%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141130141361%_))
                                    (let ((_%e141141141380%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141130141361%_))))
                                      (let ((_%tl141139141385%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141141141380%_)))
                                            (_%hd141140141383%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141141141380%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141140141383%_))
                                            (let ((_%e141144141388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141140141383%_))))
                                              (let ((_%tl141142141393%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141144141388%_)))
                                                    (_%hd141143141391%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141144141388%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141143141391%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141143141391%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141142141393%_))
                                                            (let ((_%e141147141396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141142141393%_))))
                      (let ((_%tl141145141401%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141147141396%_)))
                            (_%hd141146141399%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141147141396%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141145141401%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141124141345%_))
                                (_%__kont144071144072%_
                                 _%hd141146141399%_
                                 _%hd141137141375%_
                                 _%tl141117141318%_
                                 _%arg141123141337%_)
                                (_%__match144172144173%_
                                 _%e141114141308%_
                                 _%hd141113141311%_
                                 _%tl141112141313%_
                                 _%e141126141340%_
                                 _%hd141125141343%_
                                 _%tl141124141345%_
                                 _%e141129141348%_
                                 _%hd141128141351%_
                                 _%tl141127141353%_
                                 _%e141132141356%_
                                 _%hd141131141359%_
                                 _%tl141130141361%_
                                 _%e141135141364%_
                                 _%hd141134141367%_
                                 _%tl141133141369%_
                                 _%e141138141372%_
                                 _%hd141137141375%_
                                 _%tl141136141377%_
                                 _%e141141141380%_
                                 _%hd141140141383%_
                                 _%tl141139141385%_
                                 _%e141144141388%_
                                 _%hd141143141391%_
                                 _%tl141142141393%_
                                 _%e141147141396%_
                                 _%hd141146141399%_
                                 _%tl141145141401%_))
                            (let ()
                              (declare (not safe))
                              (_%g141061141185%_)))))
                    (let () (declare (not safe)) (_%g141061141185%_)))
                (let () (declare (not safe)) (_%g141061141185%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141061141185%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g141061141185%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141061141185%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141061141185%_)))))
                        (let () (declare (not safe)) (_%g141061141185%_)))
                    (let () (declare (not safe)) (_%g141061141185%_)))
                (let () (declare (not safe)) (_%g141061141185%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g141061141185%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141061141185%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141061141185%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141061141185%_)))))
                        (let () (declare (not safe)) (_%g141061141185%_)))))
                (let () (declare (not safe)) (_%g141061141185%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141118141321%_
                                       _%target141115141316%_
                                       '())))))
                               (_%__match144090144091%_
                                (lambda (_%e141068141444%_
                                         _%hd141067141447%_
                                         _%tl141066141449%_
                                         _%__splice144067144068%_
                                         _%target141069141452%_
                                         _%tl141071141454%_)
                                  (letrec ((_%loop141072141457%_
                                            (lambda (_%hd141070141460%_
                                                     _%arg141076141462%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141070141460%_))
                                                  (let ((_%e141073141465%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141070141460%_))))
                                                    (let ((_%lp-tl141075141470%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141073141465%_)))
                                                          (_%lp-hd141074141468%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141073141465%_))))
                                                      (let ((__tmp145234
                                                             (cons _%lp-hd141074141468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141076141462%_)))
                (declare (not safe))
                (_%loop141072141457%_ _%lp-tl141075141470%_ __tmp145234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141077141473%_
                                                         (reverse _%arg141076141462%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141066141449%_))
                                                        (let ((_%e141080141476%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141066141449%_))))
                  (let ((_%tl141078141481%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141080141476%_)))
                        (_%hd141079141479%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141080141476%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141079141479%_))
                        (let ((_%e141083141484%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141079141479%_))))
                          (let ((_%tl141081141489%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141083141484%_)))
                                (_%hd141082141487%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141083141484%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141082141487%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141082141487%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141081141489%_))
                                        (let ((_%e141086141492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141081141489%_))))
                                          (let ((_%tl141084141497%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141086141492%_)))
                                                (_%hd141085141495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141086141492%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141085141495%_))
                                                (let ((_%e141089141500%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141085141495%_))))
                                                  (let ((_%tl141087141505%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141089141500%_)))
                                                        (_%hd141088141503%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141089141500%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141088141503%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141088141503%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141087141505%_))
                        (let ((_%e141092141508%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141087141505%_))))
                          (let ((_%tl141090141513%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141092141508%_)))
                                (_%hd141091141511%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141092141508%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141090141513%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141084141497%_))
                                    (let ((_%__splice144069144070%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141084141497%_
                                              '0))))
                                      (let ((_%tl141095141518%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144069144070%_
                                                '1)))
                                            (_%target141093141516%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144069144070%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141095141518%_))
                                            (letrec ((_%loop141096141521%_
                                                      (lambda (_%hd141094141524%_
                                                               _%xarg141100141526%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141094141524%_))
                                                            (let ((_%e141097141529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141094141524%_))))
                      (let ((_%lp-tl141099141534%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141097141529%_)))
                            (_%lp-hd141098141532%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141097141529%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141098141532%_))
                            (let ((_%e141104141537%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141098141532%_))))
                              (let ((_%tl141102141542%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141104141537%_)))
                                    (_%hd141103141540%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141104141537%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141103141540%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141103141540%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141102141542%_))
                                            (let ((_%e141107141545%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141102141542%_))))
                                              (let ((_%tl141105141550%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141107141545%_)))
                                                    (_%hd141106141548%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141107141545%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141105141550%_))
                                                    (let ((__tmp145235
                                                           (cons _%hd141106141548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg141100141526%_)))
              (declare (not safe))
              (_%loop141096141521%_ _%lp-tl141099141534%_ __tmp145235))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144102144103%_
                                                     _%e141068141444%_
                                                     _%hd141067141447%_
                                                     _%tl141066141449%_
                                                     _%__splice144067144068%_
                                                     _%target141069141452%_
                                                     _%tl141071141454%_))))
                                            (_%__match144102144103%_
                                             _%e141068141444%_
                                             _%hd141067141447%_
                                             _%tl141066141449%_
                                             _%__splice144067144068%_
                                             _%target141069141452%_
                                             _%tl141071141454%_))
                                        (_%__match144102144103%_
                                         _%e141068141444%_
                                         _%hd141067141447%_
                                         _%tl141066141449%_
                                         _%__splice144067144068%_
                                         _%target141069141452%_
                                         _%tl141071141454%_))
                                    (_%__match144102144103%_
                                     _%e141068141444%_
                                     _%hd141067141447%_
                                     _%tl141066141449%_
                                     _%__splice144067144068%_
                                     _%target141069141452%_
                                     _%tl141071141454%_))))
                            (_%__match144102144103%_
                             _%e141068141444%_
                             _%hd141067141447%_
                             _%tl141066141449%_
                             _%__splice144067144068%_
                             _%target141069141452%_
                             _%tl141071141454%_))))
                    (let ((_%xarg141101141553%_
                           (reverse _%xarg141100141526%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141078141481%_))
                          (_%__kont144065144066%_
                           _%xarg141101141553%_
                           _%hd141091141511%_
                           _%arg141077141473%_)
                          (_%__match144102144103%_
                           _%e141068141444%_
                           _%hd141067141447%_
                           _%tl141066141449%_
                           _%__splice144067144068%_
                           _%target141069141452%_
                           _%tl141071141454%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop141096141521%_
                                                 _%target141093141516%_
                                                 '())))
                                            (_%__match144102144103%_
                                             _%e141068141444%_
                                             _%hd141067141447%_
                                             _%tl141066141449%_
                                             _%__splice144067144068%_
                                             _%target141069141452%_
                                             _%tl141071141454%_))))
                                    (_%__match144102144103%_
                                     _%e141068141444%_
                                     _%hd141067141447%_
                                     _%tl141066141449%_
                                     _%__splice144067144068%_
                                     _%target141069141452%_
                                     _%tl141071141454%_))
                                (_%__match144102144103%_
                                 _%e141068141444%_
                                 _%hd141067141447%_
                                 _%tl141066141449%_
                                 _%__splice144067144068%_
                                 _%target141069141452%_
                                 _%tl141071141454%_))))
                        (_%__match144102144103%_
                         _%e141068141444%_
                         _%hd141067141447%_
                         _%tl141066141449%_
                         _%__splice144067144068%_
                         _%target141069141452%_
                         _%tl141071141454%_))
                    (_%__match144102144103%_
                     _%e141068141444%_
                     _%hd141067141447%_
                     _%tl141066141449%_
                     _%__splice144067144068%_
                     _%target141069141452%_
                     _%tl141071141454%_))
                (_%__match144102144103%_
                 _%e141068141444%_
                 _%hd141067141447%_
                 _%tl141066141449%_
                 _%__splice144067144068%_
                 _%target141069141452%_
                 _%tl141071141454%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144102144103%_
                                                 _%e141068141444%_
                                                 _%hd141067141447%_
                                                 _%tl141066141449%_
                                                 _%__splice144067144068%_
                                                 _%target141069141452%_
                                                 _%tl141071141454%_))))
                                        (_%__match144102144103%_
                                         _%e141068141444%_
                                         _%hd141067141447%_
                                         _%tl141066141449%_
                                         _%__splice144067144068%_
                                         _%target141069141452%_
                                         _%tl141071141454%_))
                                    (_%__match144102144103%_
                                     _%e141068141444%_
                                     _%hd141067141447%_
                                     _%tl141066141449%_
                                     _%__splice144067144068%_
                                     _%target141069141452%_
                                     _%tl141071141454%_))
                                (_%__match144102144103%_
                                 _%e141068141444%_
                                 _%hd141067141447%_
                                 _%tl141066141449%_
                                 _%__splice144067144068%_
                                 _%target141069141452%_
                                 _%tl141071141454%_))))
                        (_%__match144102144103%_
                         _%e141068141444%_
                         _%hd141067141447%_
                         _%tl141066141449%_
                         _%__splice144067144068%_
                         _%target141069141452%_
                         _%tl141071141454%_))))
                (_%__match144102144103%_
                 _%e141068141444%_
                 _%hd141067141447%_
                 _%tl141066141449%_
                 _%__splice144067144068%_
                 _%target141069141452%_
                 _%tl141071141454%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141072141457%_
                                       _%target141069141452%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144063144064%_))
                              (let ((_%e141068141444%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144063144064%_))))
                                (let ((_%tl141066141449%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141068141444%_)))
                                      (_%hd141067141447%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141068141444%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141067141447%_))
                                      (let ((_%__splice144067144068%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141067141447%_
                                                '0))))
                                        (let ((_%tl141071141454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144067144068%_
                                                  '1)))
                                              (_%target141069141452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144067144068%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141071141454%_))
                                              (_%__match144090144091%_
                                               _%e141068141444%_
                                               _%hd141067141447%_
                                               _%tl141066141449%_
                                               _%__splice144067144068%_
                                               _%target141069141452%_
                                               _%tl141071141454%_)
                                              (_%__match144102144103%_
                                               _%e141068141444%_
                                               _%hd141067141447%_
                                               _%tl141066141449%_
                                               _%__splice144067144068%_
                                               _%target141069141452%_
                                               _%tl141071141454%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141066141449%_))
                                          (let ((_%e141156141198%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141066141449%_))))
                                            (let ((_%tl141154141203%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141156141198%_)))
                                                  (_%hd141155141201%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141156141198%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141155141201%_))
                                                  (let ((_%e141159141206%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141155141201%_))))
                                                    (let ((_%tl141157141211%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141159141206%_)))
                                                          (_%hd141158141209%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141159141206%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141158141209%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141158141209%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141157141211%_))
                          (let ((_%e141162141214%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141157141211%_))))
                            (let ((_%tl141160141219%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141162141214%_)))
                                  (_%hd141161141217%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141162141214%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141161141217%_))
                                  (let ((_%e141165141222%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141161141217%_))))
                                    (let ((_%tl141163141227%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141165141222%_)))
                                          (_%hd141164141225%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141165141222%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141164141225%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141164141225%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141163141227%_))
                                                  (let ((_%e141168141230%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141163141227%_))))
                                                    (let ((_%tl141166141235%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141168141230%_)))
                                                          (_%hd141167141233%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141168141230%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141166141235%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141160141219%_))
                      (let ((_%e141171141238%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141160141219%_))))
                        (let ((_%tl141169141243%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141171141238%_)))
                              (_%hd141170141241%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141171141238%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141170141241%_))
                              (let ((_%e141174141246%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141170141241%_))))
                                (let ((_%tl141172141251%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141174141246%_)))
                                      (_%hd141173141249%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141174141246%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141173141249%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141173141249%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141172141251%_))
                                              (let ((_%e141177141254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141172141251%_))))
                                                (let ((_%tl141175141259%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141177141254%_)))
                                                      (_%hd141176141257%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141177141254%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141175141259%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141169141243%_))
                                                          (let ((_%e141180141262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141169141243%_))))
                    (let ((_%tl141178141267%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141180141262%_)))
                          (_%hd141179141265%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141180141262%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141178141267%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141154141203%_))
                              (_%__kont144075144076%_
                               _%hd141176141257%_
                               _%hd141167141233%_
                               _%hd141067141447%_)
                              (let ()
                                (declare (not safe))
                                (_%g141061141185%_)))
                          (let () (declare (not safe)) (_%g141061141185%_)))))
                  (let () (declare (not safe)) (_%g141061141185%_)))
              (let () (declare (not safe)) (_%g141061141185%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g141061141185%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141061141185%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141061141185%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g141061141185%_)))))
                      (let () (declare (not safe)) (_%g141061141185%_)))
                  (let () (declare (not safe)) (_%g141061141185%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141061141185%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141061141185%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141061141185%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g141061141185%_)))))
                          (let () (declare (not safe)) (_%g141061141185%_)))
                      (let () (declare (not safe)) (_%g141061141185%_)))
                  (let () (declare (not safe)) (_%g141061141185%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141061141185%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141061141185%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g141061141185%_))))))))
                 (_%generate1140904%_
                  (lambda (_%args141039%_
                           _%arglen141040%_
                           _%hd141041%_
                           _%body141042%_)
                    (let* ((_%len141044%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd141041%_)))
                           (_%condition141049%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd141041%_))
                                (let ()
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#current-compile-decls-unsafe?))
                                      (cons '##fx=
                                            (cons _%arglen141040%_
                                                  (cons _%len141044%_ '())))
                                      (cons 'let
                                            (cons '()
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%arglen141040%_ (cons _%len141044%_ '())))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len141044%_ '0)
                                    (let ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#current-compile-decls-unsafe?))
                                          (cons '##fx>=
                                                (cons _%arglen141040%_
                                                      (cons _%len141044%_
                                                            '())))
                                          (cons 'let
                                                (cons '()
                                                      (cons '(declare
                                                               (not safe))
                                                            (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%arglen141040%_
                                      (cons _%len141044%_ '())))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let () '#t))))
                           (_%dispatch141051%_
                            (if (let ()
                                  (declare (not safe))
                                  (_%dispatch-case?140902%_
                                   _%hd141041%_
                                   _%body141042%_))
                                (let ()
                                  (declare (not safe))
                                  (_%dispatch-case-e140903%_
                                   _%hd141041%_
                                   _%body141042%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _%self140899%_
                                   _%hd141041%_
                                   _%body141042%_)))))
                      (cons _%condition141049%_
                            (cons (cons 'apply
                                        (cons _%dispatch141051%_
                                              (cons _%args141039%_ '())))
                                  '()))))))
          (let* ((_%g140906140934%_
                  (lambda (_%g140907140931%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140907140931%_))))
                 (_%g140905141036%_
                  (lambda (_%g140907140937%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140907140937%_))
                        (let ((_%e140912140939%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140907140937%_))))
                          (let ((_%hd140911140942%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140912140939%_)))
                                (_%tl140910140944%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140912140939%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl140910140944%_))
                                (let ((_g145236_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl140910140944%_
                                          '0))))
                                  (begin
                                    (let ((_g145237_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145236_)
                                                 (##vector-length _g145236_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145237_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145237_)))
                                    (let ((_%target140913140947%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145236_ 0)))
                                          (_%tl140915140949%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145236_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140915140949%_))
                                          (letrec ((_%loop140916140952%_
                                                    (lambda (_%hd140914140955%_
                                                             _%body140920140957%_
                                                             _%hd140921140959%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd140914140955%_))
                                                          (let ((_%e140917140962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd140914140955%_))))
                    (let ((_%lp-hd140918140965%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140917140962%_)))
                          (_%lp-tl140919140967%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140917140962%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd140918140965%_))
                          (let ((_%e140926140970%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd140918140965%_))))
                            (let ((_%hd140925140973%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140926140970%_)))
                                  (_%tl140924140975%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140926140970%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl140924140975%_))
                                  (let ((_%e140929140978%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl140924140975%_))))
                                    (let ((_%hd140928140981%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140929140978%_)))
                                          (_%tl140927140983%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140929140978%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140927140983%_))
                                          (let ((__tmp145239
                                                 (cons _%hd140928140981%_
                                                       _%body140920140957%_))
                                                (__tmp145238
                                                 (cons _%hd140925140973%_
                                                       _%hd140921140959%_)))
                                            (declare (not safe))
                                            (_%loop140916140952%_
                                             _%lp-tl140919140967%_
                                             __tmp145239
                                             __tmp145238))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140906140934%_
                                             _%g140907140937%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g140906140934%_ _%g140907140937%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g140906140934%_ _%g140907140937%_)))))
                  (let ((_%body140922140986%_ (reverse _%body140920140957%_))
                        (_%hd140923140988%_ (reverse _%hd140921140959%_)))
                    ((lambda (_%L140991%_ _%L140992%_)
                       (let ((_%args141011%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen141012%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name141013%_
                              (let ((_%$e141008%_
                                     (let ((__tmp145240
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp145240 _%stx140900%_))))
                                (if _%$e141008%_
                                    _%$e141008%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args141011%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen141012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-decls-unsafe?))
                                     (cons '##length (cons _%args141011%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args141011%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp145244
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name141013%_
                                                                (cons _%args141011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp145241
                                  (map (lambda (_%g141014141017%_
                                                _%g141015141019%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%generate1140904%_
                                            _%args141011%_
                                            _%arglen141012%_
                                            _%g141014141017%_
                                            _%g141015141019%_)))
                                       (let ((__tmp145242
                                              (lambda (_%g141021141024%_
                                                       _%g141022141026%_)
                                                (cons _%g141021141024%_
                                                      _%g141022141026%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145242
                                          '()
                                          _%L140992%_))
                                       (let ((__tmp145243
                                              (lambda (_%g141028141031%_
                                                       _%g141029141033%_)
                                                (cons _%g141028141031%_
                                                      _%g141029141033%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145243
                                          '()
                                          _%L140991%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp145244 __tmp145241)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body140922140986%_
                     _%hd140923140988%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop140916140952%_
                                               _%target140913140947%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140906140934%_
                                             _%g140907140937%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140906140934%_ _%g140907140937%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140906140934%_ _%g140907140937%_))))))
            (declare (not safe))
            (_%g140905141036%_ _%stx140900%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self140170%_ _%stx140171%_ _%compiled-body?140172%_)
        (letrec ((_%generate-simple140174%_
                  (lambda (_%hd140884%_ _%body140885%_)
                    (let ((__tmp145245
                           (let ((__tmp145246
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _%self140170%_
                                     'let
                                     _%hd140884%_
                                     _%body140885%_
                                     _%compiled-body?140172%_))))
                             (declare (not safe))
                             (_%coalesce-let*140176%_ __tmp145246))))
                      (declare (not safe))
                      (_%coalesce-boolean140175%_ __tmp145245))))
                 (_%coalesce-boolean140175%_
                  (lambda (_%code140745%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code140746140772%_ _%code140745%_)
                               (_%else140748140780%_
                                (lambda () _%code140745%_))
                               (_%K140750140817%_
                                (lambda (_%expr2140783%_
                                         _%expr1140784%_
                                         _%id140785%_)
                                  (let* ((_%expr2140786140794%_
                                          _%expr2140783%_)
                                         (_%else140788140802%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1140784%_
                                                        (cons _%expr2140783%_
                                                              '())))))
                                         (_%K140790140807%_
                                          (lambda (_%exprs140805%_)
                                            (cons 'or
                                                  (cons _%expr1140784%_
                                                        _%exprs140805%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2140786140794%_))
                                        (let ((_%hd140791140810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2140786140794%_)))
                                              (_%tl140792140812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2140786140794%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140791140810%_ 'or))
                                              (let ((_%exprs140815%_
                                                     _%tl140792140812%_))
                                                (declare (not safe))
                                                (_%K140790140807%_
                                                 _%exprs140815%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else140788140802%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140788140802%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code140746140772%_))
                              (let ((_%hd140751140820%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code140746140772%_)))
                                    (_%tl140752140822%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code140746140772%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd140751140820%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl140752140822%_))
                                        (let ((_%hd140753140825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl140752140822%_)))
                                              (_%tl140754140827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl140752140822%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd140753140825%_))
                                              (let ((_%hd140765140830%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd140753140825%_)))
                                                    (_%tl140766140832%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd140753140825%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd140765140830%_))
                                                    (let ((_%hd140767140835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd140765140830%_)))
                                                          (_%tl140768140837%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd140765140830%_))))
                                                      (let ((_%id140840%_
                                                             _%hd140767140835%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl140768140837%_))
                                                            (let ((_%hd140769140842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl140768140837%_)))
                          (_%tl140770140844%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140768140837%_))))
                      (let ((_%expr1140847%_ _%hd140769140842%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl140770140844%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl140766140832%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140754140827%_))
                                    (let ((_%hd140755140849%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140754140827%_)))
                                          (_%tl140756140851%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140754140827%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd140755140849%_))
                                          (let ((_%hd140757140854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd140755140849%_)))
                                                (_%tl140758140856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd140755140849%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd140757140854%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140758140856%_))
                                                    (let ((_%hd140759140859%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140758140856%_)))
                                                          (_%tl140760140861%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140758140856%_))))
                                                      (if ((lambda (_%g140863140865%_)
                                                             (eq? _%g140863140865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id140840%_))
                   _%hd140759140859%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl140760140861%_))
                      (let ((_%hd140761140868%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl140760140861%_)))
                            (_%tl140762140870%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl140760140861%_))))
                        (if ((lambda (_%g140872140874%_)
                               (eq? _%g140872140874%_ _%id140840%_))
                             _%hd140761140868%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140762140870%_))
                                (let ((_%hd140763140877%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140762140870%_)))
                                      (_%tl140764140879%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140762140870%_))))
                                  (let ((_%expr2140882%_ _%hd140763140877%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl140764140879%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl140756140851%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K140750140817%_
                                               _%expr2140882%_
                                               _%expr1140847%_
                                               _%id140840%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%else140748140780%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140748140780%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%else140748140780%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140748140780%_))))
                      (let () (declare (not safe)) (_%else140748140780%_)))
                  (let () (declare (not safe)) (_%else140748140780%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else140748140780%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else140748140780%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else140748140780%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else140748140780%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else140748140780%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140748140780%_)))))
                    (let () (declare (not safe)) (_%else140748140780%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else140748140780%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%else140748140780%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140748140780%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else140748140780%_))))
                              (let ()
                                (declare (not safe))
                                (_%else140748140780%_))))
                        _%code140745%_)))
                 (_%coalesce-let*140176%_
                  (lambda (_%code140478%_)
                    (let* ((_%code140479140543%_ _%code140478%_)
                           (_%else140483140551%_ (lambda () _%code140478%_)))
                      (let ((_%K140525140696%_
                             (lambda (_%body140692%_
                                      _%expr140693%_
                                      _%id140694%_)
                               (cons 'let
                                     (cons (cons (cons _%id140694%_
                                                       (cons _%expr140693%_
                                                             '()))
                                                 '())
                                           _%body140692%_))))
                            (_%K140502140621%_
                             (lambda (_%body140615%_
                                      _%expr2140616%_
                                      _%id2140617%_
                                      _%expr1140618%_
                                      _%id1140619%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140619%_
                                                       (cons _%expr1140618%_
                                                             '()))
                                                 (cons (cons _%id2140617%_
                                                             (cons _%expr2140616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body140615%_))))
                            (_%K140485140560%_
                             (lambda (_%body140555%_
                                      _%bind140556%_
                                      _%expr1140557%_
                                      _%id1140558%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140558%_
                                                       (cons _%expr1140557%_
                                                             '()))
                                                 _%bind140556%_)
                                           _%body140555%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code140479140543%_))
                            (let ((_%tl140527140701%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code140479140543%_)))
                                  (_%hd140526140699%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code140479140543%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140526140699%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl140527140701%_))
                                      (let ((_%tl140529140706%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl140527140701%_)))
                                            (_%hd140528140704%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl140527140701%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%hd140528140704%_))
                                            (let ((_%tl140537140711%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%hd140528140704%_)))
                                                  (_%hd140536140709%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%hd140528140704%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%hd140536140709%_))
                                                  (let ((_%tl140539140716%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%hd140536140709%_)))
                                                        (_%hd140538140714%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd140536140709%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl140539140716%_))
                                                        (let ((_%tl140541140723%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl140539140716%_)))
                      (_%hd140540140721%_
                       (let ()
                         (declare (not safe))
                         (##car _%tl140539140716%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl140541140723%_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl140537140711%_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%tl140529140706%_))
                              (let ((_%tl140531140730%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%tl140529140706%_)))
                                    (_%hd140530140728%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%tl140529140706%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd140530140728%_))
                                    (let ((_%tl140533140735%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd140530140728%_)))
                                          (_%hd140532140733%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd140530140728%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd140532140733%_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%tl140533140735%_))
                                              (let ((_%tl140535140740%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%tl140533140735%_)))
                                                    (_%hd140534140738%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%tl140533140735%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%hd140534140738%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%tl140531140730%_))
                                                        (let ((_%id140719%_
                                                               _%hd140538140714%_)
                                                              (_%expr140726%_
                                                               _%hd140540140721%_)
                                                              (_%body140743%_
                                                               _%tl140535140740%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K140525140696%_
                                                             _%body140743%_
                                                             _%expr140726%_
                                                             _%id140719%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%else140483140551%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%hd140534140738%_))
                                                        (let ((_%tl140514140670%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%hd140534140738%_)))
                      (_%hd140513140668%_
                       (let ()
                         (declare (not safe))
                         (##car _%hd140534140738%_))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%hd140513140668%_))
                      (let ((_%tl140516140675%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%hd140513140668%_)))
                            (_%hd140515140673%_
                             (let ()
                               (declare (not safe))
                               (##car _%hd140513140668%_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl140516140675%_))
                            (let ((_%tl140518140682%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl140516140675%_)))
                                  (_%hd140517140680%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl140516140675%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl140518140682%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140514140670%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140531140730%_))
                                          (let ((_%id1140644%_
                                                 _%hd140538140714%_)
                                                (_%expr1140651%_
                                                 _%hd140540140721%_)
                                                (_%id2140678%_
                                                 _%hd140515140673%_)
                                                (_%expr2140685%_
                                                 _%hd140517140680%_)
                                                (_%body140687%_
                                                 _%tl140535140740%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K140502140621%_
                                               _%body140687%_
                                               _%expr2140685%_
                                               _%id2140678%_
                                               _%expr1140651%_
                                               _%id1140644%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else140483140551%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else140483140551%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else140483140551%_))))
                            (let ()
                              (declare (not safe))
                              (_%else140483140551%_))))
                      (let () (declare (not safe)) (_%else140483140551%_))))
                (let () (declare (not safe)) (_%else140483140551%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%else140483140551%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140532140733%_
                                                       'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl140533140735%_))
                                                  (let ((_%tl140495140604%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl140533140735%_)))
                                                        (_%hd140494140602%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl140533140735%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%tl140531140730%_))
                                                        (let ((_%id1140583%_
                                                               _%hd140538140714%_)
                                                              (_%expr1140590%_
                                                               _%hd140540140721%_)
                                                              (_%bind140607%_
                                                               _%hd140494140602%_)
                                                              (_%body140609%_
                                                               _%tl140495140604%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K140485140560%_
                                                             _%body140609%_
                                                             _%bind140607%_
                                                             _%expr1140590%_
                                                             _%id1140583%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%else140483140551%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else140483140551%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%else140483140551%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else140483140551%_))))
                              (let ()
                                (declare (not safe))
                                (_%else140483140551%_)))
                          (let () (declare (not safe)) (_%else140483140551%_)))
                      (let () (declare (not safe)) (_%else140483140551%_))))
                (let () (declare (not safe)) (_%else140483140551%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else140483140551%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%else140483140551%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%else140483140551%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else140483140551%_))))
                            (let ()
                              (declare (not safe))
                              (_%else140483140551%_)))))))
                 (_%generate-values140177%_
                  (lambda (_%hd140291%_ _%body140292%_)
                    (let _%lp140294%_ ((_%rest140296%_ _%hd140291%_)
                                       (_%bind140297%_ '())
                                       (_%check140298%_ '())
                                       (_%post140299%_ '()))
                      (let* ((_%__stx144374144375%_ _%rest140296%_)
                             (_%g140302140313%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144374144375%_)))))
                        (let ((_%__kont144376144377%_
                               (lambda (_%L140340%_ _%L140341%_)
                                 (let* ((_%__stx144330144331%_ _%L140341%_)
                                        (_%g140356140381%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144330144331%_)))))
                                   (let ((_%__kont144332144333%_
                                          (lambda (_%L140454%_ _%L140455%_)
                                            (let ((_%eid140469%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140455%_)))
                                                  (_%expr140470%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140170%_
                                                      _%L140454%_))))
                                              (let ((__tmp145247
                                                     (cons (cons _%eid140469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140470%_ '()))
                   _%bind140297%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp140294%_
                                                 _%L140340%_
                                                 __tmp145247
                                                 _%check140298%_
                                                 _%post140299%_)))))
                                         (_%__kont144334144335%_
                                          (lambda (_%L140402%_ _%L140403%_)
                                            (let* ((_%vals140416%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140418%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals140416%_
                                                       _%L140403%_
                                                       _%L140402%_)))
                                                   (_%refs140420%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals140416%_
                                                       _%L140403%_)))
                                                   (_%expr140422%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140170%_
                                                       _%L140402%_))))
                                              (let ((__tmp145250
                                                     (cons (cons _%vals140416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140422%_ '()))
                   _%bind140297%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145249
                                                     (cons _%check-values140418%_
                                                           _%check140298%_))
                                                    (__tmp145248
                                                     (cons _%refs140420%_
                                                           _%post140299%_)))
                                                (declare (not safe))
                                                (_%lp140294%_
                                                 _%L140340%_
                                                 __tmp145250
                                                 __tmp145249
                                                 __tmp145248))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144330144331%_))
                                         (let ((_%e140362140430%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144330144331%_))))
                                           (let ((_%tl140360140435%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140362140430%_)))
                                                 (_%hd140361140433%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140362140430%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140361140433%_))
                                                 (let ((_%e140365140438%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140361140433%_))))
                                                   (let ((_%tl140363140443%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140365140438%_)))
                                                         (_%hd140364140441%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140365140438%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140363140443%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140360140435%_))
                     (let ((_%e140368140446%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140360140435%_))))
                       (let ((_%tl140366140451%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140368140446%_)))
                             (_%hd140367140449%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140368140446%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140366140451%_))
                             (_%__kont144332144333%_
                              _%hd140367140449%_
                              _%hd140364140441%_)
                             (let ()
                               (declare (not safe))
                               (_%g140356140381%_)))))
                     (let () (declare (not safe)) (_%g140356140381%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140360140435%_))
                     (let ((_%e140376140394%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140360140435%_))))
                       (let ((_%tl140374140399%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140376140394%_)))
                             (_%hd140375140397%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140376140394%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140374140399%_))
                             (_%__kont144334144335%_
                              _%hd140375140397%_
                              _%hd140361140433%_)
                             (let ()
                               (declare (not safe))
                               (_%g140356140381%_)))))
                     (let () (declare (not safe)) (_%g140356140381%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140360140435%_))
                                                     (let ((_%e140376140394%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140360140435%_))))
                                                       (let ((_%tl140374140399%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140376140394%_)))
                     (_%hd140375140397%_
                      (let () (declare (not safe)) (##car _%e140376140394%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140374140399%_))
                     (_%__kont144334144335%_
                      _%hd140375140397%_
                      _%hd140361140433%_)
                     (let () (declare (not safe)) (_%g140356140381%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140356140381%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140356140381%_)))))))
                              (_%__kont144378144379%_
                               (lambda ()
                                 (let* ((_%body140320%_
                                         (if _%compiled-body?140172%_
                                             _%body140292%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140170%_
                                                _%body140292%_))))
                                        (_%body140322%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post140178%_
                                            _%post140299%_
                                            _%body140320%_)))
                                        (_%body140324%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check140179%_
                                            _%check140298%_
                                            _%body140322%_))))
                                   (cons 'let
                                         (cons (reverse _%bind140297%_)
                                               (cons _%body140324%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144374144375%_))
                              (let ((_%e140308140332%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144374144375%_))))
                                (let ((_%tl140306140337%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140308140332%_)))
                                      (_%hd140307140335%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140308140332%_))))
                                  (_%__kont144376144377%_
                                   _%tl140306140337%_
                                   _%hd140307140335%_)))
                              (_%__kont144378144379%_)))))))
                 (_%generate-values-post140178%_
                  (lambda (_%post140250%_ _%body140251%_)
                    (let _%lp140253%_ ((_%rest140255%_ _%post140250%_)
                                       (_%body140256%_ _%body140251%_))
                      (let* ((_%rest140257140265%_ _%rest140255%_)
                             (_%else140259140273%_ (lambda () _%body140256%_))
                             (_%K140261140279%_
                              (lambda (_%rest140276%_ _%bind140277%_)
                                (let ((__tmp145251
                                       (cons 'let
                                             (cons _%bind140277%_
                                                   (cons _%body140256%_
                                                         '())))))
                                  (declare (not safe))
                                  (_%lp140253%_ _%rest140276%_ __tmp145251)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140257140265%_))
                            (let ((_%hd140262140282%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140257140265%_)))
                                  (_%tl140263140284%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140257140265%_))))
                              (let* ((_%bind140287%_ _%hd140262140282%_)
                                     (_%rest140289%_ _%tl140263140284%_))
                                (declare (not safe))
                                (_%K140261140279%_
                                 _%rest140289%_
                                 _%bind140287%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140259140273%_)))))))
                 (_%generate-values-check140179%_
                  (lambda (_%check140247%_ _%body140248%_)
                    (cons 'begin
                          (let ((__tmp145253 (cons _%body140248%_ '()))
                                (__tmp145252 (reverse _%check140247%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145253 __tmp145252))))))
          (let* ((_%g140181140198%_
                  (lambda (_%g140182140195%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140182140195%_))))
                 (_%g140180140244%_
                  (lambda (_%g140182140201%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140182140201%_))
                        (let ((_%e140187140203%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140182140201%_))))
                          (let ((_%hd140186140206%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140187140203%_)))
                                (_%tl140185140208%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140187140203%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140185140208%_))
                                (let ((_%e140190140211%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140185140208%_))))
                                  (let ((_%hd140189140214%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140190140211%_)))
                                        (_%tl140188140216%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140190140211%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140188140216%_))
                                        (let ((_%e140193140219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140188140216%_))))
                                          (let ((_%hd140192140222%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140193140219%_)))
                                                (_%tl140191140224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140193140219%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140191140224%_))
                                                ((lambda (_%L140227%_
                                                          _%L140228%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L140228%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple140174%_
                                                          _%L140228%_
                                                          _%L140227%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values140177%_
                                                          _%L140228%_
                                                          _%L140227%_))))
                                                 _%hd140192140222%_
                                                 _%hd140189140214%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140181140198%_
                                                   _%g140182140201%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140181140198%_
                                           _%g140182140201%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140181140198%_ _%g140182140201%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140181140198%_ _%g140182140201%_))))))
            (declare (not safe))
            (_%g140180140244%_ _%stx140171%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self140890%_ _%stx140891%_)
        (let ((_%compiled-body?140893%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _%self140890%_
           _%stx140891%_
           _%compiled-body?140893%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g145255_
        (let ((_g145254_ (let () (declare (not safe)) (##length _g145255_))))
          (cond ((let () (declare (not safe)) (##fx= _g145254_ 2))
                 (apply (lambda (_%self140890%_ _%stx140891%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _%self140890%_
                             _%stx140891%_)))
                        _g145255_))
                ((let () (declare (not safe)) (##fx= _g145254_ 3))
                 (apply (lambda (_%self140895%_
                                 _%stx140896%_
                                 _%compiled-body?140897%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _%self140895%_
                             _%stx140896%_
                             _%compiled-body?140897%_)))
                        _g145255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g145255_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals140064%_ _%hd140065%_)
        (let _%lp140067%_ ((_%rest140069%_ _%hd140065%_)
                           (_%k140070%_ '0)
                           (_%r140071%_ '()))
          (let* ((_%__stx144388144389%_ _%rest140069%_)
                 (_%g140076140093%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx144388144389%_)))))
            (let ((_%__kont144390144391%_
                   (lambda (_%L140156%_)
                     (let ((__tmp145256
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140070%_ '1))))
                       (declare (not safe))
                       (_%lp140067%_ _%L140156%_ __tmp145256 _%r140071%_))))
                  (_%__kont144392144393%_
                   (lambda (_%L140129%_ _%L140130%_)
                     (let ((__tmp145258
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k140070%_ '1)))
                           (__tmp145257
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140130%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values-ref
                                                 _%vals140064%_
                                                 _%k140070%_
                                                 _%L140129%_))
                                              '()))
                                  _%r140071%_)))
                       (declare (not safe))
                       (_%lp140067%_ _%L140129%_ __tmp145258 __tmp145257))))
                  (_%__kont144394144395%_
                   (lambda (_%L140105%_)
                     (let ((__tmp145259
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140105%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values->list
                                                 _%vals140064%_
                                                 _%k140070%_))
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp145259 _%r140071%_))))
                  (_%__kont144396144397%_ (lambda () (reverse _%r140071%_))))
              (let ((_%g140074140116%_
                     (lambda ()
                       (let ((_%L140105%_ _%__stx144388144389%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L140105%_))
                             (_%__kont144394144395%_ _%L140105%_)
                             (_%__kont144396144397%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx144388144389%_))
                    (let ((_%e140081140145%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx144388144389%_))))
                      (let ((_%tl140079140150%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140081140145%_)))
                            (_%hd140080140148%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140081140145%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd140080140148%_))
                            (let ((_%e140082140153%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd140080140148%_))))
                              (if (equal? _%e140082140153%_ '#f)
                                  (_%__kont144390144391%_ _%tl140079140150%_)
                                  (_%__kont144392144393%_
                                   _%tl140079140150%_
                                   _%hd140080140148%_)))
                            (_%__kont144392144393%_
                             _%tl140079140150%_
                             _%hd140080140148%_))))
                    (let () (declare (not safe)) (_%g140074140116%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self139743%_ _%stx139744%_ _%compiled-body?139745%_)
        (letrec ((_%generate-simple139747%_
                  (lambda (_%hd140049%_ _%body140050%_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _%self139743%_
                       'letrec
                       _%hd140049%_
                       _%body140050%_
                       _%compiled-body?139745%_))))
                 (_%generate-values139748%_
                  (lambda (_%hd139828%_ _%body139829%_)
                    (let _%lp139831%_ ((_%rest139833%_ _%hd139828%_)
                                       (_%bind139834%_ '())
                                       (_%check139835%_ '())
                                       (_%post139836%_ '()))
                      (let* ((_%__stx144462144463%_ _%rest139833%_)
                             (_%g139839139850%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144462144463%_)))))
                        (let ((_%__kont144464144465%_
                               (lambda (_%L139877%_ _%L139878%_)
                                 (let* ((_%__stx144418144419%_ _%L139878%_)
                                        (_%g139893139918%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144418144419%_)))))
                                   (let ((_%__kont144420144421%_
                                          (lambda (_%L140025%_ _%L140026%_)
                                            (let ((_%eid140040%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140026%_)))
                                                  (_%expr140041%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139743%_
                                                      _%L140025%_))))
                                              (let ((__tmp145260
                                                     (cons (cons _%eid140040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140041%_ '()))
                   _%bind139834%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp139831%_
                                                 _%L139877%_
                                                 __tmp145260
                                                 _%check139835%_
                                                 _%post139836%_)))))
                                         (_%__kont144422144423%_
                                          (lambda (_%L139939%_ _%L139940%_)
                                            (let* ((_%vals139953%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values139955%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals139953%_
                                                       _%L139940%_
                                                       _%L139939%_)))
                                                   (_%refs139957%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals139953%_
                                                       _%L139940%_)))
                                                   (_%expr139959%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self139743%_
                                                       _%L139939%_))))
                                              (let ((__tmp145263
                                                     (let ((__tmp145265
                                                            (cons (cons _%vals139953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%expr139959%_ '()))
                          _%bind139834%_))
                   (__tmp145264
                    (map (lambda (_%e139961139963%_)
                           (let* ((_%g139965139974%_ _%e139961139963%_)
                                  (_%E139967139978%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%g139965139974%_
                                              '([eid _])))
                                     '#!void))
                                  (_%K139968139983%_
                                   (lambda (_%eid139981%_)
                                     (cons _%eid139981%_ (cons '#!void '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%g139965139974%_))
                                 (let ((_%hd139969139986%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%g139965139974%_)))
                                       (_%tl139970139988%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%g139965139974%_))))
                                   (let ((_%eid139991%_ _%hd139969139986%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _%tl139970139988%_))
                                         (let ((_%tl139972139993%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%tl139970139988%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _%tl139972139993%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%K139968139983%_
                                                  _%eid139991%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%E139967139978%_))))
                                         (let ()
                                           (declare (not safe))
                                           (_%E139967139978%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%E139967139978%_)))))
                         _%refs139957%_)))
               (declare (not safe))
               (__foldl1 cons __tmp145265 __tmp145264)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145262
                                                     (cons _%check-values139955%_
                                                           _%check139835%_))
                                                    (__tmp145261
                                                     (let ()
                                                       (declare (not safe))
                                                       (__foldl1
                                                        cons
                                                        _%refs139957%_
                                                        _%post139836%_))))
                                                (declare (not safe))
                                                (_%lp139831%_
                                                 _%L139877%_
                                                 __tmp145263
                                                 __tmp145262
                                                 __tmp145261))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144418144419%_))
                                         (let ((_%e139899140001%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144418144419%_))))
                                           (let ((_%tl139897140006%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139899140001%_)))
                                                 (_%hd139898140004%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139899140001%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd139898140004%_))
                                                 (let ((_%e139902140009%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd139898140004%_))))
                                                   (let ((_%tl139900140014%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139902140009%_)))
                                                         (_%hd139901140012%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139902140009%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139900140014%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139897140006%_))
                     (let ((_%e139905140017%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139897140006%_))))
                       (let ((_%tl139903140022%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139905140017%_)))
                             (_%hd139904140020%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139905140017%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139903140022%_))
                             (_%__kont144420144421%_
                              _%hd139904140020%_
                              _%hd139901140012%_)
                             (let ()
                               (declare (not safe))
                               (_%g139893139918%_)))))
                     (let () (declare (not safe)) (_%g139893139918%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl139897140006%_))
                     (let ((_%e139913139931%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139897140006%_))))
                       (let ((_%tl139911139936%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139913139931%_)))
                             (_%hd139912139934%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139913139931%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139911139936%_))
                             (_%__kont144422144423%_
                              _%hd139912139934%_
                              _%hd139898140004%_)
                             (let ()
                               (declare (not safe))
                               (_%g139893139918%_)))))
                     (let () (declare (not safe)) (_%g139893139918%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139897140006%_))
                                                     (let ((_%e139913139931%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139897140006%_))))
                                                       (let ((_%tl139911139936%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139913139931%_)))
                     (_%hd139912139934%_
                      (let () (declare (not safe)) (##car _%e139913139931%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139911139936%_))
                     (_%__kont144422144423%_
                      _%hd139912139934%_
                      _%hd139898140004%_)
                     (let () (declare (not safe)) (_%g139893139918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g139893139918%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g139893139918%_)))))))
                              (_%__kont144466144467%_
                               (lambda ()
                                 (let* ((_%body139857%_
                                         (if _%compiled-body?139745%_
                                             _%body139829%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self139743%_
                                                _%body139829%_))))
                                        (_%body139859%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post139750%_
                                            _%post139836%_
                                            _%body139857%_)))
                                        (_%body139861%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check139749%_
                                            _%check139835%_
                                            _%body139859%_))))
                                   (cons 'letrec
                                         (cons (reverse _%bind139834%_)
                                               (cons _%body139861%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144462144463%_))
                              (let ((_%e139845139869%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144462144463%_))))
                                (let ((_%tl139843139874%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139845139869%_)))
                                      (_%hd139844139872%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139845139869%_))))
                                  (_%__kont144464144465%_
                                   _%tl139843139874%_
                                   _%hd139844139872%_)))
                              (_%__kont144466144467%_)))))))
                 (_%generate-values-check139749%_
                  (lambda (_%check139825%_ _%body139826%_)
                    (cons 'begin
                          (let ((__tmp145267 (cons _%body139826%_ '()))
                                (__tmp145266 (reverse _%check139825%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145267 __tmp145266)))))
                 (_%generate-values-post139750%_
                  (lambda (_%post139818%_ _%body139819%_)
                    (cons 'begin
                          (let ((__tmp145271 (cons _%body139819%_ '()))
                                (__tmp145268
                                 (let ((__tmp145270
                                        (lambda (_%g139820139822%_)
                                          (cons 'set! _%g139820139822%_)))
                                       (__tmp145269 (reverse _%post139818%_)))
                                   (declare (not safe))
                                   (##map __tmp145270 __tmp145269))))
                            (declare (not safe))
                            (__foldr1 cons __tmp145271 __tmp145268))))))
          (let* ((_%g139752139769%_
                  (lambda (_%g139753139766%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139753139766%_))))
                 (_%g139751139815%_
                  (lambda (_%g139753139772%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139753139772%_))
                        (let ((_%e139758139774%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139753139772%_))))
                          (let ((_%hd139757139777%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139758139774%_)))
                                (_%tl139756139779%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139758139774%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139756139779%_))
                                (let ((_%e139761139782%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139756139779%_))))
                                  (let ((_%hd139760139785%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139761139782%_)))
                                        (_%tl139759139787%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139761139782%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139759139787%_))
                                        (let ((_%e139764139790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139759139787%_))))
                                          (let ((_%hd139763139793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139764139790%_)))
                                                (_%tl139762139795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139764139790%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139762139795%_))
                                                ((lambda (_%L139798%_
                                                          _%L139799%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L139799%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple139747%_
                                                          _%L139799%_
                                                          _%L139798%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values139748%_
                                                          _%L139799%_
                                                          _%L139798%_))))
                                                 _%hd139763139793%_
                                                 _%hd139760139785%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g139752139769%_
                                                   _%g139753139772%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139752139769%_
                                           _%g139753139772%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139752139769%_ _%g139753139772%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139752139769%_ _%g139753139772%_))))))
            (declare (not safe))
            (_%g139751139815%_ _%stx139744%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self140055%_ _%stx140056%_)
        (let ((_%compiled-body?140058%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _%self140055%_
           _%stx140056%_
           _%compiled-body?140058%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g145273_
        (let ((_g145272_ (let () (declare (not safe)) (##length _g145273_))))
          (cond ((let () (declare (not safe)) (##fx= _g145272_ 2))
                 (apply (lambda (_%self140055%_ _%stx140056%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _%self140055%_
                             _%stx140056%_)))
                        _g145273_))
                ((let () (declare (not safe)) (##fx= _g145272_ 3))
                 (apply (lambda (_%self140060%_
                                 _%stx140061%_
                                 _%compiled-body?140062%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _%self140060%_
                             _%stx140061%_
                             _%compiled-body?140062%_)))
                        _g145273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g145273_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self139324%_ _%stx139325%_)
        (letrec ((_%generate-values139327%_
                  (lambda (_%hd139570%_ _%body139571%_)
                    (let _%lp139573%_ ((_%rest139575%_ _%hd139570%_)
                                       (_%bind139576%_ '()))
                      (let* ((_%rest139577139585%_ _%rest139575%_)
                             (_%else139579139596%_
                              (lambda ()
                                (let ((_%bind139593%_ (reverse _%bind139576%_))
                                      (_%body139594%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139324%_
                                          _%body139571%_))))
                                  (cons 'letrec*
                                        (cons _%bind139593%_
                                              (cons _%body139594%_ '()))))))
                             (_%K139581139730%_
                              (lambda (_%rest139599%_ _%hd-bind139600%_)
                                (let* ((_%__stx144476144477%_
                                        _%hd-bind139600%_)
                                       (_%g139603139628%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx144476144477%_)))))
                                  (let ((_%__kont144478144479%_
                                         (lambda (_%L139709%_ _%L139710%_)
                                           (let ((_%eid139724%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L139710%_)))
                                                 (_%expr139725%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self139324%_
                                                     _%L139709%_))))
                                             (let ((__tmp145274
                                                    (cons (cons _%eid139724%_
                                                                (cons _%expr139725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind139576%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp139573%_
                                                _%rest139599%_
                                                __tmp145274)))))
                                        (_%__kont144480144481%_
                                         (lambda (_%L139649%_ _%L139650%_)
                                           (let* ((_%vals139669%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp139671%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values139673%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _%tmp139671%_
                                                      _%L139650%_
                                                      _%L139649%_)))
                                                  (_%refs139675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _%vals139669%_
                                                      _%L139650%_)))
                                                  (_%expr139677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139324%_
                                                      _%L139649%_))))
                                             (let ((__tmp145275
                                                    (let ((__tmp145276
                                                           (cons (cons _%vals139669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'let
                                           (cons (cons (cons _%tmp139671%_
                                                             (cons _%expr139677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%check-values139673%_
                                                       (cons _%tmp139671%_
                                                             '()))))
                                     '()))
                         _%bind139576%_)))
              (declare (not safe))
              (__foldl1 cons __tmp145276 _%refs139675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp139573%_
                                                _%rest139599%_
                                                __tmp145275))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144476144477%_))
                                        (let ((_%e139609139685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144476144477%_))))
                                          (let ((_%tl139607139690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139609139685%_)))
                                                (_%hd139608139688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139609139685%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd139608139688%_))
                                                (let ((_%e139612139693%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd139608139688%_))))
                                                  (let ((_%tl139610139698%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139612139693%_)))
                                                        (_%hd139611139696%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139612139693%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139610139698%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl139607139690%_))
                                                            (let ((_%e139615139701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139607139690%_))))
                      (let ((_%tl139613139706%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139615139701%_)))
                            (_%hd139614139704%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139615139701%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139613139706%_))
                            (_%__kont144478144479%_
                             _%hd139614139704%_
                             _%hd139611139696%_)
                            (let ()
                              (declare (not safe))
                              (_%g139603139628%_)))))
                    (let () (declare (not safe)) (_%g139603139628%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl139607139690%_))
                    (let ((_%e139623139641%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139607139690%_))))
                      (let ((_%tl139621139646%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139623139641%_)))
                            (_%hd139622139644%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139623139641%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139621139646%_))
                            (_%__kont144480144481%_
                             _%hd139622139644%_
                             _%hd139608139688%_)
                            (let ()
                              (declare (not safe))
                              (_%g139603139628%_)))))
                    (let () (declare (not safe)) (_%g139603139628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139607139690%_))
                                                    (let ((_%e139623139641%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139607139690%_))))
                                                      (let ((_%tl139621139646%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139623139641%_)))
                    (_%hd139622139644%_
                     (let () (declare (not safe)) (##car _%e139623139641%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139621139646%_))
                    (_%__kont144480144481%_
                     _%hd139622139644%_
                     _%hd139608139688%_)
                    (let () (declare (not safe)) (_%g139603139628%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g139603139628%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139603139628%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139577139585%_))
                            (let ((_%hd139582139733%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139577139585%_)))
                                  (_%tl139583139735%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139577139585%_))))
                              (let* ((_%hd-bind139738%_ _%hd139582139733%_)
                                     (_%rest139740%_ _%tl139583139735%_))
                                (declare (not safe))
                                (_%K139581139730%_
                                 _%rest139740%_
                                 _%hd-bind139738%_)))
                            (let ()
                              (declare (not safe))
                              (_%else139579139596%_)))))))
                 (_%generate-letrec?139328%_
                  (lambda (_%hd139460%_)
                    (let _%lp139462%_ ((_%rest139464%_ _%hd139460%_))
                      (let* ((_%rest139465139473%_ _%rest139464%_)
                             (_%else139467139481%_ (lambda () '#t))
                             (_%K139469139558%_
                              (lambda (_%rest139484%_ _%hd-bind139485%_)
                                (let* ((_%g139487139504%_
                                        (lambda (_%g139488139501%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g139488139501%_))))
                                       (_%g139486139555%_
                                        (lambda (_%g139488139507%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g139488139507%_))
                                              (let ((_%e139493139509%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g139488139507%_))))
                                                (let ((_%hd139492139512%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139493139509%_)))
                                                      (_%tl139491139514%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139493139509%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd139492139512%_))
                                                      (let ((_%e139496139517%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd139492139512%_))))
                (let ((_%hd139495139520%_
                       (let () (declare (not safe)) (##car _%e139496139517%_)))
                      (_%tl139494139522%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139496139517%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139494139522%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139491139514%_))
                          (let ((_%e139499139525%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139491139514%_))))
                            (let ((_%hd139498139528%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139499139525%_)))
                                  (_%tl139497139530%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139499139525%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl139497139530%_))
                                  ((lambda (_%L139533%_ _%L139534%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%is-lambda-expr?139329%_
                                            _%L139533%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%lp139462%_ _%rest139484%_))
                                         '#f))
                                   _%hd139498139528%_
                                   _%hd139495139520%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g139487139504%_ _%g139488139507%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g139487139504%_ _%g139488139507%_)))
                      (let ()
                        (declare (not safe))
                        (_%g139487139504%_ _%g139488139507%_)))))
              (let ()
                (declare (not safe))
                (_%g139487139504%_ _%g139488139507%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g139487139504%_
                                                 _%g139488139507%_))))))
                                  (declare (not safe))
                                  (_%g139486139555%_ _%hd-bind139485%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139465139473%_))
                            (let ((_%hd139470139561%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139465139473%_)))
                                  (_%tl139471139563%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139465139473%_))))
                              (let* ((_%hd-bind139566%_ _%hd139470139561%_)
                                     (_%rest139568%_ _%tl139471139563%_))
                                (declare (not safe))
                                (_%K139469139558%_
                                 _%rest139568%_
                                 _%hd-bind139566%_)))
                            (let ()
                              (declare (not safe))
                              (_%else139467139481%_)))))))
                 (_%is-lambda-expr?139329%_
                  (lambda (_%expr139397%_)
                    (let* ((_%__stx144520144521%_ _%expr139397%_)
                           (_%g139400139414%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144520144521%_)))))
                      (let ((_%__kont144522144523%_
                             (lambda (_%L139442%_ _%L139443%_) '#t))
                            (_%__kont144524144525%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx144520144521%_))
                            (let ((_%e139406139426%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx144520144521%_))))
                              (let ((_%tl139404139431%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139406139426%_)))
                                    (_%hd139405139429%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139406139426%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd139405139429%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd139405139429%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl139404139431%_))
                                            (let ((_%e139409139434%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl139404139431%_))))
                                              (let ((_%tl139407139439%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139409139434%_)))
                                                    (_%hd139408139437%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139409139434%_))))
                                                (_%__kont144522144523%_
                                                 _%tl139407139439%_
                                                 _%hd139408139437%_)))
                                            (_%__kont144524144525%_))
                                        (_%__kont144524144525%_))
                                    (_%__kont144524144525%_))))
                            (_%__kont144524144525%_)))))))
          (let* ((_%g139331139348%_
                  (lambda (_%g139332139345%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139332139345%_))))
                 (_%g139330139394%_
                  (lambda (_%g139332139351%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139332139351%_))
                        (let ((_%e139337139353%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139332139351%_))))
                          (let ((_%hd139336139356%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139337139353%_)))
                                (_%tl139335139358%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139337139353%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139335139358%_))
                                (let ((_%e139340139361%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139335139358%_))))
                                  (let ((_%hd139339139364%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139340139361%_)))
                                        (_%tl139338139366%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139340139361%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139338139366%_))
                                        (let ((_%e139343139369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139338139366%_))))
                                          (let ((_%hd139342139372%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139343139369%_)))
                                                (_%tl139341139374%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139343139369%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139341139374%_))
                                                ((lambda (_%L139377%_
                                                          _%L139378%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L139378%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-letrec?139328%_
                                                              _%L139378%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139324%_
                                                              'letrec
                                                              _%L139378%_
                                                              _%L139377%_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139324%_
                                                              'letrec*
                                                              _%L139378%_
                                                              _%L139377%_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values139327%_
                                                          _%L139378%_
                                                          _%L139377%_))))
                                                 _%hd139342139372%_
                                                 _%hd139339139364%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g139331139348%_
                                                   _%g139332139351%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139331139348%_
                                           _%g139332139351%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139331139348%_ _%g139332139351%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139331139348%_ _%g139332139351%_))))))
            (declare (not safe))
            (_%g139330139394%_ _%stx139325%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd139261%_)
        (let _%lp139263%_ ((_%rest139265%_ _%hd139261%_))
          (let* ((_%rest139266139282%_ _%rest139265%_)
                 (_%else139269139290%_ (lambda () '#f)))
            (let ((_%K139272139303%_
                   (lambda (_%rest139301%_)
                     (let ()
                       (declare (not safe))
                       (_%lp139263%_ _%rest139301%_))))
                  (_%K139271139295%_ (lambda () '#t)))
              (let ((_%try-match139268139298%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest139266139282%_))
                           (let () (declare (not safe)) (_%K139271139295%_))
                           (let ()
                             (declare (not safe))
                             (_%else139269139290%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139266139282%_))
                    (let ((_%tl139274139308%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139266139282%_)))
                          (_%hd139273139306%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139266139282%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd139273139306%_))
                          (let ((_%tl139276139313%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd139273139306%_)))
                                (_%hd139275139311%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd139273139306%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139275139311%_))
                                (let ((_%tl139280139316%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139275139311%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl139280139316%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl139276139313%_))
                                          (let ((_%tl139278139319%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl139276139313%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl139278139319%_))
                                                (let ((_%rest139322%_
                                                       _%tl139274139308%_))
                                                  (declare (not safe))
                                                  (_%lp139263%_
                                                   _%rest139322%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else139269139290%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else139269139290%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else139269139290%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else139269139290%_))))
                          (let ()
                            (declare (not safe))
                            (_%else139269139290%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match139268139298%_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self139172%_
               _%form139173%_
               _%hd139174%_
               _%body139175%_
               _%compiled-body?139176%_)
        (letrec ((_%generate1139178%_
                  (lambda (_%bind139217%_)
                    (let* ((_%bind139218139229%_ _%bind139217%_)
                           (_%E139220139233%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind139218139229%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K139221139239%_
                            (lambda (_%expr139236%_ _%id139237%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id139237%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self139172%_
                                             _%expr139236%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind139218139229%_))
                          (let ((_%hd139222139242%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind139218139229%_)))
                                (_%tl139223139244%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind139218139229%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139222139242%_))
                                (let ((_%hd139226139247%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd139222139242%_)))
                                      (_%tl139227139249%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139222139242%_))))
                                  (let ((_%id139252%_ _%hd139226139247%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl139227139249%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl139223139244%_))
                                            (let ((_%hd139224139254%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl139223139244%_)))
                                                  (_%tl139225139256%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl139223139244%_))))
                                              (let ((_%expr139259%_
                                                     _%hd139224139254%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl139225139256%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K139221139239%_
                                                       _%expr139259%_
                                                       _%id139252%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E139220139233%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%E139220139233%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E139220139233%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%E139220139233%_))))
                          (let ()
                            (declare (not safe))
                            (_%E139220139233%_)))))))
          (let* ((_%bind139180%_ (map _%generate1139178%_ _%hd139174%_))
                 (_%body139182%_
                  (if _%compiled-body?139176%_
                      _%body139175%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self139172%_ _%body139175%_))))
                 (_%body139214%_
                  (let* ((_%body139183139191%_ _%body139182%_)
                         (_%else139185139199%_
                          (lambda () (cons _%body139182%_ '())))
                         (_%K139187139204%_
                          (lambda (_%exprs139202%_) _%exprs139202%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body139183139191%_))
                        (let ((_%hd139188139207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body139183139191%_)))
                              (_%tl139189139209%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body139183139191%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd139188139207%_ 'begin))
                              (let ((_%exprs139212%_ _%tl139189139209%_))
                                (declare (not safe))
                                (_%K139187139204%_ _%exprs139212%_))
                              (let ()
                                (declare (not safe))
                                (_%else139185139199%_))))
                        (let ()
                          (declare (not safe))
                          (_%else139185139199%_))))))
            (cons _%form139173%_ (cons _%bind139180%_ _%body139214%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self139072%_ _%stx139073%_)
        (letrec ((_%generate1139075%_
                  (lambda (_%datum139127%_)
                    (if (or (let ()
                              (declare (not safe))
                              (null? _%datum139127%_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum139127%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum139127%_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _%datum139127%_)))
                        (let () _%datum139127%_)
                        (if (uninterned-symbol? _%datum139127%_)
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-gensym-reference__%
                                 _%datum139127%_
                                 '#t)))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%datum139127%_))
                                (let ()
                                  (cons (let ((__tmp145277
                                               (car _%datum139127%_)))
                                          (declare (not safe))
                                          (_%generate1139075%_ __tmp145277))
                                        (let ((__tmp145278
                                               (cdr _%datum139127%_)))
                                          (declare (not safe))
                                          (_%generate1139075%_ __tmp145278))))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _%datum139127%_))
                                    (let ()
                                      (box (let ((__tmp145279
                                                  (unbox _%datum139127%_)))
                                             (declare (not safe))
                                             (_%generate1139075%_
                                              __tmp145279))))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _%datum139127%_))
                                        (let ()
                                          (vector-map
                                           _%generate1139075%_
                                           _%datum139127%_))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (s8vector? _%datum139127%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _%datum139127%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s16vector? _%datum139127%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u16vector? _%datum139127%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s32vector? _%datum139127%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u32vector? _%datum139127%_))
                                                (s64vector? _%datum139127%_)
                                                (u64vector? _%datum139127%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (f32vector? _%datum139127%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (f64vector?
                                                   _%datum139127%_)))
                                            (let () _%datum139127%_)
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"Cannot compile non-primitive quote"
                                                 _%stx139073%_))))))))))))
          (let* ((_%g139077139090%_
                  (lambda (_%g139078139087%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139078139087%_))))
                 (_%g139076139124%_
                  (lambda (_%g139078139093%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139078139093%_))
                        (let ((_%e139082139095%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139078139093%_))))
                          (let ((_%hd139081139098%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139082139095%_)))
                                (_%tl139080139100%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139082139095%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139080139100%_))
                                (let ((_%e139085139103%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139080139100%_))))
                                  (let ((_%hd139084139106%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139085139103%_)))
                                        (_%tl139083139108%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139085139103%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl139083139108%_))
                                        ((lambda (_%L139111%_)
                                           (cons 'quote
                                                 (cons (let ((__tmp145280
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%L139111%_))))
                 (declare (not safe))
                 (_%generate1139075%_ __tmp145280))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd139084139106%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g139077139090%_
                                           _%g139078139093%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139077139090%_ _%g139078139093%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139077139090%_ _%g139078139093%_))))))
            (declare (not safe))
            (_%g139076139124%_ _%stx139073%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self138513%_ _%stx138514%_)
        (letrec ((_%compile-call138516%_
                  (lambda (_%rator138805%_ _%rands138806%_)
                    (let ((_%rator138812%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self138513%_
                              _%rator138805%_)))
                          (_%rands138813%_
                           (map (lambda (_%g138807138809%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self138513%_
                                     _%g138807138809%_)))
                                _%rands138806%_)))
                      (let* ((_%__stx144567144568%_ _%rator138812%_)
                             (_%g138816138868%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144567144568%_)))))
                        (let ((_%__kont144569144570%_
                               (lambda (_%L138992%_
                                        _%L138993%_
                                        _%L138994%_
                                        _%L138995%_)
                                 (if (let ((__tmp145283
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands138813%_)))
                                           (__tmp145281
                                            (length (let ((__tmp145282
                                                           (lambda (_%g139031139034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g139032139036%_)
                     (cons _%g139031139034%_ _%g139032139036%_))))
              (declare (not safe))
              (__foldr1 __tmp145282 '() _%L138994%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145283 __tmp145281))
                                     (let* ((_%id139039%_ _%L138995%_)
                                            (_%args139048%_
                                             (let ((__tmp145284
                                                    (lambda (_%g139040139043%_
                                                             _%g139041139045%_)
                                                      (cons _%g139040139043%_
                                                            _%g139041139045%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145284
                                                '()
                                                _%L138994%_)))
                                            (_%body139057%_
                                             (let ((__tmp145285
                                                    (lambda (_%g139049139052%_
                                                             _%g139050139054%_)
                                                      (cons _%g139049139052%_
                                                            _%g139050139054%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145285
                                                '()
                                                _%L138993%_)))
                                            (_%init139059%_
                                             (map list
                                                  _%args139048%_
                                                  _%rands138813%_)))
                                       (cons 'let
                                             (cons _%id139039%_
                                                   (cons _%init139059%_
                                                         _%body139057%_))))
                                     (let ((__tmp145286
                                            (let ((__tmp145287
                                                   (lambda (_%g139061139064%_
                                                            _%g139062139066%_)
                                                     (cons _%g139061139064%_
                                                           _%g139062139066%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145287
                                               '()
                                               _%L138994%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx138514%_
                                        __tmp145286
                                        _%rands138813%_)))))
                              (_%__kont144575144576%_
                               (lambda ()
                                 (cons _%rator138812%_ _%rands138813%_))))
                          (let ((_%__match144634144635%_
                                 (lambda (_%e138824138880%_
                                          _%hd138823138883%_
                                          _%tl138822138885%_
                                          _%e138827138888%_
                                          _%hd138826138891%_
                                          _%tl138825138893%_
                                          _%e138830138896%_
                                          _%hd138829138899%_
                                          _%tl138828138901%_
                                          _%e138833138904%_
                                          _%hd138832138907%_
                                          _%tl138831138909%_
                                          _%e138836138912%_
                                          _%hd138835138915%_
                                          _%tl138834138917%_
                                          _%e138839138920%_
                                          _%hd138838138923%_
                                          _%tl138837138925%_
                                          _%e138842138928%_
                                          _%hd138841138931%_
                                          _%tl138840138933%_
                                          _%__splice144571144572%_
                                          _%target138843138936%_
                                          _%tl138845138938%_)
                                   (letrec ((_%loop138846138941%_
                                             (lambda (_%hd138844138944%_
                                                      _%arg138850138946%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd138844138944%_))
                                                   (let ((_%e138847138949%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd138844138944%_))))
                                                     (let ((_%lp-tl138849138954%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e138847138949%_)))
                                                           (_%lp-hd138848138952%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e138847138949%_))))
                                                       (let ((__tmp145288
                                                              (cons _%lp-hd138848138952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%arg138850138946%_)))
                 (declare (not safe))
                 (_%loop138846138941%_ _%lp-tl138849138954%_ __tmp145288))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%arg138851138957%_
                                                          (reverse _%arg138850138946%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl138840138933%_))
                                                         (let ((_%__splice144573144574%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl138840138933%_ '0))))
                   (let ((_%tl138854138962%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144573144574%_ '1)))
                         (_%target138852138960%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144573144574%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl138854138962%_))
                         (letrec ((_%loop138855138965%_
                                   (lambda (_%hd138853138968%_
                                            _%body138859138970%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd138853138968%_))
                                         (let ((_%e138856138973%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd138853138968%_))))
                                           (let ((_%lp-tl138858138978%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e138856138973%_)))
                                                 (_%lp-hd138857138976%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e138856138973%_))))
                                             (let ((__tmp145289
                                                    (cons _%lp-hd138857138976%_
                                                          _%body138859138970%_)))
                                               (declare (not safe))
                                               (_%loop138855138965%_
                                                _%lp-tl138858138978%_
                                                __tmp145289))))
                                         (let ((_%body138860138981%_
                                                (reverse _%body138859138970%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl138834138917%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl138828138901%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl138825138893%_))
                                                       (let ((_%e138863138984%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl138825138893%_))))
                 (let ((_%tl138861138989%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e138863138984%_)))
                       (_%hd138862138987%_
                        (let ()
                          (declare (not safe))
                          (##car _%e138863138984%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl138861138989%_))
                       (let ((_%L138992%_ _%hd138862138987%_)
                             (_%L138993%_ _%body138860138981%_)
                             (_%L138994%_ _%arg138851138957%_)
                             (_%L138995%_ _%hd138832138907%_))
                         (if (eq? _%L138995%_ _%L138992%_)
                             (_%__kont144569144570%_
                              _%L138992%_
                              _%L138993%_
                              _%L138994%_
                              _%L138995%_)
                             (_%__kont144575144576%_)))
                       (_%__kont144575144576%_))))
               (_%__kont144575144576%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144575144576%_))
                                               (_%__kont144575144576%_)))))))
                           (let ()
                             (declare (not safe))
                             (_%loop138855138965%_
                              _%target138852138960%_
                              '())))
                         (_%__kont144575144576%_))))
                 (_%__kont144575144576%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_%loop138846138941%_
                                        _%target138843138936%_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144567144568%_))
                                (let ((_%e138824138880%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144567144568%_))))
                                  (let ((_%tl138822138885%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138824138880%_)))
                                        (_%hd138823138883%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138824138880%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138823138883%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd138823138883%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138822138885%_))
                                                (let ((_%e138827138888%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138822138885%_))))
                                                  (let ((_%tl138825138893%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138827138888%_)))
                                                        (_%hd138826138891%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138827138888%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd138826138891%_))
                                                        (let ((_%e138830138896%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd138826138891%_))))
                  (let ((_%tl138828138901%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138830138896%_)))
                        (_%hd138829138899%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138830138896%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd138829138899%_))
                        (let ((_%e138833138904%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd138829138899%_))))
                          (let ((_%tl138831138909%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138833138904%_)))
                                (_%hd138832138907%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138833138904%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138831138909%_))
                                (let ((_%e138836138912%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138831138909%_))))
                                  (let ((_%tl138834138917%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138836138912%_)))
                                        (_%hd138835138915%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138836138912%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd138835138915%_))
                                        (let ((_%e138839138920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd138835138915%_))))
                                          (let ((_%tl138837138925%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138839138920%_)))
                                                (_%hd138838138923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138839138920%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd138838138923%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd138838138923%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl138837138925%_))
                                                        (let ((_%e138842138928%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl138837138925%_))))
                  (let ((_%tl138840138933%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138842138928%_)))
                        (_%hd138841138931%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138842138928%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd138841138931%_))
                        (let ((_%__splice144571144572%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd138841138931%_
                                  '0))))
                          (let ((_%tl138845138938%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice144571144572%_ '1)))
                                (_%target138843138936%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice144571144572%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl138845138938%_))
                                (_%__match144634144635%_
                                 _%e138824138880%_
                                 _%hd138823138883%_
                                 _%tl138822138885%_
                                 _%e138827138888%_
                                 _%hd138826138891%_
                                 _%tl138825138893%_
                                 _%e138830138896%_
                                 _%hd138829138899%_
                                 _%tl138828138901%_
                                 _%e138833138904%_
                                 _%hd138832138907%_
                                 _%tl138831138909%_
                                 _%e138836138912%_
                                 _%hd138835138915%_
                                 _%tl138834138917%_
                                 _%e138839138920%_
                                 _%hd138838138923%_
                                 _%tl138837138925%_
                                 _%e138842138928%_
                                 _%hd138841138931%_
                                 _%tl138840138933%_
                                 _%__splice144571144572%_
                                 _%target138843138936%_
                                 _%tl138845138938%_)
                                (_%__kont144575144576%_))))
                        (_%__kont144575144576%_))))
                (_%__kont144575144576%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144575144576%_))
                                                (_%__kont144575144576%_))))
                                        (_%__kont144575144576%_))))
                                (_%__kont144575144576%_))))
                        (_%__kont144575144576%_))))
                (_%__kont144575144576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144575144576%_))
                                            (_%__kont144575144576%_))
                                        (_%__kont144575144576%_))))
                                (_%__kont144575144576%_)))))))))
          (let* ((_%g138518138541%_
                  (lambda (_%g138519138538%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138519138538%_))))
                 (_%g138517138802%_
                  (lambda (_%g138519138544%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138519138544%_))
                        (let ((_%e138524138546%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138519138544%_))))
                          (let ((_%hd138523138549%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138524138546%_)))
                                (_%tl138522138551%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138524138546%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138522138551%_))
                                (let ((_%e138527138554%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138522138551%_))))
                                  (let ((_%hd138526138557%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138527138554%_)))
                                        (_%tl138525138559%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138527138554%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl138525138559%_))
                                        (let ((_g145290_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl138525138559%_
                                                  '0))))
                                          (begin
                                            (let ((_g145291_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g145290_)
                                                         (##vector-length
                                                          _g145290_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g145291_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g145291_)))
                                            (let ((_%target138528138562%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145290_
                                                      0)))
                                                  (_%tl138530138564%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145290_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl138530138564%_))
                                                  (letrec ((_%loop138531138567%_
                                                            (lambda (_%hd138529138570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand138535138572%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd138529138570%_))
                          (let ((_%e138532138575%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd138529138570%_))))
                            (let ((_%lp-hd138533138578%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138532138575%_)))
                                  (_%lp-tl138534138580%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138532138575%_))))
                              (let ((__tmp145292
                                     (cons _%lp-hd138533138578%_
                                           _%rand138535138572%_)))
                                (declare (not safe))
                                (_%loop138531138567%_
                                 _%lp-tl138534138580%_
                                 __tmp145292))))
                          (let ((_%rand138536138583%_
                                 (reverse _%rand138535138572%_)))
                            ((lambda (_%L138586%_ _%L138587%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls-unsafe?))
                                   (let ((__tmp145293
                                          (let ((__tmp145294
                                                 (lambda (_%g138604138607%_
                                                          _%g138605138609%_)
                                                   (cons _%g138604138607%_
                                                         _%g138605138609%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp145294
                                             '()
                                             _%L138586%_))))
                                     (declare (not safe))
                                     (_%compile-call138516%_
                                      _%L138587%_
                                      __tmp145293))
                                   (let* ((_%__stx144683144684%_ _%L138587%_)
                                          (_%g138613138625%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx144683144684%_)))))
                                     (let ((_%__kont144685144686%_
                                            (lambda ()
                                              (let ((_%f138662%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138513%_
                                                        _%L138587%_))))
                                                (if (and (let ((__tmp145295
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f138662%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp145295))
                 (let ((__tmp145296
                        (let ()
                          (declare (not safe))
                          (##memq _%f138662%_ gxc#checked-primitives))))
                   (declare (not safe))
                   (not __tmp145296)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp138664%_ ((_%rest138667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp145302
                                                (lambda (_%g138784138787%_
                                                         _%g138785138789%_)
                                                  (cons _%g138784138787%_
                                                        _%g138785138789%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp145302
                                            '()
                                            _%L138586%_))))
                               (_%bind138669%_ '())
                               (_%args138670%_ '()))
              (let* ((_%rest138671138679%_ _%rest138667%_)
                     (_%else138673138687%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind138669%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f138662%_
                                                      _%args138670%_)
                                                '()))))))
                     (_%K138675138773%_
                      (lambda (_%rest138690%_ _%e138691%_)
                        (let* ((_%__stx144637144638%_ _%e138691%_)
                               (_%g138696138714%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx144637144638%_)))))
                          (let ((_%__kont144639144640%_
                                 (lambda ()
                                   (let ((__tmp145297
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e138691%_))
                                                _%args138670%_)))
                                     (declare (not safe))
                                     (_%lp138664%_
                                      _%rest138690%_
                                      _%bind138669%_
                                      __tmp145297))))
                                (_%__kont144641144642%_
                                 (lambda ()
                                   (let ((__tmp145298
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e138691%_))
                                                _%args138670%_)))
                                     (declare (not safe))
                                     (_%lp138664%_
                                      _%rest138690%_
                                      _%bind138669%_
                                      __tmp145298))))
                                (_%__kont144643144644%_
                                 (lambda ()
                                   (let ((_%tmp138721%_
                                          (let ((__tmp145299
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp145299))))
                                     (let ((__tmp145301
                                            (cons (cons _%tmp138721%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e138691%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind138669%_))
                                           (__tmp145300
                                            (cons _%tmp138721%_
                                                  _%args138670%_)))
                                       (declare (not safe))
                                       (_%lp138664%_
                                        _%rest138690%_
                                        __tmp145301
                                        __tmp145300))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144637144638%_))
                                (let ((_%e138700138752%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144637144638%_))))
                                  (let ((_%tl138698138757%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138700138752%_)))
                                        (_%hd138699138755%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138700138752%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138699138755%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd138699138755%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138698138757%_))
                                                (let ((_%e138703138760%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138698138757%_))))
                                                  (let ((_%tl138701138765%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138703138760%_)))
                                                        (_%hd138702138763%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138703138760%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138701138765%_))
                                                        (_%__kont144639144640%_)
                                                        (_%__kont144643144644%_))))
                                                (_%__kont144643144644%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd138699138755%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl138698138757%_))
                                                    (let ((_%e138709138737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl138698138757%_))))
                                                      (let ((_%tl138707138742%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e138709138737%_)))
                    (_%hd138708138740%_
                     (let () (declare (not safe)) (##car _%e138709138737%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl138707138742%_))
                    (_%__kont144641144642%_)
                    (_%__kont144643144644%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144643144644%_))
                                                (_%__kont144643144644%_)))
                                        (_%__kont144643144644%_))))
                                (_%__kont144643144644%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest138671138679%_))
                    (let ((_%hd138676138776%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest138671138679%_)))
                          (_%tl138677138778%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest138671138679%_))))
                      (let* ((_%e138781%_ _%hd138676138776%_)
                             (_%rest138783%_ _%tl138677138778%_))
                        (declare (not safe))
                        (_%K138675138773%_ _%rest138783%_ _%e138781%_)))
                    (let () (declare (not safe)) (_%else138673138687%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp145303
                                                           (let ((__tmp145304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g138791138794%_ _%g138792138796%_)
                            (cons _%g138791138794%_ _%g138792138796%_))))
                     (declare (not safe))
                     (__foldr1 __tmp145304 '() _%L138586%_))))
              (declare (not safe))
              (_%compile-call138516%_ _%L138587%_ __tmp145303))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont144687144688%_
                                            (lambda ()
                                              (let ((__tmp145305
                                                     (let ((__tmp145306
                                                            (lambda (_%g138631138634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g138632138636%_)
                      (cons _%g138631138634%_ _%g138632138636%_))))
               (declare (not safe))
               (__foldr1 __tmp145306 '() _%L138586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%compile-call138516%_
                                                 _%L138587%_
                                                 __tmp145305)))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx144683144684%_))
                                           (let ((_%e138617138644%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx144683144684%_))))
                                             (let ((_%tl138615138649%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138617138644%_)))
                                                   (_%hd138616138647%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138617138644%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138616138647%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd138616138647%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl138615138649%_))
                                                           (let ((_%e138620138652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl138615138649%_))))
                     (let ((_%tl138618138657%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e138620138652%_)))
                           (_%hd138619138655%_
                            (let ()
                              (declare (not safe))
                              (##car _%e138620138652%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl138618138657%_))
                           (_%__kont144685144686%_)
                           (_%__kont144687144688%_))))
                   (_%__kont144687144688%_))
               (_%__kont144687144688%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144687144688%_))))
                                           (_%__kont144687144688%_))))))
                             _%rand138536138583%_
                             _%hd138526138557%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%loop138531138567%_
                                                       _%target138528138562%_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g138518138541%_
                                                     _%g138519138544%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g138518138541%_
                                           _%g138519138544%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138518138541%_ _%g138519138544%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138518138541%_ _%g138519138544%_))))))
            (declare (not safe))
            (_%g138517138802%_ _%stx138514%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self138256%_ _%stx138257%_)
        (let* ((_%__stx144755144756%_ _%stx138257%_)
               (_%g138260138289%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144755144756%_)))))
          (let ((_%__kont144757144758%_
                 (lambda (_%L138357%_ _%L138358%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call%
                          _%self138256%_
                          _%stx138257%_))
                       (let ((_%f138380%_
                              (let ((__tmp145307
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L138358%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self138256%_
                                 __tmp145307))))
                         (let _%lp138382%_ ((_%rest138385%_
                                             (reverse (let ((__tmp145313
                                                             (lambda (_%g138502138505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g138503138507%_)
                       (cons _%g138502138505%_ _%g138503138507%_))))
                (declare (not safe))
                (__foldr1 __tmp145313 '() _%L138357%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind138387%_ '())
                                            (_%args138388%_ '()))
                           (let* ((_%rest138389138397%_ _%rest138385%_)
                                  (_%else138391138405%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind138387%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f138380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args138388%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K138393138491%_
                                   (lambda (_%rest138408%_ _%e138409%_)
                                     (let* ((_%__stx144709144710%_ _%e138409%_)
                                            (_%g138414138432%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx144709144710%_)))))
                                       (let ((_%__kont144711144712%_
                                              (lambda ()
                                                (let ((__tmp145308
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138409%_))
                     _%args138388%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138382%_
                                                   _%rest138408%_
                                                   _%bind138387%_
                                                   __tmp145308))))
                                             (_%__kont144713144714%_
                                              (lambda ()
                                                (let ((__tmp145309
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138409%_))
                     _%args138388%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138382%_
                                                   _%rest138408%_
                                                   _%bind138387%_
                                                   __tmp145309))))
                                             (_%__kont144715144716%_
                                              (lambda ()
                                                (let ((_%tmp138439%_
                                                       (let ((__tmp145310
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp145310))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp145312
                                                         (cons (cons _%tmp138439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__0 _%e138409%_))
                                   '()))
                       _%bind138387%_))
                (__tmp145311 (cons _%tmp138439%_ _%args138388%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%lp138382%_
                                                     _%rest138408%_
                                                     __tmp145312
                                                     __tmp145311))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx144709144710%_))
                                             (let ((_%e138418138470%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx144709144710%_))))
                                               (let ((_%tl138416138475%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e138418138470%_)))
                                                     (_%hd138417138473%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e138418138470%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd138417138473%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd138417138473%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138416138475%_))
                     (let ((_%e138421138478%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138416138475%_))))
                       (let ((_%tl138419138483%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138421138478%_)))
                             (_%hd138420138481%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138421138478%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138419138483%_))
                             (_%__kont144711144712%_)
                             (_%__kont144715144716%_))))
                     (_%__kont144715144716%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd138417138473%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138416138475%_))
                         (let ((_%e138427138455%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138416138475%_))))
                           (let ((_%tl138425138460%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138427138455%_)))
                                 (_%hd138426138458%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138427138455%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138425138460%_))
                                 (_%__kont144713144714%_)
                                 (_%__kont144715144716%_))))
                         (_%__kont144715144716%_))
                     (_%__kont144715144716%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144715144716%_))))
                                             (_%__kont144715144716%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest138389138397%_))
                                 (let ((_%hd138394138494%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest138389138397%_)))
                                       (_%tl138395138496%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest138389138397%_))))
                                   (let* ((_%e138499%_ _%hd138394138494%_)
                                          (_%rest138501%_ _%tl138395138496%_))
                                     (declare (not safe))
                                     (_%K138393138491%_
                                      _%rest138501%_
                                      _%e138499%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%else138391138405%_)))))))))
                (_%__kont144761144762%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call%
                      _%self138256%_
                      _%stx138257%_)))))
            (let ((_%__match144800144801%_
                   (lambda (_%e138266138301%_
                            _%hd138265138304%_
                            _%tl138264138306%_
                            _%e138269138309%_
                            _%hd138268138312%_
                            _%tl138267138314%_
                            _%e138272138317%_
                            _%hd138271138320%_
                            _%tl138270138322%_
                            _%e138275138325%_
                            _%hd138274138328%_
                            _%tl138273138330%_
                            _%__splice144759144760%_
                            _%target138276138333%_
                            _%tl138278138335%_)
                     (letrec ((_%loop138279138338%_
                               (lambda (_%hd138277138341%_
                                        _%rand138283138343%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138277138341%_))
                                     (let ((_%e138280138346%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138277138341%_))))
                                       (let ((_%lp-tl138282138351%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138280138346%_)))
                                             (_%lp-hd138281138349%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138280138346%_))))
                                         (let ((__tmp145314
                                                (cons _%lp-hd138281138349%_
                                                      _%rand138283138343%_)))
                                           (declare (not safe))
                                           (_%loop138279138338%_
                                            _%lp-tl138282138351%_
                                            __tmp145314))))
                                     (let ((_%rand138284138354%_
                                            (reverse _%rand138283138343%_)))
                                       (_%__kont144757144758%_
                                        _%rand138284138354%_
                                        _%hd138274138328%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop138279138338%_ _%target138276138333%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144755144756%_))
                  (let ((_%e138266138301%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144755144756%_))))
                    (let ((_%tl138264138306%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138266138301%_)))
                          (_%hd138265138304%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138266138301%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138264138306%_))
                          (let ((_%e138269138309%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138264138306%_))))
                            (let ((_%tl138267138314%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138269138309%_)))
                                  (_%hd138268138312%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138269138309%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138268138312%_))
                                  (let ((_%e138272138317%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138268138312%_))))
                                    (let ((_%tl138270138322%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138272138317%_)))
                                          (_%hd138271138320%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138272138317%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138271138320%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138271138320%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138270138322%_))
                                                  (let ((_%e138275138325%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138270138322%_))))
                                                    (let ((_%tl138273138330%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138275138325%_)))
                                                          (_%hd138274138328%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138275138325%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138273138330%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138267138314%_))
                      (let ((_%__splice144759144760%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138267138314%_
                                '0))))
                        (let ((_%tl138278138335%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144759144760%_ '1)))
                              (_%target138276138333%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144759144760%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138278138335%_))
                              (_%__match144800144801%_
                               _%e138266138301%_
                               _%hd138265138304%_
                               _%tl138264138306%_
                               _%e138269138309%_
                               _%hd138268138312%_
                               _%tl138267138314%_
                               _%e138272138317%_
                               _%hd138271138320%_
                               _%tl138270138322%_
                               _%e138275138325%_
                               _%hd138274138328%_
                               _%tl138273138330%_
                               _%__splice144759144760%_
                               _%target138276138333%_
                               _%tl138278138335%_)
                              (_%__kont144761144762%_))))
                      (_%__kont144761144762%_))
                  (_%__kont144761144762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144761144762%_))
                                              (_%__kont144761144762%_))
                                          (_%__kont144761144762%_))))
                                  (_%__kont144761144762%_))))
                          (_%__kont144761144762%_))))
                  (_%__kont144761144762%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self138068%_ _%stx138069%_)
        (letrec ((_%simplify138071%_
                  (lambda (_%code138156%_)
                    (let* ((_%code138157138175%_ _%code138156%_)
                           (_%else138159138183%_ (lambda () _%code138156%_))
                           (_%K138161138219%_
                            (lambda (_%expr138186%_ _%test138187%_)
                              (let* ((_%expr138188138196%_ _%expr138186%_)
                                     (_%else138190138204%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test138187%_
                                                    (cons _%expr138186%_
                                                          '())))))
                                     (_%K138192138209%_
                                      (lambda (_%exprs138207%_)
                                        (cons 'and
                                              (cons _%test138187%_
                                                    _%exprs138207%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr138188138196%_))
                                    (let ((_%hd138193138212%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr138188138196%_)))
                                          (_%tl138194138214%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr138188138196%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd138193138212%_ 'and))
                                          (let ((_%exprs138217%_
                                                 _%tl138194138214%_))
                                            (declare (not safe))
                                            (_%K138192138209%_
                                             _%exprs138217%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138190138204%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138190138204%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code138157138175%_))
                          (let ((_%hd138162138222%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code138157138175%_)))
                                (_%tl138163138224%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code138157138175%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd138162138222%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl138163138224%_))
                                    (let ((_%hd138164138227%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl138163138224%_)))
                                          (_%tl138165138229%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl138163138224%_))))
                                      (let ((_%test138232%_
                                             _%hd138164138227%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl138165138229%_))
                                            (let ((_%hd138166138234%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl138165138229%_)))
                                                  (_%tl138167138236%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl138165138229%_))))
                                              (let ((_%expr138239%_
                                                     _%hd138166138234%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl138167138236%_))
                                                    (let ((_%hd138168138241%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl138167138236%_)))
                                                          (_%tl138169138243%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl138167138236%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd138168138241%_))
                                                          (let ((_%hd138170138246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd138168138241%_)))
                        (_%tl138171138248%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd138168138241%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd138170138246%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl138171138248%_))
                            (let ((_%hd138172138251%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl138171138248%_)))
                                  (_%tl138173138253%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl138171138248%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd138172138251%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl138173138253%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl138169138243%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%K138161138219%_
                                             _%expr138239%_
                                             _%test138232%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138159138183%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else138159138183%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else138159138183%_))))
                            (let ()
                              (declare (not safe))
                              (_%else138159138183%_)))
                        (let () (declare (not safe)) (_%else138159138183%_))))
                  (let () (declare (not safe)) (_%else138159138183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else138159138183%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%else138159138183%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138159138183%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else138159138183%_))))
                          (let ()
                            (declare (not safe))
                            (_%else138159138183%_)))))))
          (let* ((_%g138073138094%_
                  (lambda (_%g138074138091%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138074138091%_))))
                 (_%g138072138153%_
                  (lambda (_%g138074138097%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138074138097%_))
                        (let ((_%e138080138099%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138074138097%_))))
                          (let ((_%hd138079138102%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138080138099%_)))
                                (_%tl138078138104%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138080138099%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138078138104%_))
                                (let ((_%e138083138107%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138078138104%_))))
                                  (let ((_%hd138082138110%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138083138107%_)))
                                        (_%tl138081138112%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138083138107%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138081138112%_))
                                        (let ((_%e138086138115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138081138112%_))))
                                          (let ((_%hd138085138118%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138086138115%_)))
                                                (_%tl138084138120%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138086138115%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138084138120%_))
                                                (let ((_%e138089138123%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138084138120%_))))
                                                  (let ((_%hd138088138126%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138089138123%_)))
                                                        (_%tl138087138128%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138089138123%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138087138128%_))
                                                        ((lambda (_%L138131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L138132%_
                          _%L138133%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (let ((__tmp145315
                              (cons 'if
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self138068%_
                                             _%L138133%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self138068%_
                                                   _%L138132%_))
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self138068%_
                                                         _%L138131%_))
                                                      '()))))))
                         (declare (not safe))
                         (_%simplify138071%_ __tmp145315))
                       (cons 'if
                             (cons (let ((__tmp145316
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138068%_
                                               _%L138133%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp145316
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138068%_
                                            _%L138132%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self138068%_
                                                  _%L138131%_))
                                               '()))))))
                 _%hd138088138126%_
                 _%hd138085138118%_
                 _%hd138082138110%_)
                (let ()
                  (declare (not safe))
                  (_%g138073138094%_ _%g138074138097%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g138073138094%_
                                                   _%g138074138097%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g138073138094%_
                                           _%g138074138097%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138073138094%_ _%g138074138097%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138073138094%_ _%g138074138097%_))))))
            (declare (not safe))
            (_%g138072138153%_ _%stx138069%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self138016%_ _%stx138017%_)
        (let* ((_%g138019138032%_
                (lambda (_%g138020138029%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138020138029%_))))
               (_%g138018138065%_
                (lambda (_%g138020138035%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138020138035%_))
                      (let ((_%e138024138037%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138020138035%_))))
                        (let ((_%hd138023138040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138024138037%_)))
                              (_%tl138022138042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138024138037%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138022138042%_))
                              (let ((_%e138027138045%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138022138042%_))))
                                (let ((_%hd138026138048%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138027138045%_)))
                                      (_%tl138025138050%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138027138045%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138025138050%_))
                                      ((lambda (_%L138053%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L138053%_)))
                                       _%hd138026138048%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g138019138032%_
                                         _%g138020138035%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g138019138032%_ _%g138020138035%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g138019138032%_ _%g138020138035%_))))))
          (declare (not safe))
          (_%g138018138065%_ _%stx138017%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self137948%_ _%stx137949%_)
        (let* ((_%g137951137968%_
                (lambda (_%g137952137965%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137952137965%_))))
               (_%g137950138013%_
                (lambda (_%g137952137971%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137952137971%_))
                      (let ((_%e137957137973%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137952137971%_))))
                        (let ((_%hd137956137976%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137957137973%_)))
                              (_%tl137955137978%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137957137973%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137955137978%_))
                              (let ((_%e137960137981%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137955137978%_))))
                                (let ((_%hd137959137984%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137960137981%_)))
                                      (_%tl137958137986%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137960137981%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137958137986%_))
                                      (let ((_%e137963137989%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137958137986%_))))
                                        (let ((_%hd137962137992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137963137989%_)))
                                              (_%tl137961137994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137963137989%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137961137994%_))
                                              ((lambda (_%L137997%_
                                                        _%L137998%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L137998%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self137948%_ _%L137997%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137962137992%_
                                               _%hd137959137984%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g137951137968%_
                                                 _%g137952137971%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137951137968%_
                                         _%g137952137971%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137951137968%_ _%g137952137971%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137951137968%_ _%g137952137971%_))))))
          (declare (not safe))
          (_%g137950138013%_ _%stx137949%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self137759%_ _%stx137760%_)
        (let* ((_%g137762137779%_
                (lambda (_%g137763137776%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137763137776%_))))
               (_%g137761137945%_
                (lambda (_%g137763137782%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137763137782%_))
                      (let ((_%e137768137784%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137763137782%_))))
                        (let ((_%hd137767137787%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137768137784%_)))
                              (_%tl137766137789%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137768137784%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137766137789%_))
                              (let ((_%e137771137792%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137766137789%_))))
                                (let ((_%hd137770137795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137771137792%_)))
                                      (_%tl137769137797%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137771137792%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137769137797%_))
                                      (let ((_%e137774137800%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137769137797%_))))
                                        (let ((_%hd137773137803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137774137800%_)))
                                              (_%tl137772137805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137774137800%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137772137805%_))
                                              ((lambda (_%L137808%_
                                                        _%L137809%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137759%_ _%L137808%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137759%_ _%L137809%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137824%_ ((_%rest137827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137809%_ (cons _%L137808%_ '())))
                                (_%bind137829%_ '())
                                (_%args137830%_ '()))
               (let* ((_%rest137831137839%_ _%rest137827%_)
                      (_%else137833137847%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137829%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args137830%_)
                                                 '()))))))
                      (_%K137835137933%_
                       (lambda (_%rest137850%_ _%e137851%_)
                         (let* ((_%__stx144803144804%_ _%e137851%_)
                                (_%g137856137874%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144803144804%_)))))
                           (let ((_%__kont144805144806%_
                                  (lambda ()
                                    (let ((__tmp145317
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137851%_))
                                                 _%args137830%_)))
                                      (declare (not safe))
                                      (_%lp137824%_
                                       _%rest137850%_
                                       _%bind137829%_
                                       __tmp145317))))
                                 (_%__kont144807144808%_
                                  (lambda ()
                                    (let ((__tmp145318
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137851%_))
                                                 _%args137830%_)))
                                      (declare (not safe))
                                      (_%lp137824%_
                                       _%rest137850%_
                                       _%bind137829%_
                                       __tmp145318))))
                                 (_%__kont144809144810%_
                                  (lambda ()
                                    (let ((_%tmp137881%_
                                           (let ((__tmp145319
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145319))))
                                      (let ((__tmp145321
                                             (cons (cons _%tmp137881%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e137851%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind137829%_))
                                            (__tmp145320
                                             (cons _%tmp137881%_
                                                   _%args137830%_)))
                                        (declare (not safe))
                                        (_%lp137824%_
                                         _%rest137850%_
                                         __tmp145321
                                         __tmp145320))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144803144804%_))
                                 (let ((_%e137860137912%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144803144804%_))))
                                   (let ((_%tl137858137917%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137860137912%_)))
                                         (_%hd137859137915%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137860137912%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137859137915%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137859137915%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137858137917%_))
                                                 (let ((_%e137863137920%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137858137917%_))))
                                                   (let ((_%tl137861137925%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137863137920%_)))
                                                         (_%hd137862137923%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137863137920%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137861137925%_))
                                                         (_%__kont144805144806%_)
                                                         (_%__kont144809144810%_))))
                                                 (_%__kont144809144810%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137859137915%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137858137917%_))
                                                     (let ((_%e137869137897%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137858137917%_))))
                                                       (let ((_%tl137867137902%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137869137897%_)))
                     (_%hd137868137900%_
                      (let () (declare (not safe)) (##car _%e137869137897%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137867137902%_))
                     (_%__kont144807144808%_)
                     (_%__kont144809144810%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144809144810%_))
                                                 (_%__kont144809144810%_)))
                                         (_%__kont144809144810%_))))
                                 (_%__kont144809144810%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137831137839%_))
                     (let ((_%hd137836137936%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137831137839%_)))
                           (_%tl137837137938%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137831137839%_))))
                       (let* ((_%e137941%_ _%hd137836137936%_)
                              (_%rest137943%_ _%tl137837137938%_))
                         (declare (not safe))
                         (_%K137835137933%_ _%rest137943%_ _%e137941%_)))
                     (let () (declare (not safe)) (_%else137833137847%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137773137803%_
                                               _%hd137770137795%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g137762137779%_
                                                 _%g137763137782%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137762137779%_
                                         _%g137763137782%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137762137779%_ _%g137763137782%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137762137779%_ _%g137763137782%_))))))
          (declare (not safe))
          (_%g137761137945%_ _%stx137760%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self137570%_ _%stx137571%_)
        (let* ((_%g137573137590%_
                (lambda (_%g137574137587%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137574137587%_))))
               (_%g137572137756%_
                (lambda (_%g137574137593%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137574137593%_))
                      (let ((_%e137579137595%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137574137593%_))))
                        (let ((_%hd137578137598%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137579137595%_)))
                              (_%tl137577137600%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137579137595%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137577137600%_))
                              (let ((_%e137582137603%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137577137600%_))))
                                (let ((_%hd137581137606%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137582137603%_)))
                                      (_%tl137580137608%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137582137603%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137580137608%_))
                                      (let ((_%e137585137611%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137580137608%_))))
                                        (let ((_%hd137584137614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137585137611%_)))
                                              (_%tl137583137616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137585137611%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137583137616%_))
                                              ((lambda (_%L137619%_
                                                        _%L137620%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137570%_ _%L137619%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137570%_ _%L137620%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137635%_ ((_%rest137638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137620%_ (cons _%L137619%_ '())))
                                (_%bind137640%_ '())
                                (_%args137641%_ '()))
               (let* ((_%rest137642137650%_ _%rest137638%_)
                      (_%else137644137658%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137640%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args137641%_)
                                                 '()))))))
                      (_%K137646137744%_
                       (lambda (_%rest137661%_ _%e137662%_)
                         (let* ((_%__stx144849144850%_ _%e137662%_)
                                (_%g137667137685%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144849144850%_)))))
                           (let ((_%__kont144851144852%_
                                  (lambda ()
                                    (let ((__tmp145322
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137662%_))
                                                 _%args137641%_)))
                                      (declare (not safe))
                                      (_%lp137635%_
                                       _%rest137661%_
                                       _%bind137640%_
                                       __tmp145322))))
                                 (_%__kont144853144854%_
                                  (lambda ()
                                    (let ((__tmp145323
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137662%_))
                                                 _%args137641%_)))
                                      (declare (not safe))
                                      (_%lp137635%_
                                       _%rest137661%_
                                       _%bind137640%_
                                       __tmp145323))))
                                 (_%__kont144855144856%_
                                  (lambda ()
                                    (let ((_%tmp137692%_
                                           (let ((__tmp145324
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145324))))
                                      (let ((__tmp145326
                                             (cons (cons _%tmp137692%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e137662%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind137640%_))
                                            (__tmp145325
                                             (cons _%tmp137692%_
                                                   _%args137641%_)))
                                        (declare (not safe))
                                        (_%lp137635%_
                                         _%rest137661%_
                                         __tmp145326
                                         __tmp145325))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144849144850%_))
                                 (let ((_%e137671137723%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144849144850%_))))
                                   (let ((_%tl137669137728%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137671137723%_)))
                                         (_%hd137670137726%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137671137723%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137670137726%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137670137726%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137669137728%_))
                                                 (let ((_%e137674137731%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137669137728%_))))
                                                   (let ((_%tl137672137736%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137674137731%_)))
                                                         (_%hd137673137734%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137674137731%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137672137736%_))
                                                         (_%__kont144851144852%_)
                                                         (_%__kont144855144856%_))))
                                                 (_%__kont144855144856%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137670137726%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137669137728%_))
                                                     (let ((_%e137680137708%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137669137728%_))))
                                                       (let ((_%tl137678137713%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137680137708%_)))
                     (_%hd137679137711%_
                      (let () (declare (not safe)) (##car _%e137680137708%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137678137713%_))
                     (_%__kont144853144854%_)
                     (_%__kont144855144856%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144855144856%_))
                                                 (_%__kont144855144856%_)))
                                         (_%__kont144855144856%_))))
                                 (_%__kont144855144856%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137642137650%_))
                     (let ((_%hd137647137747%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137642137650%_)))
                           (_%tl137648137749%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137642137650%_))))
                       (let* ((_%e137752%_ _%hd137647137747%_)
                              (_%rest137754%_ _%tl137648137749%_))
                         (declare (not safe))
                         (_%K137646137744%_ _%rest137754%_ _%e137752%_)))
                     (let () (declare (not safe)) (_%else137644137658%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137584137614%_
                                               _%hd137581137606%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g137573137590%_
                                                 _%g137574137593%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137573137590%_
                                         _%g137574137593%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137573137590%_ _%g137574137593%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137573137590%_ _%g137574137593%_))))))
          (declare (not safe))
          (_%g137572137756%_ _%stx137571%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self137486%_ _%stx137487%_)
        (let* ((_%g137489137510%_
                (lambda (_%g137490137507%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137490137507%_))))
               (_%g137488137567%_
                (lambda (_%g137490137513%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137490137513%_))
                      (let ((_%e137496137515%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137490137513%_))))
                        (let ((_%hd137495137518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137496137515%_)))
                              (_%tl137494137520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137496137515%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137494137520%_))
                              (let ((_%e137499137523%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137494137520%_))))
                                (let ((_%hd137498137526%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137499137523%_)))
                                      (_%tl137497137528%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137499137523%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137497137528%_))
                                      (let ((_%e137502137531%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137497137528%_))))
                                        (let ((_%hd137501137534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137502137531%_)))
                                              (_%tl137500137536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137502137531%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137500137536%_))
                                              (let ((_%e137505137539%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137500137536%_))))
                                                (let ((_%hd137504137542%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137505137539%_)))
                                                      (_%tl137503137544%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137505137539%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137503137544%_))
                                                      ((lambda (_%L137547%_
                                                                _%L137548%_
                                                                _%L137549%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137486%_ _%L137547%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137486%_
                                      _%L137548%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137486%_
                                            _%L137549%_))
                                         (cons ''#f '()))))))
               _%hd137504137542%_
               _%hd137501137534%_
               _%hd137498137526%_)
              (let ()
                (declare (not safe))
                (_%g137489137510%_ _%g137490137513%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137489137510%_
                                                 _%g137490137513%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137489137510%_
                                         _%g137490137513%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137489137510%_ _%g137490137513%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137489137510%_ _%g137490137513%_))))))
          (declare (not safe))
          (_%g137488137567%_ _%stx137487%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self137386%_ _%stx137387%_)
        (let* ((_%g137389137414%_
                (lambda (_%g137390137411%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137390137411%_))))
               (_%g137388137483%_
                (lambda (_%g137390137417%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137390137417%_))
                      (let ((_%e137397137419%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137390137417%_))))
                        (let ((_%hd137396137422%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137397137419%_)))
                              (_%tl137395137424%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137397137419%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137395137424%_))
                              (let ((_%e137400137427%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137395137424%_))))
                                (let ((_%hd137399137430%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137400137427%_)))
                                      (_%tl137398137432%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137400137427%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137398137432%_))
                                      (let ((_%e137403137435%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137398137432%_))))
                                        (let ((_%hd137402137438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137403137435%_)))
                                              (_%tl137401137440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137403137435%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137401137440%_))
                                              (let ((_%e137406137443%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137401137440%_))))
                                                (let ((_%hd137405137446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137406137443%_)))
                                                      (_%tl137404137448%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137406137443%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137404137448%_))
                                                      (let ((_%e137409137451%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137404137448%_))))
                (let ((_%hd137408137454%_
                       (let () (declare (not safe)) (##car _%e137409137451%_)))
                      (_%tl137407137456%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137409137451%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137407137456%_))
                      ((lambda (_%L137459%_
                                _%L137460%_
                                _%L137461%_
                                _%L137462%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137386%_
                                        _%L137460%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137386%_
                                              _%L137459%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137386%_
                                                    _%L137461%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137386%_
                                                          _%L137462%_))
                                                       (cons ''#f '())))))))
                       _%hd137408137454%_
                       _%hd137405137446%_
                       _%hd137402137438%_
                       _%hd137399137430%_)
                      (let ()
                        (declare (not safe))
                        (_%g137389137414%_ _%g137390137417%_)))))
              (let ()
                (declare (not safe))
                (_%g137389137414%_ _%g137390137417%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137389137414%_
                                                 _%g137390137417%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137389137414%_
                                         _%g137390137417%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137389137414%_ _%g137390137417%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137389137414%_ _%g137390137417%_))))))
          (declare (not safe))
          (_%g137388137483%_ _%stx137387%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self137302%_ _%stx137303%_)
        (let* ((_%g137305137326%_
                (lambda (_%g137306137323%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137306137323%_))))
               (_%g137304137383%_
                (lambda (_%g137306137329%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137306137329%_))
                      (let ((_%e137312137331%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137306137329%_))))
                        (let ((_%hd137311137334%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137312137331%_)))
                              (_%tl137310137336%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137312137331%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137310137336%_))
                              (let ((_%e137315137339%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137310137336%_))))
                                (let ((_%hd137314137342%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137315137339%_)))
                                      (_%tl137313137344%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137315137339%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137313137344%_))
                                      (let ((_%e137318137347%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137313137344%_))))
                                        (let ((_%hd137317137350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137318137347%_)))
                                              (_%tl137316137352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137318137347%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137316137352%_))
                                              (let ((_%e137321137355%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137316137352%_))))
                                                (let ((_%hd137320137358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137321137355%_)))
                                                      (_%tl137319137360%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137321137355%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137319137360%_))
                                                      ((lambda (_%L137363%_
                                                                _%L137364%_
                                                                _%L137365%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137302%_ _%L137363%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137302%_
                                      _%L137364%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137302%_
                                            _%L137365%_))
                                         (cons ''#f '()))))))
               _%hd137320137358%_
               _%hd137317137350%_
               _%hd137314137342%_)
              (let ()
                (declare (not safe))
                (_%g137305137326%_ _%g137306137329%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137305137326%_
                                                 _%g137306137329%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137305137326%_
                                         _%g137306137329%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137305137326%_ _%g137306137329%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137305137326%_ _%g137306137329%_))))))
          (declare (not safe))
          (_%g137304137383%_ _%stx137303%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self137202%_ _%stx137203%_)
        (let* ((_%g137205137230%_
                (lambda (_%g137206137227%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137206137227%_))))
               (_%g137204137299%_
                (lambda (_%g137206137233%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137206137233%_))
                      (let ((_%e137213137235%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137206137233%_))))
                        (let ((_%hd137212137238%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137213137235%_)))
                              (_%tl137211137240%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137213137235%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137211137240%_))
                              (let ((_%e137216137243%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137211137240%_))))
                                (let ((_%hd137215137246%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137216137243%_)))
                                      (_%tl137214137248%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137216137243%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137214137248%_))
                                      (let ((_%e137219137251%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137214137248%_))))
                                        (let ((_%hd137218137254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137219137251%_)))
                                              (_%tl137217137256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137219137251%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137217137256%_))
                                              (let ((_%e137222137259%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137217137256%_))))
                                                (let ((_%hd137221137262%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137222137259%_)))
                                                      (_%tl137220137264%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137222137259%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137220137264%_))
                                                      (let ((_%e137225137267%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137220137264%_))))
                (let ((_%hd137224137270%_
                       (let () (declare (not safe)) (##car _%e137225137267%_)))
                      (_%tl137223137272%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137225137267%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137223137272%_))
                      ((lambda (_%L137275%_
                                _%L137276%_
                                _%L137277%_
                                _%L137278%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137202%_
                                        _%L137276%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137202%_
                                              _%L137275%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137202%_
                                                    _%L137277%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137202%_
                                                          _%L137278%_))
                                                       (cons ''#f '())))))))
                       _%hd137224137270%_
                       _%hd137221137262%_
                       _%hd137218137254%_
                       _%hd137215137246%_)
                      (let ()
                        (declare (not safe))
                        (_%g137205137230%_ _%g137206137233%_)))))
              (let ()
                (declare (not safe))
                (_%g137205137230%_ _%g137206137233%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137205137230%_
                                                 _%g137206137233%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137205137230%_
                                         _%g137206137233%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137205137230%_ _%g137206137233%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137205137230%_ _%g137206137233%_))))))
          (declare (not safe))
          (_%g137204137299%_ _%stx137203%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self136997%_ _%stx136998%_)
        (let* ((_%g137000137021%_
                (lambda (_%g137001137018%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137001137018%_))))
               (_%g136999137199%_
                (lambda (_%g137001137024%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137001137024%_))
                      (let ((_%e137007137026%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137001137024%_))))
                        (let ((_%hd137006137029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137007137026%_)))
                              (_%tl137005137031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137007137026%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137005137031%_))
                              (let ((_%e137010137034%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137005137031%_))))
                                (let ((_%hd137009137037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137010137034%_)))
                                      (_%tl137008137039%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137010137034%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137008137039%_))
                                      (let ((_%e137013137042%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137008137039%_))))
                                        (let ((_%hd137012137045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137013137042%_)))
                                              (_%tl137011137047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137013137042%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137011137047%_))
                                              (let ((_%e137016137050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137011137047%_))))
                                                (let ((_%hd137015137053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137016137050%_)))
                                                      (_%tl137014137055%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137016137050%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137014137055%_))
                                                      ((lambda (_%L137058%_
                                                                _%L137059%_
                                                                _%L137060%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (cons '##unchecked-structure-ref
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self136997%_
                                    _%L137058%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self136997%_
                                          _%L137059%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp137078%_ ((_%rest137081%_
                                         (cons _%L137059%_
                                               (cons _%L137058%_ '())))
                                        (_%bind137083%_ '())
                                        (_%args137084%_ '()))
                       (let* ((_%rest137085137093%_ _%rest137081%_)
                              (_%else137087137101%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind137083%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp145327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp145327 _%args137084%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K137089137187%_
                               (lambda (_%rest137104%_ _%e137105%_)
                                 (let* ((_%__stx144895144896%_ _%e137105%_)
                                        (_%g137110137128%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144895144896%_)))))
                                   (let ((_%__kont144897144898%_
                                          (lambda ()
                                            (let ((__tmp145328
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137105%_))
                                                         _%args137084%_)))
                                              (declare (not safe))
                                              (_%lp137078%_
                                               _%rest137104%_
                                               _%bind137083%_
                                               __tmp145328))))
                                         (_%__kont144899144900%_
                                          (lambda ()
                                            (let ((__tmp145329
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137105%_))
                                                         _%args137084%_)))
                                              (declare (not safe))
                                              (_%lp137078%_
                                               _%rest137104%_
                                               _%bind137083%_
                                               __tmp145329))))
                                         (_%__kont144901144902%_
                                          (lambda ()
                                            (let ((_%tmp137135%_
                                                   (let ((__tmp145330
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp145330))))
                                              (let ((__tmp145332
                                                     (cons (cons _%tmp137135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__0 _%e137105%_))
                               '()))
                   _%bind137083%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145331
                                                     (cons _%tmp137135%_
                                                           _%args137084%_)))
                                                (declare (not safe))
                                                (_%lp137078%_
                                                 _%rest137104%_
                                                 __tmp145332
                                                 __tmp145331))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144895144896%_))
                                         (let ((_%e137114137166%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144895144896%_))))
                                           (let ((_%tl137112137171%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e137114137166%_)))
                                                 (_%hd137113137169%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e137114137166%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd137113137169%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd137113137169%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl137112137171%_))
                                                         (let ((_%e137117137174%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl137112137171%_))))
                   (let ((_%tl137115137179%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e137117137174%_)))
                         (_%hd137116137177%_
                          (let ()
                            (declare (not safe))
                            (##car _%e137117137174%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl137115137179%_))
                         (_%__kont144897144898%_)
                         (_%__kont144901144902%_))))
                 (_%__kont144901144902%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd137113137169%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl137112137171%_))
                     (let ((_%e137123137151%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl137112137171%_))))
                       (let ((_%tl137121137156%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e137123137151%_)))
                             (_%hd137122137154%_
                              (let ()
                                (declare (not safe))
                                (##car _%e137123137151%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl137121137156%_))
                             (_%__kont144899144900%_)
                             (_%__kont144901144902%_))))
                     (_%__kont144901144902%_))
                 (_%__kont144901144902%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144901144902%_))))
                                         (_%__kont144901144902%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest137085137093%_))
                             (let ((_%hd137090137190%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest137085137093%_)))
                                   (_%tl137091137192%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest137085137093%_))))
                               (let* ((_%e137195%_ _%hd137090137190%_)
                                      (_%rest137197%_ _%tl137091137192%_))
                                 (declare (not safe))
                                 (_%K137089137187%_
                                  _%rest137197%_
                                  _%e137195%_)))
                             (let ()
                               (declare (not safe))
                               (_%else137087137101%_)))))))
               _%hd137015137053%_
               _%hd137012137045%_
               _%hd137009137037%_)
              (let ()
                (declare (not safe))
                (_%g137000137021%_ _%g137001137024%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137000137021%_
                                                 _%g137001137024%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137000137021%_
                                         _%g137001137024%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137000137021%_ _%g137001137024%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137000137021%_ _%g137001137024%_))))))
          (declare (not safe))
          (_%g136999137199%_ _%stx136998%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self136776%_ _%stx136777%_)
        (let* ((_%g136779136804%_
                (lambda (_%g136780136801%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136780136801%_))))
               (_%g136778136994%_
                (lambda (_%g136780136807%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136780136807%_))
                      (let ((_%e136787136809%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136780136807%_))))
                        (let ((_%hd136786136812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136787136809%_)))
                              (_%tl136785136814%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136787136809%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136785136814%_))
                              (let ((_%e136790136817%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136785136814%_))))
                                (let ((_%hd136789136820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136790136817%_)))
                                      (_%tl136788136822%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136790136817%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136788136822%_))
                                      (let ((_%e136793136825%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136788136822%_))))
                                        (let ((_%hd136792136828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136793136825%_)))
                                              (_%tl136791136830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136793136825%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136791136830%_))
                                              (let ((_%e136796136833%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136791136830%_))))
                                                (let ((_%hd136795136836%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136796136833%_)))
                                                      (_%tl136794136838%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136796136833%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl136794136838%_))
                                                      (let ((_%e136799136841%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl136794136838%_))))
                (let ((_%hd136798136844%_
                       (let () (declare (not safe)) (##car _%e136799136841%_)))
                      (_%tl136797136846%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e136799136841%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136797136846%_))
                      ((lambda (_%L136849%_
                                _%L136850%_
                                _%L136851%_
                                _%L136852%_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self136776%_
                                            _%L136850%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self136776%_
                                                  _%L136849%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self136776%_
                                                        _%L136851%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp136873%_ ((_%rest136876%_
                                                 (cons _%L136851%_
                                                       (cons _%L136849%_
                                                             (cons _%L136850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind136878%_ '())
                                                (_%args136879%_ '()))
                               (let* ((_%rest136880136888%_ _%rest136876%_)
                                      (_%else136882136896%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind136878%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp145333 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp145333 _%args136879%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K136884136982%_
                                       (lambda (_%rest136899%_ _%e136900%_)
                                         (let* ((_%__stx144941144942%_
                                                 _%e136900%_)
                                                (_%g136905136923%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx144941144942%_)))))
                                           (let ((_%__kont144943144944%_
                                                  (lambda ()
                                                    (let ((__tmp145334
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e136900%_))
                         _%args136879%_)))
              (declare (not safe))
              (_%lp136873%_ _%rest136899%_ _%bind136878%_ __tmp145334))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144945144946%_
                                                  (lambda ()
                                                    (let ((__tmp145335
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e136900%_))
                         _%args136879%_)))
              (declare (not safe))
              (_%lp136873%_ _%rest136899%_ _%bind136878%_ __tmp145335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144947144948%_
                                                  (lambda ()
                                                    (let ((_%tmp136930%_
                                                           (let ((__tmp145336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp145336))))
              (let ((__tmp145338
                     (cons (cons _%tmp136930%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e136900%_))
                                       '()))
                           _%bind136878%_))
                    (__tmp145337 (cons _%tmp136930%_ _%args136879%_)))
                (declare (not safe))
                (_%lp136873%_ _%rest136899%_ __tmp145338 __tmp145337))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx144941144942%_))
                                                 (let ((_%e136909136961%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx144941144942%_))))
                                                   (let ((_%tl136907136966%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e136909136961%_)))
                                                         (_%hd136908136964%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e136909136961%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd136908136964%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd136908136964%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl136907136966%_))
                         (let ((_%e136912136969%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl136907136966%_))))
                           (let ((_%tl136910136974%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e136912136969%_)))
                                 (_%hd136911136972%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e136912136969%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl136910136974%_))
                                 (_%__kont144943144944%_)
                                 (_%__kont144947144948%_))))
                         (_%__kont144947144948%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd136908136964%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl136907136966%_))
                             (let ((_%e136918136946%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl136907136966%_))))
                               (let ((_%tl136916136951%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e136918136946%_)))
                                     (_%hd136917136949%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e136918136946%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl136916136951%_))
                                     (_%__kont144945144946%_)
                                     (_%__kont144947144948%_))))
                             (_%__kont144947144948%_))
                         (_%__kont144947144948%_)))
                 (_%__kont144947144948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144947144948%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest136880136888%_))
                                     (let ((_%hd136885136985%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest136880136888%_)))
                                           (_%tl136886136987%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest136880136888%_))))
                                       (let* ((_%e136990%_ _%hd136885136985%_)
                                              (_%rest136992%_
                                               _%tl136886136987%_))
                                         (declare (not safe))
                                         (_%K136884136982%_
                                          _%rest136992%_
                                          _%e136990%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%else136882136896%_)))))))
                       _%hd136798136844%_
                       _%hd136795136836%_
                       _%hd136792136828%_
                       _%hd136789136820%_)
                      (let ()
                        (declare (not safe))
                        (_%g136779136804%_ _%g136780136807%_)))))
              (let ()
                (declare (not safe))
                (_%g136779136804%_ _%g136780136807%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g136779136804%_
                                                 _%g136780136807%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136779136804%_
                                         _%g136780136807%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136779136804%_ _%g136780136807%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136779136804%_ _%g136780136807%_))))))
          (declare (not safe))
          (_%g136778136994%_ _%stx136777%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self136615%_ _%stx136616%_)
        (letrec ((_%import-set-template136618%_
                  (lambda (_%in136721%_ _%phi136722%_)
                    (let ((_%iphi136724%_
                           (fx+ _%phi136722%_
                                (##direct-structure-ref
                                 _%in136721%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports136725%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in136721%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp136727%_ ((_%rest136729%_ _%imports136725%_)
                                         (_%r136730%_ '()))
                        (let* ((_%rest136731136739%_ _%rest136729%_)
                               (_%else136733136747%_ (lambda () _%r136730%_))
                               (_%K136735136764%_
                                (lambda (_%rest136750%_ _%in136751%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in136751%_
                                         'gx#module-context::t))
                                      (let ()
                                        (if (let ()
                                              (declare (not safe))
                                              (##fxzero? _%iphi136724%_))
                                            (let ((__tmp145339
                                                   (cons _%in136751%_
                                                         _%r136730%_)))
                                              (declare (not safe))
                                              (_%lp136727%_
                                               _%rest136750%_
                                               __tmp145339))
                                            (let ()
                                              (declare (not safe))
                                              (_%lp136727%_
                                               _%rest136750%_
                                               _%r136730%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in136751%_
                                             'gx#module-import::t))
                                          (let ()
                                            (let ((_%iphi136755%_
                                                   (fx+ _%phi136722%_
                                                        (##direct-structure-ref
                                                         _%in136751%_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fxzero? _%iphi136755%_))
                                                  (let ((__tmp145340
                                                         (cons (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in136751%_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)
                       _%r136730%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%lp136727%_
                                                     _%rest136750%_
                                                     __tmp145340))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%lp136727%_
                                                     _%rest136750%_
                                                     _%r136730%_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in136751%_
                                                 'gx#import-set::t))
                                              (let ()
                                                (let ((_%xphi136758%_
                                                       (fx+ _%iphi136724%_
                                                            (##direct-structure-ref
                                                             _%in136751%_
                                                             '2
                                                             gx#import-set::t
                                                             '#f))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##fxzero?
                                                         _%xphi136758%_))
                                                      (let ()
                                                        (let ((__tmp145341
                                                               (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%in136751%_
                              '1
                              gx#import-set::t
                              '#f)
                             _%r136730%_)))
                  (declare (not safe))
                  (_%lp136727%_ _%rest136750%_ __tmp145341)))
              (if (let () (declare (not safe)) (##fxpositive? _%xphi136758%_))
                  (let ()
                    (let ((__tmp145342
                           (let ((__tmp145343
                                  (let ()
                                    (declare (not safe))
                                    (_%import-set-template136618%_
                                     _%in136751%_
                                     _%iphi136724%_))))
                             (declare (not safe))
                             (__foldl1 cons _%r136730%_ __tmp145343))))
                      (declare (not safe))
                      (_%lp136727%_ _%rest136750%_ __tmp145342)))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (_%lp136727%_ _%rest136750%_ _%r136730%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp136727%_
                                                   _%rest136750%_
                                                   _%r136730%_)))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest136731136739%_))
                              (let ((_%hd136736136767%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest136731136739%_)))
                                    (_%tl136737136769%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest136731136739%_))))
                                (let* ((_%in136772%_ _%hd136736136767%_)
                                       (_%rest136774%_ _%tl136737136769%_))
                                  (declare (not safe))
                                  (_%K136735136764%_
                                   _%rest136774%_
                                   _%in136772%_)))
                              (let ()
                                (declare (not safe))
                                (_%else136733136747%_)))))))))
          (let* ((_%g136620136630%_
                  (lambda (_%g136621136627%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136621136627%_))))
                 (_%g136619136718%_
                  (lambda (_%g136621136633%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136621136633%_))
                        (let ((_%e136625136635%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136621136633%_))))
                          (let ((_%hd136624136638%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136625136635%_)))
                                (_%tl136623136640%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136625136635%_))))
                            ((lambda (_%L136643%_)
                               (let ((_%ht136654%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp136656%_ ((_%rest136658%_
                                                     _%L136643%_)
                                                    (_%loads136659%_ '()))
                                   (letrec ((_%K136661%_
                                             (lambda (_%ctx136711%_
                                                      _%rest136712%_)
                                               (let ((_%id136714%_
                                                      (##structure-ref
                                                       _%ctx136711%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht136654%_
                                                        _%id136714%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp136656%_
                                                        _%rest136712%_
                                                        _%loads136659%_))
                                                     (let ((_%rt136716%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id136714%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht136654%_
                                                          _%id136714%_
                                                          _%rt136716%_))
                                                       (let ((__tmp145344
                                                              (cons _%rt136716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%loads136659%_)))
                 (declare (not safe))
                 (_%lp136656%_ _%rest136712%_ __tmp145344))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_%rest136662136670%_
                                             _%rest136658%_)
                                            (_%else136664136682%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp145346
                                                            (lambda (_%g136677136679%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g136677136679%_)))
                   (__tmp145345 (reverse _%loads136659%_)))
               (declare (not safe))
               (##map __tmp145346 __tmp145345)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K136666136699%_
                                             (lambda (_%rest136685%_
                                                      _%in136686%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in136686%_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%K136661%_
                                                        _%in136686%_
                                                        _%rest136685%_)))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in136686%_
                                                          'gx#module-import::t))
                                                       (let ()
                                                         (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%in136686%_
                               '3
                               gx#module-import::t
                               '#f))
                     (let ((__tmp145347
                            (##direct-structure-ref
                             (##direct-structure-ref
                              _%in136686%_
                              '1
                              gx#module-import::t
                              '#f)
                             '1
                             gx#module-export::t
                             '#f)))
                       (declare (not safe))
                       (_%K136661%_ __tmp145347 _%rest136685%_))
                     (let ()
                       (declare (not safe))
                       (_%lp136656%_ _%rest136685%_ _%loads136659%_))))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in136686%_
                      'gx#import-set::t))
                   (let ()
                     (let ((_%phi136691%_
                            (##direct-structure-ref
                             _%in136686%_
                             '2
                             gx#import-set::t
                             '#f)))
                       (if (fxzero? _%phi136691%_)
                           (let ()
                             (let ((__tmp145348
                                    (##direct-structure-ref
                                     _%in136686%_
                                     '1
                                     gx#import-set::t
                                     '#f)))
                               (declare (not safe))
                               (_%K136661%_ __tmp145348 _%rest136685%_)))
                           (if (fxpositive? _%phi136691%_)
                               (let ()
                                 (let* ((_%deps136695%_
                                         (let ()
                                           (declare (not safe))
                                           (_%import-set-template136618%_
                                            _%in136686%_
                                            '0)))
                                        (__tmp145349
                                         (let ()
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            _%rest136685%_
                                            _%deps136695%_))))
                                   (declare (not safe))
                                   (_%lp136656%_ __tmp145349 _%loads136659%_)))
                               (let ()
                                 (let ()
                                   (declare (not safe))
                                   (_%lp136656%_
                                    _%rest136685%_
                                    _%loads136659%_)))))))
                   (let ()
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"Unexpected import"
                        _%stx136616%_
                        _%in136686%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest136662136670%_))
                                           (let ((_%hd136667136702%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest136662136670%_)))
                                                 (_%tl136668136704%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest136662136670%_))))
                                             (let* ((_%in136707%_
                                                     _%hd136667136702%_)
                                                    (_%rest136709%_
                                                     _%tl136668136704%_))
                                               (declare (not safe))
                                               (_%K136666136699%_
                                                _%rest136709%_
                                                _%in136707%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%else136664136682%_))))))))
                             _%tl136623136640%_)))
                        (let ()
                          (declare (not safe))
                          (_%g136620136630%_ _%g136621136633%_))))))
            (declare (not safe))
            (_%g136619136718%_ _%stx136616%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self136428%_ _%stx136429%_)
        (letrec ((_%add-lift!136431%_
                  (lambda (_%expr136613%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr136613%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote136432%_
                  (lambda (_%id136610%_ _%marks136611%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id136610%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks136611%_
                                                        '()))))))))
                 (_%generate-simple136433%_
                  (lambda (_%stxq136605%_)
                    (let ((_%gid136607%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid136608%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq136605%_))))
                      (let ((__tmp145350
                             (cons 'define
                                   (cons _%gid136607%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136432%_
                                                  _%qid136608%_
                                                  ''()))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136431%_ __tmp145350))
                      (let ((__tmp145351
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145351 _%stxq136605%_ _%gid136607%_))
                      _%gid136607%_)))
                 (_%generate-serialized136434%_
                  (lambda (_%stxq136595%_ _%marks136596%_)
                    (let* ((_%mark-refs136598%_
                            (map _%generate-mark136435%_ _%marks136596%_))
                           (_%gid136600%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid136602%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq136595%_))))
                      (let ((__tmp145352
                             (cons 'define
                                   (cons _%gid136600%_
                                         (cons (let ((__tmp145353
                                                      (cons 'list
                                                            _%mark-refs136598%_)))
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136432%_
                                                  _%qid136602%_
                                                  __tmp145353))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136431%_ __tmp145352))
                      (let ((__tmp145354
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145354 _%stxq136595%_ _%gid136600%_))
                      _%gid136600%_)))
                 (_%generate-mark136435%_
                  (lambda (_%mark136580%_)
                    (let ((_%$e136582%_
                           (let ((__tmp145355
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp145355 _%mark136580%_))))
                      (if _%$e136582%_
                          (values _%$e136582%_)
                          (let ()
                            (let* ((_%gid136586%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-temporary__% '#t)))
                                   (_%repr136588%_
                                    (let ()
                                      (declare (not safe))
                                      (_%serialize-mark136436%_
                                       _%mark136580%_)))
                                   (_%ctx136590%_
                                    (let ((__tmp145356
                                           (##structure-ref
                                            _%mark136580%_
                                            '2
                                            gx#expander-mark::t
                                            '#f)))
                                      (declare (not safe))
                                      (gx#core-context-top__1 __tmp145356)))
                                   (_%ctx-ref136592%_
                                    (if (eq? _%ctx136590%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#current-expander-context)))
                                        '(gx#current-expander-context)
                                        (cons 'gx#import-module
                                              (cons (cons 'quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_%context-ref136437%_ _%ctx136590%_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              (let ((__tmp145357
                                     (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-marks))))
                                (declare (not safe))
                                (hash-put!
                                 __tmp145357
                                 _%mark136580%_
                                 _%gid136586%_))
                              (let ((__tmp145358
                                     (cons 'define
                                           (cons _%gid136586%_
                                                 (cons (cons 'gx#core-deserialize-mark
                                                             (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%repr136588%_ '()))
                           (cons _%ctx-ref136592%_ '())))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (_%add-lift!136431%_ __tmp145358))
                              _%gid136586%_))))))
                 (_%serialize-mark136436%_
                  (lambda (_%mark136527%_)
                    (letrec ((_%quote-e136529%_
                              (lambda (_%sym136578%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym136578%_))
                                    _%sym136578%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym136578%_))))))
                      (let* ((_%mark136530136539%_ _%mark136527%_)
                             (_%E136532136543%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark136530136539%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K136533136555%_
                              (lambda (_%trace136546%_
                                       _%phi136547%_
                                       _%ctx136548%_
                                       _%subst136549%_)
                                (let ((_%subs136551%_
                                       (if _%subst136549%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst136549%_))
                                           '())))
                                  (cons _%phi136547%_
                                        (map (lambda (_%pair136553%_)
                                               (cons (let ((__tmp145359
                                                            (car _%pair136553%_)))
                                                       (declare (not safe))
                                                       (_%quote-e136529%_
                                                        __tmp145359))
                                                     (let ((__tmp145360
                                                            (cdr _%pair136553%_)))
                                                       (declare (not safe))
                                                       (_%quote-e136529%_
                                                        __tmp145360))))
                                             _%subs136551%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark136530136539%_
                               'gx#expander-mark::t))
                            (let* ((_%e136534136558%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136530136539%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst136561%_ _%e136534136558%_)
                                   (_%e136535136563%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136530136539%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx136566%_ _%e136535136563%_)
                                   (_%e136536136568%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136530136539%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi136571%_ _%e136536136568%_)
                                   (_%e136537136573%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136530136539%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace136576%_ _%e136537136573%_))
                              (declare (not safe))
                              (_%K136533136555%_
                               _%trace136576%_
                               _%phi136571%_
                               _%ctx136566%_
                               _%subst136561%_))
                            (let ()
                              (declare (not safe))
                              (_%E136532136543%_)))))))
                 (_%context-ref136437%_
                  (lambda (_%ctx136514%_)
                    (if (let ((__tmp145361
                               (##structure-ref
                                _%ctx136514%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp145361
                           'gx#module-context::t))
                        (let ((_%ctx-ref136516%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-nested136439%_ _%ctx136514%_)))
                              (_%ctx-origin136517%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-origin136438%_ _%ctx136514%_)))
                              (_%origin136518%_
                               (let ((__tmp145362
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (_%context-ref-origin136438%_ __tmp145362))))
                          (if (eq? _%origin136518%_ _%ctx-origin136517%_)
                              (let ((_%ref136520%_
                                     (let ((__tmp145363
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-context))))
                                       (declare (not safe))
                                       (_%context-ref-nested136439%_
                                        __tmp145363))))
                                (let _%lp136522%_ ((_%ref136524%_
                                                    (cdr _%ref136520%_))
                                                   (_%ctx-ref136525%_
                                                    (cdr _%ctx-ref136516%_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _%ref136524%_))
                                           (eq? (car _%ref136524%_)
                                                (car _%ctx-ref136525%_)))
                                      (let ((__tmp145365 (cdr _%ref136524%_))
                                            (__tmp145364
                                             (cdr _%ctx-ref136525%_)))
                                        (declare (not safe))
                                        (_%lp136522%_ __tmp145365 __tmp145364))
                                      (cons '#f _%ctx-ref136525%_))))
                              _%ctx-ref136516%_))
                        (let ((__tmp145366
                               (##structure-ref
                                _%ctx136514%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp145366)))))
                 (_%context-ref-origin136438%_
                  (lambda (_%ctx136506%_)
                    (let _%lp136508%_ ((_%ctx136510%_ _%ctx136506%_))
                      (let ((_%super136512%_
                             (##structure-ref
                              _%ctx136510%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136512%_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_%lp136508%_ _%super136512%_))
                            _%ctx136510%_)))))
                 (_%context-ref-nested136439%_
                  (lambda (_%ctx136497%_)
                    (let _%lp136499%_ ((_%ctx136501%_ _%ctx136497%_)
                                       (_%r136502%_ '()))
                      (let ((_%super136504%_
                             (##structure-ref
                              _%ctx136501%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136504%_
                               'gx#module-context::t))
                            (let ((__tmp145367
                                   (cons (car (##structure-ref
                                               _%ctx136501%_
                                               '7
                                               gx#module-context::t
                                               '#f))
                                         _%r136502%_)))
                              (declare (not safe))
                              (_%lp136499%_ _%super136504%_ __tmp145367))
                            (cons (let ((__tmp145368
                                         (##structure-ref
                                          _%ctx136501%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp145368))
                                  _%r136502%_)))))))
          (let* ((_%g136441136454%_
                  (lambda (_%g136442136451%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136442136451%_))))
                 (_%g136440136494%_
                  (lambda (_%g136442136457%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136442136457%_))
                        (let ((_%e136446136459%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136442136457%_))))
                          (let ((_%hd136445136462%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136446136459%_)))
                                (_%tl136444136464%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136446136459%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136444136464%_))
                                (let ((_%e136449136467%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136444136464%_))))
                                  (let ((_%hd136448136470%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136449136467%_)))
                                        (_%tl136447136472%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136449136467%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136447136472%_))
                                        ((lambda (_%L136475%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L136475%_))
                                               (let ((_%$e136488%_
                                                      (let ((__tmp145369
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp145369 _%L136475%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e136488%_
                                                     (values _%$e136488%_)
                                                     (let ()
                                                       (let ((_%marks136492%_
                                                              (##direct-structure-ref
                                                               _%L136475%_
                                                               '4
                                                               gx#syntax-quote::t
                                                               '#f)))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _%marks136492%_))
                     (let ()
                       (declare (not safe))
                       (_%generate-simple136433%_ _%L136475%_))
                     (let ()
                       (declare (not safe))
                       (_%generate-serialized136434%_
                        _%L136475%_
                        _%marks136492%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L136475%_))))
                                         _%hd136448136470%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g136441136454%_
                                           _%g136442136457%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g136441136454%_ _%g136442136457%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g136441136454%_ _%g136442136457%_))))))
            (declare (not safe))
            (_%g136440136494%_ _%stx136429%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self136360%_ _%stx136361%_)
        (let* ((_%g136363136380%_
                (lambda (_%g136364136377%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136364136377%_))))
               (_%g136362136425%_
                (lambda (_%g136364136383%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136364136383%_))
                      (let ((_%e136369136385%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136364136383%_))))
                        (let ((_%hd136368136388%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136369136385%_)))
                              (_%tl136367136390%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136369136385%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136367136390%_))
                              (let ((_%e136372136393%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136367136390%_))))
                                (let ((_%hd136371136396%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136372136393%_)))
                                      (_%tl136370136398%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136372136393%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136370136398%_))
                                      (let ((_%e136375136401%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136370136398%_))))
                                        (let ((_%hd136374136404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136375136401%_)))
                                              (_%tl136373136406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136375136401%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136373136406%_))
                                              ((lambda (_%L136409%_
                                                        _%L136410%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136410%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self136360%_ _%L136409%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136374136404%_
                                               _%hd136371136396%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g136363136380%_
                                                 _%g136364136383%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136363136380%_
                                         _%g136364136383%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136363136380%_ _%g136364136383%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136363136380%_ _%g136364136383%_))))))
          (declare (not safe))
          (_%g136362136425%_ _%stx136361%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self136309%_ _%stx136310%_)
        (let* ((_%g136312136322%_
                (lambda (_%g136313136319%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136313136319%_))))
               (_%g136311136357%_
                (lambda (_%g136313136325%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136313136325%_))
                      (let ((_%e136317136327%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136313136325%_))))
                        (let ((_%hd136316136330%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136317136327%_)))
                              (_%tl136315136332%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136317136327%_))))
                          ((lambda (_%L136335%_)
                             (let* ((_%c-body136349%_
                                     (map (lambda (_%g136344136346%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self136309%_
                                               _%g136344136346%_)))
                                          _%L136335%_))
                                    (_%c-body136354%_
                                     (let ((__tmp145370
                                            (lambda (_%$obj136351%_)
                                              (let ((__tmp145371
                                                     (let ()
                                                       (declare (not safe))
                                                       (eq? _%$obj136351%_
                                                            '#!void))))
                                                (declare (not safe))
                                                (not __tmp145371)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp145370
                                        _%c-body136349%_))))
                               (cons '%#begin _%c-body136354%_)))
                           _%tl136315136332%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136312136322%_ _%g136313136325%_))))))
          (declare (not safe))
          (_%g136311136357%_ _%stx136310%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self136214%_ _%stx136215%_)
        (let* ((_%g136217136227%_
                (lambda (_%g136218136224%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136218136224%_))))
               (_%g136216136306%_
                (lambda (_%g136218136230%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136218136230%_))
                      (let ((_%e136222136232%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136218136230%_))))
                        (let ((_%hd136221136235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136222136232%_)))
                              (_%tl136220136237%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136222136232%_))))
                          ((lambda (_%L136240%_)
                             (let* ((_%phi136250%_
                                     (let ((__tmp145372
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp145372 '1)))
                                    (_%block136252%_
                                     (let ((__tmp145373
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self136214%_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp145373
                                        _%phi136250%_)))
                                    (_%compiled136255%_
                                     (let ((__tmp145374
                                            (lambda ()
                                              (let ((__tmp145376
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%L136240%_))
                                                    (__tmp145375
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self136214%_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp145376
                                                 'state:
                                                 __tmp145375)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp145374
                                        gx#current-expander-phi
                                        _%phi136250%_))))
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
                                               (gx#stx-pair?
                                                _%g136259136271%_))
                                             (let ((_%e136263136273%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%g136259136271%_))))
                                               (let ((_%hd136262136276%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e136263136273%_)))
                                                     (_%tl136261136278%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e136263136273%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd136262136276%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _%hd136262136276%_))
                                                         ((lambda (_%L136281%_)
                                                            (let ((_%c-body136298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_%$obj136295%_)
                                     (let ((__tmp145377
                                            (let ()
                                              (declare (not safe))
                                              (eq? _%$obj136295%_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp145377)))
                                   _%L136281%_)))
                      (if _%block136252%_
                          (let ()
                            (cons '%#begin-syntax
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'load-module
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons _%block136252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%c-body136298%_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _%c-body136298%_))
                              (let () '#!void)
                              (let ()
                                (cons '%#begin-syntax _%c-body136298%_))))))
                  _%tl136261136278%_)
                 (let ()
                   (declare (not safe))
                   (_%g136258136268%_ _%g136259136271%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g136258136268%_
                                                        _%g136259136271%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g136258136268%_
                                                _%g136259136271%_))))))
                                 (declare (not safe))
                                 (_%g136257136303%_ _%compiled136255%_))))
                           _%tl136220136237%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136217136227%_ _%g136218136230%_))))))
          (declare (not safe))
          (_%g136216136306%_ _%stx136215%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self136145%_ _%stx136146%_)
        (let ((__tmp145378
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self136145%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145378))
        (let* ((_%g136148136162%_
                (lambda (_%g136149136159%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136149136159%_))))
               (_%g136147136211%_
                (lambda (_%g136149136165%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136149136165%_))
                      (let ((_%e136154136167%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136149136165%_))))
                        (let ((_%hd136153136170%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136154136167%_)))
                              (_%tl136152136172%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136154136167%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136152136172%_))
                              (let ((_%e136157136175%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136152136172%_))))
                                (let ((_%hd136156136178%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136157136175%_)))
                                      (_%tl136155136180%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136157136175%_))))
                                  ((lambda (_%L136183%_ _%L136184%_)
                                     (let ((_%key136197%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L136184%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key136197%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx136146%_
                                              _%L136184%_
                                              _%key136197%_)))
                                       (let* ((_%ctx136199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L136184%_)))
                                              (_%code136202%_
                                               (let ((__tmp145379
                                                      (lambda ()
                                                        (let ((__tmp145380
                                                               (##structure-ref
                                                                _%ctx136199%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self136145%_
                                                           __tmp145380)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp145379
                                                  gx#current-expander-context
                                                  _%ctx136199%_)))
                                              (_%rt136204%_
                                               (let ((__tmp145381
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp145381
                                                  _%ctx136199%_)))
                                              (_%loader136206%_
                                               (if _%rt136204%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt136204%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid136208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L136184%_))))
                                         (let ((__tmp145382
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self136145%_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp145382))
                                         (cons '%#module
                                               (cons _%modid136208%_
                                                     (cons _%code136202%_
                                                           _%loader136206%_))))))
                                   _%tl136155136180%_
                                   _%hd136156136178%_)))
                              (let ()
                                (declare (not safe))
                                (_%g136148136162%_ _%g136149136165%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136148136162%_ _%g136149136165%_))))))
          (declare (not safe))
          (_%g136147136211%_ _%stx136146%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx136132%_ _%context-chain136133%_)
        (let _%lp136135%_ ((_%ctx136137%_ _%ctx136132%_) (_%path136138%_ '()))
          (let ((_%super136140%_
                 (##structure-ref _%ctx136137%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super136140%_ _%context-chain136133%_)
                (let ()
                  (let ((__tmp145383
                         (let ((__tmp145384
                                (car (##structure-ref
                                      _%ctx136137%_
                                      '7
                                      gx#module-context::t
                                      '#f))))
                           (declare (not safe))
                           (cons __tmp145384 _%path136138%_))))
                    (declare (not safe))
                    (cons '#f __tmp145383)))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super136140%_
                       'gx#module-context::t))
                    (let ()
                      (let ((__tmp145385
                             (cons (car (##structure-ref
                                         _%ctx136137%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%path136138%_)))
                        (declare (not safe))
                        (_%lp136135%_ _%super136140%_ __tmp145385)))
                    (let ()
                      (cons (let ((__tmp145386
                                   (##structure-ref
                                    _%ctx136137%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (make-symbol__1 '":" __tmp145386))
                            _%path136138%_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp136125%_ ((_%ctx136127%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r136128%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx136127%_ 'gx#module-context::t))
              (let ()
                (let ((__tmp145388
                       (##structure-ref
                        _%ctx136127%_
                        '3
                        gx#phi-context::t
                        '#f))
                      (__tmp145387 (cons _%ctx136127%_ _%r136128%_)))
                  (declare (not safe))
                  (_%lp136125%_ __tmp145388 __tmp145387)))
              (let () _%r136128%_)))))
    (define gxc#generate-meta-import%
      (lambda (_%self135888%_ _%stx135889%_)
        (letrec* ((_%context-chain135891%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-spec135892%_
                   (lambda (_%in136061%_)
                     (let* ((_%in136062136074%_ _%in136061%_)
                            (_%E136064136078%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in136062136074%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K136065136088%_
                             (lambda (_%phi136081%_
                                      _%name136082%_
                                      _%src-name136083%_
                                      _%src-phi136084%_
                                      _%src-key136085%_
                                      _%src-ctx136086%_)
                               (cons _%phi136081%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name136082%_))
                                           (cons _%src-phi136084%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name136083%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in136062136074%_
                              'gx#module-import::t))
                           (let ((_%e136066136091%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in136062136074%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e136066136091%_
                                    'gx#module-export::t))
                                 (let* ((_%e136069136094%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136066136091%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx136097%_ _%e136069136094%_)
                                        (_%e136070136099%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136066136091%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key136102%_ _%e136070136099%_)
                                        (_%e136071136104%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136066136091%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi136107%_ _%e136071136104%_)
                                        (_%e136072136109%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136066136091%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name136112%_ _%e136072136109%_)
                                        (_%e136067136114%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136062136074%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name136117%_ _%e136067136114%_)
                                        (_%e136068136119%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136062136074%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi136122%_ _%e136068136119%_))
                                   (declare (not safe))
                                   (_%K136065136088%_
                                    _%phi136122%_
                                    _%name136117%_
                                    _%src-name136112%_
                                    _%src-phi136107%_
                                    _%src-key136102%_
                                    _%src-ctx136097%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%E136064136078%_))))
                           (let ()
                             (declare (not safe))
                             (_%E136064136078%_))))))
                  (_%make-import-path135893%_
                   (lambda (_%ctx136059%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx136059%_
                        _%context-chain135891%_))))
                  (_%make-import-spec-in135894%_
                   (lambda (_%ctx136056%_ _%in136057%_)
                     (cons 'spec:
                           (cons (let ()
                                   (declare (not safe))
                                   (_%make-import-path135893%_ _%ctx136056%_))
                                 (reverse _%in136057%_))))))
          (let ((__tmp145389
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self135888%_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp145389))
          (let* ((_%g135896135906%_
                  (lambda (_%g135897135903%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135897135903%_))))
                 (_%g135895136053%_
                  (lambda (_%g135897135909%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135897135909%_))
                        (let ((_%e135901135911%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135897135909%_))))
                          (let ((_%hd135900135914%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135901135911%_)))
                                (_%tl135899135916%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135901135911%_))))
                            ((lambda (_%L135919%_)
                               (let _%lp135930%_ ((_%rest135932%_ _%L135919%_)
                                                  (_%current-src135933%_ '#f)
                                                  (_%current-in135934%_ '())
                                                  (_%r135935%_ '()))
                                 (let* ((_%rest135936135944%_ _%rest135932%_)
                                        (_%else135938135954%_
                                         (lambda ()
                                           (let ((_%r135952%_
                                                  (if _%current-src135933%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%make-import-spec-in135894%_
                                                               _%current-src135933%_
                                                               _%current-in135934%_))
                                                            _%r135935%_)
                                                      _%r135935%_)))
                                             (cons '%#import
                                                   (reverse _%r135952%_)))))
                                        (_%K135940136041%_
                                         (lambda (_%rest135957%_ _%in135958%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in135958%_
                                                  'gx#module-import::t))
                                               (let ()
                                                 (let* ((_%in135960135967%_
                                                         _%in135958%_)
                                                        (_%E135962135971%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%in135960135967%_
                            '((module-import (module-export src-ctx)))))
                   '#!void))
                (_%K135963135979%_
                 (lambda (_%src-ctx135974%_)
                   (if (eq? _%current-src135933%_ _%src-ctx135974%_)
                       (let ()
                         (let ((__tmp145390
                                (cons (let ()
                                        (declare (not safe))
                                        (_%make-import-spec135892%_
                                         _%in135958%_))
                                      _%current-in135934%_)))
                           (declare (not safe))
                           (_%lp135930%_
                            _%rest135957%_
                            _%current-src135933%_
                            __tmp145390
                            _%r135935%_)))
                       (if _%current-src135933%_
                           (let ()
                             (let ((__tmp145392
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%make-import-spec135892%_
                                             _%in135958%_))
                                          '()))
                                   (__tmp145391
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%make-import-spec-in135894%_
                                             _%current-src135933%_
                                             _%current-in135934%_))
                                          _%r135935%_)))
                               (declare (not safe))
                               (_%lp135930%_
                                _%rest135957%_
                                _%src-ctx135974%_
                                __tmp145392
                                __tmp145391)))
                           (let ()
                             (let ((__tmp145393
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%make-import-spec135892%_
                                             _%in135958%_))
                                          '())))
                               (declare (not safe))
                               (_%lp135930%_
                                _%rest135957%_
                                _%src-ctx135974%_
                                __tmp145393
                                _%r135935%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in135960135967%_
                                                          'gx#module-import::t))
                                                       (let ((_%e135964135982%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%in135960135967%_
                         '1
                         '#f
                         '#f))))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        _%e135964135982%_
                        'gx#module-export::t))
                     (let* ((_%e135965135985%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%e135964135982%_
                                '1
                                '#f
                                '#f)))
                            (_%src-ctx135988%_ _%e135965135985%_))
                       (declare (not safe))
                       (_%K135963135979%_ _%src-ctx135988%_))
                     (let () (declare (not safe)) (_%E135962135971%_))))
               (let () (declare (not safe)) (_%E135962135971%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in135958%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (let* ((_%phi135991%_
                                                             (##direct-structure-ref
                                                              _%in135958%_
                                                              '2
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src135993%_
                                                             (##direct-structure-ref
                                                              _%in135958%_
                                                              '1
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src-in136033%_
                                                             (let* ((_%g135994136003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_%make-import-path135893%_ _%src135993%_)))
                            (_%E135997136007%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g135994136003%_
                                        '([path])
                                        '(path)))
                               '#!void)))
                       (let ((_%K135999136023%_
                              (lambda (_%path136021%_) _%path136021%_))
                             (_%K135998136013%_
                              (lambda (_%path136011%_)
                                (cons 'in: _%path136011%_))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g135994136003%_))
                             (let ((_%tl136001136028%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g135994136003%_)))
                                   (_%hd136000136026%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g135994136003%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl136001136028%_))
                                   (let ((_%path136031%_ _%hd136000136026%_))
                                     (declare (not safe))
                                     (_%K135999136023%_ _%path136031%_))
                                   (let ((_%path136016%_ _%g135994136003%_))
                                     (declare (not safe))
                                     (_%K135998136013%_ _%path136016%_))))
                             (let ((_%path136016%_ _%g135994136003%_))
                               (declare (not safe))
                               (_%K135998136013%_ _%path136016%_))))))
                    (_%r136035%_
                     (if _%current-src135933%_
                         (cons (let ()
                                 (declare (not safe))
                                 (_%make-import-spec-in135894%_
                                  _%current-src135933%_
                                  _%current-in135934%_))
                               _%r135935%_)
                         _%r135935%_)))
               (let ((__tmp145394
                      (cons (if (fxzero? _%phi135991%_)
                                _%src-in136033%_
                                (cons 'phi:
                                      (cons _%phi135991%_
                                            (cons _%src-in136033%_ '()))))
                            _%r136035%_)))
                 (declare (not safe))
                 (_%lp135930%_ _%rest135957%_ '#f '() __tmp145394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in135958%_
                                                          'gx#module-context::t))
                                                       (let ()
                                                         (let* ((_%r136039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if _%current-src135933%_
                             (cons (let ()
                                     (declare (not safe))
                                     (_%make-import-spec-in135894%_
                                      _%current-src135933%_
                                      _%current-in135934%_))
                                   _%r135935%_)
                             _%r135935%_))
                        (__tmp145395
                         (cons (cons 'runtime:
                                     (let ()
                                       (declare (not safe))
                                       (_%make-import-path135893%_
                                        _%in135958%_)))
                               _%r136039%_)))
                   (declare (not safe))
                   (_%lp135930%_ _%rest135957%_ '#f '() __tmp145395)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135936135944%_))
                                       (let ((_%hd135941136044%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135936135944%_)))
                                             (_%tl135942136046%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135936135944%_))))
                                         (let* ((_%in136049%_
                                                 _%hd135941136044%_)
                                                (_%rest136051%_
                                                 _%tl135942136046%_))
                                           (declare (not safe))
                                           (_%K135940136041%_
                                            _%rest136051%_
                                            _%in136049%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else135938135954%_))))))
                             _%tl135899135916%_)))
                        (let ()
                          (declare (not safe))
                          (_%g135896135906%_ _%g135897135909%_))))))
            (declare (not safe))
            (_%g135895136053%_ _%stx135889%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self135698%_ _%stx135699%_)
        (letrec* ((_%context-chain135701%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-path135702%_
                   (lambda (_%ctx135886%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx135886%_
                        _%context-chain135701%_)))))
          (let* ((_%g135704135714%_
                  (lambda (_%g135705135711%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135705135711%_))))
                 (_%g135703135883%_
                  (lambda (_%g135705135717%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135705135717%_))
                        (let ((_%e135709135719%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135705135717%_))))
                          (let ((_%hd135708135722%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135709135719%_)))
                                (_%tl135707135724%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135709135719%_))))
                            ((lambda (_%L135727%_)
                               (let _%lp135738%_ ((_%rest135740%_ _%L135727%_)
                                                  (_%r135741%_ '()))
                                 (let* ((_%rest135742135750%_ _%rest135740%_)
                                        (_%else135744135758%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r135741%_))))
                                        (_%K135746135871%_
                                         (lambda (_%rest135761%_ _%out135762%_)
                                           (let* ((_%out135763135776%_
                                                   _%out135762%_)
                                                  (_%E135766135780%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out135763135776%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K135770135850%_
                                                    (lambda (_%name135846%_
                                                             _%phi135847%_
                                                             _%key135848%_)
                                                      (let ((__tmp145396
                                                             (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%phi135847%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%key135848%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-identifier-key
                                                      _%name135846%_))
                                                   '()))))
                           _%r135741%_)))
                (declare (not safe))
                (_%lp135738%_ _%rest135761%_ __tmp145396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K135767135830%_
                                                    (lambda (_%phi135784%_
                                                             _%src135785%_)
                                                      (let* ((_%out135825%_
                                                              (if _%src135785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g135786135795%_
                                              (let ()
                                                (declare (not safe))
                                                (_%make-import-path135702%_
                                                 _%src135785%_)))
                                             (_%E135789135799%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g135786135795%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K135791135815%_
                                               (lambda (_%path135813%_)
                                                 _%path135813%_))
                                              (_%K135790135805%_
                                               (lambda (_%path135803%_)
                                                 (cons 'in: _%path135803%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g135786135795%_))
                                              (let ((_%tl135793135820%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g135786135795%_)))
                                                    (_%hd135792135818%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g135786135795%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl135793135820%_))
                                                    (let ((_%path135823%_
                                                           _%hd135792135818%_))
                                                      (declare (not safe))
                                                      (_%K135791135815%_
                                                       _%path135823%_))
                                                    (let ((_%path135808%_
                                                           _%g135786135795%_))
                                                      (declare (not safe))
                                                      (_%K135790135805%_
                                                       _%path135808%_))))
                                              (let ((_%path135808%_
                                                     _%g135786135795%_))
                                                (declare (not safe))
                                                (_%K135790135805%_
                                                 _%path135808%_)))))
                                      '()))
                          '#t))
                     (_%out135827%_
                      (if (fxzero? _%phi135784%_)
                          _%out135825%_
                          (cons 'phi:
                                (cons _%phi135784%_
                                      (cons _%out135825%_ '()))))))
                (let ((__tmp145397 (cons _%out135827%_ _%r135741%_)))
                  (declare (not safe))
                  (_%lp135738%_ _%rest135761%_ __tmp145397))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match135765135843%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out135763135776%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e135768135833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135763135776%_
                               '1
                               '#f
                               '#f)))
                           (_%e135769135838%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135763135776%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src135836%_ _%e135768135833%_)
                            (_%phi135841%_ _%e135769135838%_))
                        (let ()
                          (declare (not safe))
                          (_%K135767135830%_ _%phi135841%_ _%src135836%_))))
                    (let () (declare (not safe)) (_%E135766135780%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out135763135776%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e135771135853%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out135763135776%_
                        '1
                        '#f
                        '#f)))
                    (_%e135772135856%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135763135776%_
                        '2
                        '#f
                        '#f)))
                    (_%e135773135861%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135763135776%_
                        '3
                        '#f
                        '#f)))
                    (_%e135774135866%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135763135776%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key135859%_ _%e135772135856%_)
                     (_%phi135864%_ _%e135773135861%_)
                     (_%name135869%_ _%e135774135866%_))
                 (let ()
                   (declare (not safe))
                   (_%K135770135850%_
                    _%name135869%_
                    _%phi135864%_
                    _%key135859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%try-match135765135843%_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135742135750%_))
                                       (let ((_%hd135747135874%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135742135750%_)))
                                             (_%tl135748135876%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135742135750%_))))
                                         (let* ((_%out135879%_
                                                 _%hd135747135874%_)
                                                (_%rest135881%_
                                                 _%tl135748135876%_))
                                           (declare (not safe))
                                           (_%K135746135871%_
                                            _%rest135881%_
                                            _%out135879%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else135744135758%_))))))
                             _%tl135707135724%_)))
                        (let ()
                          (declare (not safe))
                          (_%g135704135714%_ _%g135705135717%_))))))
            (declare (not safe))
            (_%g135703135883%_ _%stx135699%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self135659%_ _%stx135660%_)
        (let ((__tmp145398
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135659%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145398))
        (let* ((_%g135662135672%_
                (lambda (_%g135663135669%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135663135669%_))))
               (_%g135661135695%_
                (lambda (_%g135663135675%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135663135675%_))
                      (let ((_%e135667135677%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135663135675%_))))
                        (let ((_%hd135666135680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135667135677%_)))
                              (_%tl135665135682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135667135677%_))))
                          ((lambda (_%L135685%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L135685%_)))
                           _%tl135665135682%_)))
                      (let ()
                        (declare (not safe))
                        (_%g135662135672%_ _%g135663135675%_))))))
          (declare (not safe))
          (_%g135661135695%_ _%stx135660%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self135530%_ _%stx135531%_)
        (letrec ((_%generate1135533%_
                  (lambda (_%id135654%_ _%eid135655%_)
                    (let ((_%eid135657%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid135655%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid135657%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx135531%_
                             _%eid135657%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id135654%_))
                            (cons _%eid135657%_ '()))))))
          (let* ((_%g135535135563%_
                  (lambda (_%g135536135560%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135536135560%_))))
                 (_%g135534135651%_
                  (lambda (_%g135536135566%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135536135566%_))
                        (let ((_%e135541135568%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135536135566%_))))
                          (let ((_%hd135540135571%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135541135568%_)))
                                (_%tl135539135573%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135541135568%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl135539135573%_))
                                (let ((_g145399_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl135539135573%_
                                          '0))))
                                  (begin
                                    (let ((_g145400_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145399_)
                                                 (##vector-length _g145399_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145400_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145400_)))
                                    (let ((_%target135542135576%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145399_ 0)))
                                          (_%tl135544135578%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145399_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135544135578%_))
                                          (letrec ((_%loop135545135581%_
                                                    (lambda (_%hd135543135584%_
                                                             _%eid135549135586%_
                                                             _%id135550135588%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd135543135584%_))
                                                          (let ((_%e135546135591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd135543135584%_))))
                    (let ((_%lp-hd135547135594%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135546135591%_)))
                          (_%lp-tl135548135596%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135546135591%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd135547135594%_))
                          (let ((_%e135555135599%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd135547135594%_))))
                            (let ((_%hd135554135602%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135555135599%_)))
                                  (_%tl135553135604%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135555135599%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl135553135604%_))
                                  (let ((_%e135558135607%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl135553135604%_))))
                                    (let ((_%hd135557135610%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135558135607%_)))
                                          (_%tl135556135612%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135558135607%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135556135612%_))
                                          (let ((__tmp145402
                                                 (cons _%hd135557135610%_
                                                       _%eid135549135586%_))
                                                (__tmp145401
                                                 (cons _%hd135554135602%_
                                                       _%id135550135588%_)))
                                            (declare (not safe))
                                            (_%loop135545135581%_
                                             _%lp-tl135548135596%_
                                             __tmp145402
                                             __tmp145401))
                                          (let ()
                                            (declare (not safe))
                                            (_%g135535135563%_
                                             _%g135536135566%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g135535135563%_ _%g135536135566%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g135535135563%_ _%g135536135566%_)))))
                  (let ((_%eid135551135615%_ (reverse _%eid135549135586%_))
                        (_%id135552135617%_ (reverse _%id135550135588%_)))
                    ((lambda (_%L135620%_ _%L135621%_)
                       (cons '%#extern
                             (map _%generate1135533%_
                                  (let ((__tmp145403
                                         (lambda (_%g135636135639%_
                                                  _%g135637135641%_)
                                           (cons _%g135636135639%_
                                                 _%g135637135641%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145403 '() _%L135621%_))
                                  (let ((__tmp145404
                                         (lambda (_%g135643135646%_
                                                  _%g135644135648%_)
                                           (cons _%g135643135646%_
                                                 _%g135644135648%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145404 '() _%L135620%_)))))
                     _%eid135551135615%_
                     _%id135552135617%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop135545135581%_
                                               _%target135542135576%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g135535135563%_
                                             _%g135536135566%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135535135563%_ _%g135536135566%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135535135563%_ _%g135536135566%_))))))
            (declare (not safe))
            (_%g135534135651%_ _%stx135531%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self135320%_ _%stx135321%_)
        (letrec ((_%generate1135323%_
                  (lambda (_%id135525%_)
                    (let ((_%eid135527%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id135525%_)))
                          (_%ident135528%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id135525%_))))
                      (cons '%#define-runtime
                            (cons _%ident135528%_ (cons _%eid135527%_ '()))))))
                 (_%generate*135324%_
                  (lambda (_%all135493%_)
                    (let* ((_%all135494135502%_ _%all135493%_)
                           (_%else135496135510%_
                            (lambda () (cons '%#begin _%all135493%_)))
                           (_%K135498135515%_
                            (lambda (_%one135513%_) _%one135513%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all135494135502%_))
                          (let ((_%hd135499135518%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all135494135502%_)))
                                (_%tl135500135520%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all135494135502%_))))
                            (let ((_%one135523%_ _%hd135499135518%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl135500135520%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K135498135515%_ _%one135523%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%else135496135510%_)))))
                          (let ()
                            (declare (not safe))
                            (_%else135496135510%_)))))))
          (let* ((_%g135326135343%_
                  (lambda (_%g135327135340%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135327135340%_))))
                 (_%g135325135490%_
                  (lambda (_%g135327135346%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135327135346%_))
                        (let ((_%e135332135348%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135327135346%_))))
                          (let ((_%hd135331135351%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135332135348%_)))
                                (_%tl135330135353%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135332135348%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135330135353%_))
                                (let ((_%e135335135356%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135330135353%_))))
                                  (let ((_%hd135334135359%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135335135356%_)))
                                        (_%tl135333135361%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135335135356%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135333135361%_))
                                        (let ((_%e135338135364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135333135361%_))))
                                          (let ((_%hd135337135367%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135338135364%_)))
                                                (_%tl135336135369%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135338135364%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135336135369%_))
                                                ((lambda (_%L135372%_
                                                          _%L135373%_)
                                                   (let _%lp135389%_ ((_%rest135391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L135373%_)
                              (_%r135392%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx145020145021%_
                                                             _%rest135391%_)
                                                            (_%g135397135414%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx145020145021%_)))))
               (let ((_%__kont145022145023%_
                      (lambda (_%L135477%_)
                        (let ()
                          (declare (not safe))
                          (_%lp135389%_ _%L135477%_ _%r135392%_))))
                     (_%__kont145024145025%_
                      (lambda (_%L135450%_ _%L135451%_)
                        (let ((__tmp145405
                               (cons (let ()
                                       (declare (not safe))
                                       (_%generate1135323%_ _%L135451%_))
                                     _%r135392%_)))
                          (declare (not safe))
                          (_%lp135389%_ _%L135450%_ __tmp145405))))
                     (_%__kont145026145027%_
                      (lambda (_%L135426%_)
                        (let ((__tmp145406
                               (let ((__tmp145407
                                      (cons (let ()
                                              (declare (not safe))
                                              (_%generate1135323%_
                                               _%L135426%_))
                                            '())))
                                 (declare (not safe))
                                 (__foldl1 cons __tmp145407 _%r135392%_))))
                          (declare (not safe))
                          (_%generate*135324%_ __tmp145406))))
                     (_%__kont145028145029%_
                      (lambda ()
                        (let ((__tmp145408 (reverse _%r135392%_)))
                          (declare (not safe))
                          (_%generate*135324%_ __tmp145408)))))
                 (let ((_%g135395135437%_
                        (lambda ()
                          (let ((_%L135426%_ _%__stx145020145021%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L135426%_))
                                (_%__kont145026145027%_ _%L135426%_)
                                (_%__kont145028145029%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx145020145021%_))
                       (let ((_%e135402135466%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx145020145021%_))))
                         (let ((_%tl135400135471%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e135402135466%_)))
                               (_%hd135401135469%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e135402135466%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd135401135469%_))
                               (let ((_%e135403135474%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd135401135469%_))))
                                 (if (equal? _%e135403135474%_ '#f)
                                     (_%__kont145022145023%_
                                      _%tl135400135471%_)
                                     (_%__kont145024145025%_
                                      _%tl135400135471%_
                                      _%hd135401135469%_)))
                               (_%__kont145024145025%_
                                _%tl135400135471%_
                                _%hd135401135469%_))))
                       (let () (declare (not safe)) (_%g135395135437%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd135337135367%_
                                                 _%hd135334135359%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g135326135343%_
                                                   _%g135327135346%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g135326135343%_
                                           _%g135327135346%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135326135343%_ _%g135327135346%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135326135343%_ _%g135327135346%_))))))
            (declare (not safe))
            (_%g135325135490%_ _%stx135321%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self135217%_ _%stx135218%_)
        (let* ((_%g135220135237%_
                (lambda (_%g135221135234%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135221135234%_))))
               (_%g135219135317%_
                (lambda (_%g135221135240%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135221135240%_))
                      (let ((_%e135226135242%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135221135240%_))))
                        (let ((_%hd135225135245%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135226135242%_)))
                              (_%tl135224135247%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135226135242%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135224135247%_))
                              (let ((_%e135229135250%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135224135247%_))))
                                (let ((_%hd135228135253%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135229135250%_)))
                                      (_%tl135227135255%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135229135250%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135227135255%_))
                                      (let ((_%e135232135258%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135227135255%_))))
                                        (let ((_%hd135231135261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135232135258%_)))
                                              (_%tl135230135263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135232135258%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135230135263%_))
                                              ((lambda (_%L135266%_
                                                        _%L135267%_)
                                                 (let* ((_%eid135282%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L135267%_)))
                                                        (_%phi135284%_
                                                         (let ((__tmp145409
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp145409 '1)))
                (_%block135286%_
                 (let ((__tmp145410
                        (let ()
                          (declare (not safe))
                          (slot-ref__0 _%self135217%_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp145410 _%phi135284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g135289135296%_
                                                           (lambda (_%g135290135293%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g135290135293%_))))
                  (_%g135288135314%_
                   (lambda (_%g135290135299%_)
                     ((lambda (_%L135301%_)
                        (let ()
                          (let ((__tmp145412
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _%self135217%_ 'state)))
                                (__tmp145411
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime))
                                       (cons _%L135301%_
                                             (cons _%L135266%_ '())))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp145412
                             _%phi135284%_
                             __tmp145411))))
                      _%g135290135299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%g135288135314%_
                                                      _%eid135282%_))
                                                   (if _%block135286%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block135286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%L135267%_))
                                             (cons _%eid135282%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135267%_))
                           (cons _%eid135282%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135231135261%_
                                               _%hd135228135253%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135220135237%_
                                                 _%g135221135240%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135220135237%_
                                         _%g135221135240%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135220135237%_ _%g135221135240%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135220135237%_ _%g135221135240%_))))))
          (declare (not safe))
          (_%g135219135317%_ _%stx135218%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self135149%_ _%stx135150%_)
        (let* ((_%g135152135169%_
                (lambda (_%g135153135166%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135153135166%_))))
               (_%g135151135214%_
                (lambda (_%g135153135172%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135153135172%_))
                      (let ((_%e135158135174%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135153135172%_))))
                        (let ((_%hd135157135177%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135158135174%_)))
                              (_%tl135156135179%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135158135174%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135156135179%_))
                              (let ((_%e135161135182%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135156135179%_))))
                                (let ((_%hd135160135185%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135161135182%_)))
                                      (_%tl135159135187%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135161135182%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135159135187%_))
                                      (let ((_%e135164135190%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135159135187%_))))
                                        (let ((_%hd135163135193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135164135190%_)))
                                              (_%tl135162135195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135164135190%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135162135195%_))
                                              ((lambda (_%L135198%_
                                                        _%L135199%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%L135199%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135198%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135163135193%_
                                               _%hd135160135185%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135152135169%_
                                                 _%g135153135172%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135152135169%_
                                         _%g135153135172%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135152135169%_ _%g135153135172%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135152135169%_ _%g135153135172%_))))))
          (declare (not safe))
          (_%g135151135214%_ _%stx135150%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self135146%_ _%stx135147%_)
        (let ((__tmp145414
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135146%_ 'state)))
              (__tmp145413
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp145414 __tmp145413 _%stx135147%_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _%self135146%_ _%stx135147%_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self135143%_ _%stx135144%_)
        (let ((__tmp145416
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135143%_ 'state)))
              (__tmp145415
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp145416 __tmp145415 _%stx135144%_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp145418 (list)) (__tmp145417 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp145418
         '(src n open blocks)
         __tmp145417
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args135140%_
        (apply make-instance gxc#meta-state::t _%$args135140%_)))
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
      (lambda (_%self135126%_ _%ctx135127%_)
        (let ()
          (let ((_%self135130%_ _%self135126%_))
            (let ()
              (if (let ((__tmp145419
                         (let ()
                           (declare (not safe))
                           (##structure-length _%self135130%_))))
                    (declare (not safe))
                    (##fx< '4 __tmp145419))
                  (begin
                    (let ((__tmp145420
                           (let ((__tmp145421
                                  (##structure-ref
                                   _%ctx135127%_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#module-id->path-string __tmp145421))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self135130%_
                       __tmp145420
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self135130%_
                       '1
                       '2
                       '#f
                       '#f))
                    (let ((__tmp145422
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self135130%_
                       __tmp145422
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self135130%_
                       '()
                       '4
                       '#f
                       '#f))
                    '#!void)
                  (let ((__tmp145423
                         (let ()
                           (declare (not safe))
                           (##vector-length _%self135130%_))))
                    (declare (not safe))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self135130%_
                           '4
                           __tmp145423))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp145425 (list)) (__tmp145424 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp145425
         '(ctx phi n code)
         __tmp145424
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args135001%_
        (apply make-instance gxc#meta-state-block::t _%$args135001%_)))
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
      (lambda (_%state134960%_ _%phi134961%_)
        (let* ((_%state134962134970%_ _%state134960%_)
               (_%E134964134974%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state134962134970%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K134965134983%_
                (lambda (_%open134977%_ _%n134978%_ _%src134979%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open134977%_ _%phi134961%_))
                      '#f
                      (let ((_%block-ref134981%_
                             (let ((__tmp145426 (number->string _%n134978%_)))
                               (declare (not safe))
                               (##string-append
                                _%src134979%_
                                '"~"
                                __tmp145426))))
                        (##structure-set!
                         _%state134960%_
                         (let () (declare (not safe)) (##fx+ _%n134978%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp145427
                               (let ((__tmp145428
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp145428
                                  _%phi134961%_
                                  _%n134978%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open134977%_ _%phi134961%_ __tmp145427))
                        _%block-ref134981%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state134962134970%_
                 'gxc#meta-state::t))
              (let* ((_%e134966134986%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134962134970%_
                         '1
                         '#f
                         '#f)))
                     (_%src134989%_ _%e134966134986%_)
                     (_%e134967134991%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134962134970%_
                         '2
                         '#f
                         '#f)))
                     (_%n134994%_ _%e134967134991%_)
                     (_%e134968134996%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134962134970%_
                         '3
                         '#f
                         '#f)))
                     (_%open134999%_ _%e134968134996%_))
                (declare (not safe))
                (_%K134965134983%_ _%open134999%_ _%n134994%_ _%src134989%_))
              (let () (declare (not safe)) (_%E134964134974%_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state134954%_ _%phi134955%_ _%stx134956%_)
        (let ((_%block134958%_
               (let ((__tmp145429
                      (##structure-ref
                       _%state134954%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp145429 _%phi134955%_))))
          (##structure-set!
           _%block134958%_
           (cons _%stx134956%_
                 (##structure-ref
                  _%block134958%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state134948%_)
        (##structure-set!
         _%state134948%_
         (let ((__tmp145432
                (lambda (_%_134950%_ _%block134951%_ _%r134952%_)
                  (cons _%block134951%_ _%r134952%_)))
               (__tmp145431
                (##structure-ref _%state134948%_ '4 gxc#meta-state::t '#f))
               (__tmp145430
                (##structure-ref _%state134948%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp145432 __tmp145431 __tmp145430))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state134948%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state134900%_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _%state134900%_))
        (let ((__tmp145434
               (lambda (_%block134902%_ _%r134903%_)
                 (let* ((_%block134904134913%_ _%block134902%_)
                        (_%E134906134917%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block134904134913%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K134907134925%_
                         (lambda (_%code134920%_
                                  _%n134921%_
                                  _%phi134922%_
                                  _%ctx134923%_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%code134920%_))
                               _%r134903%_
                               (cons (cons _%ctx134923%_
                                           (cons _%phi134922%_
                                                 (cons _%n134921%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code134920%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r134903%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block134904134913%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e134908134928%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134904134913%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx134931%_ _%e134908134928%_)
                              (_%e134909134933%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134904134913%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi134936%_ _%e134909134933%_)
                              (_%e134910134938%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134904134913%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n134941%_ _%e134910134938%_)
                              (_%e134911134943%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134904134913%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code134946%_ _%e134911134943%_))
                         (declare (not safe))
                         (_%K134907134925%_
                          _%code134946%_
                          _%n134941%_
                          _%phi134936%_
                          _%ctx134931%_))
                       (let () (declare (not safe)) (_%E134906134917%_))))))
              (__tmp145433
               (##structure-ref _%state134900%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp145434 '() __tmp145433))))
    (define gxc#collect-expression-refs
      (lambda (_%stx134896%_)
        (let ((_%ht134898%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs
             _%stx134896%_
             'table:
             _%ht134898%_))
          _%ht134898%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self134839%_ _%stx134840%_)
        (let* ((_%g134842134855%_
                (lambda (_%g134843134852%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134843134852%_))))
               (_%g134841134893%_
                (lambda (_%g134843134858%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134843134858%_))
                      (let ((_%e134847134860%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134843134858%_))))
                        (let ((_%hd134846134863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134847134860%_)))
                              (_%tl134845134865%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134847134860%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134845134865%_))
                              (let ((_%e134850134868%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134845134865%_))))
                                (let ((_%hd134849134871%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134850134868%_)))
                                      (_%tl134848134873%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134850134868%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134848134873%_))
                                      ((lambda (_%L134876%_)
                                         (let* ((_%bind134888%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L134876%_)))
                                                (_%eid134890%_
                                                 (if _%bind134888%_
                                                     (##structure-ref
                                                      _%bind134888%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L134876%_)))))
                                           (let ((__tmp145435
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _%self134839%_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp145435
                                              _%eid134890%_
                                              _%eid134890%_))))
                                       _%hd134849134871%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g134842134855%_
                                         _%g134843134858%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134842134855%_ _%g134843134858%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134842134855%_ _%g134843134858%_))))))
          (declare (not safe))
          (_%g134841134893%_ _%stx134840%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self134766%_ _%stx134767%_)
        (let* ((_%g134769134786%_
                (lambda (_%g134770134783%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134770134783%_))))
               (_%g134768134836%_
                (lambda (_%g134770134789%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134770134789%_))
                      (let ((_%e134775134791%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134770134789%_))))
                        (let ((_%hd134774134794%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134775134791%_)))
                              (_%tl134773134796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134775134791%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134773134796%_))
                              (let ((_%e134778134799%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134773134796%_))))
                                (let ((_%hd134777134802%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134778134799%_)))
                                      (_%tl134776134804%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134778134799%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134776134804%_))
                                      (let ((_%e134781134807%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134776134804%_))))
                                        (let ((_%hd134780134810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134781134807%_)))
                                              (_%tl134779134812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134781134807%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134779134812%_))
                                              ((lambda (_%L134815%_
                                                        _%L134816%_)
                                                 (let* ((_%bind134831%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L134816%_)))
                                                        (_%eid134833%_
                                                         (if _%bind134831%_
                                                             (##structure-ref
                                                              _%bind134831%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L134816%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp145436
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self134766%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp145436
                                                      _%eid134833%_
                                                      _%eid134833%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self134766%_
                                                      _%L134815%_))))
                                               _%hd134780134810%_
                                               _%hd134777134802%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g134769134786%_
                                                 _%g134770134789%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134769134786%_
                                         _%g134770134789%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134769134786%_ _%g134770134789%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134769134786%_ _%g134770134789%_))))))
          (declare (not safe))
          (_%g134768134836%_ _%stx134767%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self134723%_ _%stx134724%_)
        (let* ((_%g134726134736%_
                (lambda (_%g134727134733%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134727134733%_))))
               (_%g134725134763%_
                (lambda (_%g134727134739%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134727134739%_))
                      (let ((_%e134731134741%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134727134739%_))))
                        (let ((_%hd134730134744%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134731134741%_)))
                              (_%tl134729134746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134731134741%_))))
                          ((lambda (_%L134749%_)
                             (let ((__tmp145437
                                    (lambda (_%g134758134760%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self134723%_
                                         _%g134758134760%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp145437 _%L134749%_)))
                           _%tl134729134746%_)))
                      (let ()
                        (declare (not safe))
                        (_%g134726134736%_ _%g134727134739%_))))))
          (declare (not safe))
          (_%g134725134763%_ _%stx134724%_))))
    (define gxc#count-values-single%
      (lambda (_%self134720%_ _%stx134721%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self134586%_ _%stx134587%_)
        (let* ((_%__stx145050145051%_ _%stx134587%_)
               (_%g134590134619%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145050145051%_)))))
          (let ((_%__kont145052145053%_
                 (lambda (_%L134687%_ _%L134688%_)
                   (length (let ((__tmp145438
                                  (lambda (_%g134709134712%_ _%g134710134714%_)
                                    (cons _%g134709134712%_
                                          _%g134710134714%_))))
                             (declare (not safe))
                             (__foldr1 __tmp145438 '() _%L134687%_)))))
                (_%__kont145056145057%_ (lambda () '#f)))
            (let ((_%__match145095145096%_
                   (lambda (_%e134596134631%_
                            _%hd134595134634%_
                            _%tl134594134636%_
                            _%e134599134639%_
                            _%hd134598134642%_
                            _%tl134597134644%_
                            _%e134602134647%_
                            _%hd134601134650%_
                            _%tl134600134652%_
                            _%e134605134655%_
                            _%hd134604134658%_
                            _%tl134603134660%_
                            _%__splice145054145055%_
                            _%target134606134663%_
                            _%tl134608134665%_)
                     (letrec ((_%loop134609134668%_
                               (lambda (_%hd134607134671%_
                                        _%rand134613134673%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd134607134671%_))
                                     (let ((_%e134610134676%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd134607134671%_))))
                                       (let ((_%lp-tl134612134681%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e134610134676%_)))
                                             (_%lp-hd134611134679%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e134610134676%_))))
                                         (let ((__tmp145439
                                                (cons _%lp-hd134611134679%_
                                                      _%rand134613134673%_)))
                                           (declare (not safe))
                                           (_%loop134609134668%_
                                            _%lp-tl134612134681%_
                                            __tmp145439))))
                                     (let ((_%rand134614134684%_
                                            (reverse _%rand134613134673%_)))
                                       (let ((_%L134687%_ _%rand134614134684%_)
                                             (_%L134688%_ _%hd134604134658%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L134688%_
                                                'values))
                                             (_%__kont145052145053%_
                                              _%L134687%_
                                              _%L134688%_)
                                             (_%__kont145056145057%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop134609134668%_ _%target134606134663%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145050145051%_))
                  (let ((_%e134596134631%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145050145051%_))))
                    (let ((_%tl134594134636%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e134596134631%_)))
                          (_%hd134595134634%_
                           (let ()
                             (declare (not safe))
                             (##car _%e134596134631%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl134594134636%_))
                          (let ((_%e134599134639%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl134594134636%_))))
                            (let ((_%tl134597134644%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e134599134639%_)))
                                  (_%hd134598134642%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e134599134639%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd134598134642%_))
                                  (let ((_%e134602134647%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd134598134642%_))))
                                    (let ((_%tl134600134652%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134602134647%_)))
                                          (_%hd134601134650%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134602134647%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd134601134650%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd134601134650%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl134600134652%_))
                                                  (let ((_%e134605134655%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl134600134652%_))))
                                                    (let ((_%tl134603134660%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e134605134655%_)))
                                                          (_%hd134604134658%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e134605134655%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl134603134660%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl134597134644%_))
                      (let ((_%__splice145054145055%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl134597134644%_
                                '0))))
                        (let ((_%tl134608134665%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145054145055%_ '1)))
                              (_%target134606134663%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145054145055%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl134608134665%_))
                              (_%__match145095145096%_
                               _%e134596134631%_
                               _%hd134595134634%_
                               _%tl134594134636%_
                               _%e134599134639%_
                               _%hd134598134642%_
                               _%tl134597134644%_
                               _%e134602134647%_
                               _%hd134601134650%_
                               _%tl134600134652%_
                               _%e134605134655%_
                               _%hd134604134658%_
                               _%tl134603134660%_
                               _%__splice145054145055%_
                               _%target134606134663%_
                               _%tl134608134665%_)
                              (_%__kont145056145057%_))))
                      (_%__kont145056145057%_))
                  (_%__kont145056145057%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145056145057%_))
                                              (_%__kont145056145057%_))
                                          (_%__kont145056145057%_))))
                                  (_%__kont145056145057%_))))
                          (_%__kont145056145057%_))))
                  (_%__kont145056145057%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self134489%_ _%stx134490%_)
        (let* ((_%g134492134513%_
                (lambda (_%g134493134510%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134493134510%_))))
               (_%g134491134583%_
                (lambda (_%g134493134516%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134493134516%_))
                      (let ((_%e134499134518%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134493134516%_))))
                        (let ((_%hd134498134521%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134499134518%_)))
                              (_%tl134497134523%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134499134518%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134497134523%_))
                              (let ((_%e134502134526%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134497134523%_))))
                                (let ((_%hd134501134529%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134502134526%_)))
                                      (_%tl134500134531%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134502134526%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134500134531%_))
                                      (let ((_%e134505134534%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134500134531%_))))
                                        (let ((_%hd134504134537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134505134534%_)))
                                              (_%tl134503134539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134505134534%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl134503134539%_))
                                              (let ((_%e134508134542%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl134503134539%_))))
                                                (let ((_%hd134507134545%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e134508134542%_)))
                                                      (_%tl134506134547%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e134508134542%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl134506134547%_))
                                                      ((lambda (_%L134550%_
                                                                _%L134551%_
                                                                _%L134552%_)
                                                         (let ((_%c1134569134571%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self134489%_ _%L134551%_))))
                   (if _%c1134569134571%_
                       (let* ((_%c1134574%_ _%c1134569134571%_)
                              (_%c2134575134577%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self134489%_
                                  _%L134550%_))))
                         (if _%c2134575134577%_
                             (let ((_%c2134580%_ _%c2134575134577%_))
                               (if (fx= _%c1134574%_ _%c2134580%_)
                                   _%c1134574%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd134507134545%_
               _%hd134504134537%_
               _%hd134501134529%_)
              (let ()
                (declare (not safe))
                (_%g134492134513%_ _%g134493134516%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g134492134513%_
                                                 _%g134493134516%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134492134513%_
                                         _%g134493134516%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134492134513%_ _%g134493134516%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134492134513%_ _%g134493134516%_))))))
          (declare (not safe))
          (_%g134491134583%_ _%stx134490%_))))))
