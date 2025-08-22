(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1755903077)
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
        (letrec ((_%hash-e152246%_
                  (lambda (_%id152248%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id152248%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e152246%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp153633 (list gxc#::void::t))
            (__tmp153632 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp153633
         '()
         __tmp153632
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args152242%_
        (apply make-instance gxc#::collect-bindings::t _%$args152242%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp153634
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
        (__make-promise __tmp153634)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx152234%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self152237%_
                (let ((__obj153608
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj153608))
               (__tmp153635
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self152237%_ _%stx152234%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp153635
           gxc#current-compile-method
           _%self152237%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp153637 (list gxc#::void::t))
            (__tmp153636 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp153637
         '(modules)
         __tmp153636
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args152231%_
        (apply make-instance gxc#::lift-modules::t _%$args152231%_)))
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
      (let ((__tmp153638
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
        (__make-promise __tmp153638)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords152205%_ _%modules152202152206%_ _%stx152208%_)
        (let ((_%modules152211%_
               (if (eq? _%modules152202152206%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules152202152206%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self152213%_
                  (let ((__obj153610
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153610
                       _%modules152211%_
                       '1
                       '#f
                       '#f))
                    __obj153610))
                 (__tmp153639
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152213%_ _%stx152208%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp153639
             gxc#current-compile-method
             _%self152213%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords152220%_ . _%args152221%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords152220%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152220%_
                  'modules:
                  absent-value))
               _%args152221%_)))
    (define gxc#apply-lift-modules
      (lambda _%args152203152227%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args152203152227%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp153641 (list)) (__tmp153640 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp153641
         '()
         __tmp153640
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args152198%_
        (apply make-instance gxc#::find-runtime-code::t _%$args152198%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp153642
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
        (__make-promise __tmp153642)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx152190%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self152193%_
                (let ((__obj153612
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj153612))
               (__tmp153643
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self152193%_ _%stx152190%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp153643
           gxc#current-compile-method
           _%self152193%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp153645 (list gxc#::false::t))
            (__tmp153644 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp153645
         '()
         __tmp153644
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args152187%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args152187%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp153646
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
        (__make-promise __tmp153646)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx152179%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self152182%_
                (let ((__obj153614
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj153614))
               (__tmp153647
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self152182%_ _%stx152179%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp153647
           gxc#current-compile-method
           _%self152182%_))))
    (define gxc#::count-values::t
      (let ((__tmp153649 (list gxc#::false-expression::t))
            (__tmp153648 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp153649
         '()
         __tmp153648
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args152176%_
        (apply make-instance gxc#::count-values::t _%$args152176%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp153650
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
        (__make-promise __tmp153650)))
    (define gxc#apply-count-values
      (lambda (_%stx152168%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self152171%_
                (let ((__obj153616
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj153616))
               (__tmp153651
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self152171%_ _%stx152168%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp153651
           gxc#current-compile-method
           _%self152171%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp153652 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp153652
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args152165%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args152165%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp153653
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
        (__make-promise __tmp153653)))
    (define gxc#::generate-loader::t
      (let ((__tmp153655 (list gxc#::generate-runtime-empty::t))
            (__tmp153654 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp153655
         '()
         __tmp153654
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args152161%_
        (apply make-instance gxc#::generate-loader::t _%$args152161%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp153656
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
        (__make-promise __tmp153656)))
    (define gxc#apply-generate-loader
      (lambda (_%stx152153%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self152156%_
                (let ((__obj153619
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj153619))
               (__tmp153657
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self152156%_ _%stx152153%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp153657
           gxc#current-compile-method
           _%self152156%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp153658 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp153658
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args152150%_
        (apply make-instance gxc#::generate-runtime::t _%$args152150%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp153659
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
        (__make-promise __tmp153659)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx152142%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self152145%_
                (let ((__obj153621
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj153621))
               (__tmp153660
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self152145%_ _%stx152142%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp153660
           gxc#current-compile-method
           _%self152145%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp153662 (list gxc#::generate-runtime::t))
            (__tmp153661 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp153662
         '()
         __tmp153661
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args152139%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args152139%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp153663
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
        (__make-promise __tmp153663)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx152131%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self152134%_
                (let ((__obj153623
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj153623))
               (__tmp153664
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self152134%_ _%stx152131%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp153664
           gxc#current-compile-method
           _%self152134%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp153665 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp153665
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args152128%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args152128%_)))
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
      (let ((__tmp153666
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
        (__make-promise __tmp153666)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords152102%_ _%table152099152103%_ _%stx152105%_)
        (let ((_%table152108%_
               (if (eq? _%table152099152103%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table152099152103%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self152110%_
                  (let ((__obj153625
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153625
                       _%table152108%_
                       '1
                       '#f
                       '#f))
                    __obj153625))
                 (__tmp153667
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152110%_ _%stx152105%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp153667
             gxc#current-compile-method
             _%self152110%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords152117%_ . _%args152118%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords152117%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152117%_
                  'table:
                  absent-value))
               _%args152118%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args152100152124%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args152100152124%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp153669 (list gxc#::void-expression::t))
            (__tmp153668 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp153669
         '(state)
         __tmp153668
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args152095%_
        (apply make-instance gxc#::generate-meta::t _%$args152095%_)))
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
      (let ((__tmp153670
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
        (__make-promise __tmp153670)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords152069%_ _%state152066152070%_ _%stx152072%_)
        (let ((_%state152075%_
               (if (eq? _%state152066152070%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state152066152070%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self152077%_
                  (let ((__obj153627
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153627
                       _%state152075%_
                       '1
                       '#f
                       '#f))
                    __obj153627))
                 (__tmp153671
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152077%_ _%stx152072%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp153671
             gxc#current-compile-method
             _%self152077%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords152084%_ . _%args152085%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords152084%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152084%_
                  'state:
                  absent-value))
               _%args152085%_)))
    (define gxc#apply-generate-meta
      (lambda _%args152067152091%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args152067152091%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp153673 (list)) (__tmp153672 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp153673
         '(state)
         __tmp153672
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args152062%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args152062%_)))
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
      (let ((__tmp153674
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
        (__make-promise __tmp153674)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords152036%_ _%state152033152037%_ _%stx152039%_)
        (let ((_%state152042%_
               (if (eq? _%state152033152037%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state152033152037%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self152044%_
                  (let ((__obj153629
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153629
                       _%state152042%_
                       '1
                       '#f
                       '#f))
                    __obj153629))
                 (__tmp153675
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152044%_ _%stx152039%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp153675
             gxc#current-compile-method
             _%self152044%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords152051%_ . _%args152052%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords152051%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152051%_
                  'state:
                  absent-value))
               _%args152052%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args152034152058%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args152034152058%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self151962%_ _%stx151963%_)
        (let* ((_%g151965151982%_
                (lambda (_%g151966151979%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151966151979%_))))
               (_%g151964152029%_
                (lambda (_%g151966151985%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151966151985%_))
                      (let ((_%e151969151987%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151966151985%_))))
                        (let ((_%hd151970151990%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151969151987%_)))
                              (_%tl151971151992%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151969151987%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151971151992%_))
                              (let ((_%e151972151995%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151971151992%_))))
                                (let ((_%hd151973151998%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151972151995%_)))
                                      (_%tl151974152000%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151972151995%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151974152000%_))
                                      (let ((_%e151975152003%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151974152000%_))))
                                        (let ((_%hd151976152006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151975152003%_)))
                                              (_%tl151977152008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151975152003%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151977152008%_))
                                              ((lambda (_%L152011%_
                                                        _%L152012%_)
                                                 (let ((__tmp153676
                                                        (lambda (_%bind152027%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind152027%_))
                      (gxc#add-module-binding! _%bind152027%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp153676
                                                    _%L152012%_)))
                                               _%hd151976152006%_
                                               _%hd151973151998%_)
                                              (_%g151965151982%_
                                               _%g151966151985%_))))
                                      (_%g151965151982%_ _%g151966151985%_))))
                              (_%g151965151982%_ _%g151966151985%_))))
                      (_%g151965151982%_ _%g151966151985%_)))))
          (_%g151964152029%_ _%stx151963%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self151894%_ _%stx151895%_)
        (let* ((_%g151897151914%_
                (lambda (_%g151898151911%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151898151911%_))))
               (_%g151896151959%_
                (lambda (_%g151898151917%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151898151917%_))
                      (let ((_%e151901151919%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151898151917%_))))
                        (let ((_%hd151902151922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151901151919%_)))
                              (_%tl151903151924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151901151919%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151903151924%_))
                              (let ((_%e151904151927%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151903151924%_))))
                                (let ((_%hd151905151930%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151904151927%_)))
                                      (_%tl151906151932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151904151927%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151906151932%_))
                                      (let ((_%e151907151935%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151906151932%_))))
                                        (let ((_%hd151908151938%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151907151935%_)))
                                              (_%tl151909151940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151907151935%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151909151940%_))
                                              ((lambda (_%L151943%_
                                                        _%L151944%_)
                                                 (gxc#add-module-binding!
                                                  _%L151944%_
                                                  '#t))
                                               _%hd151908151938%_
                                               _%hd151905151930%_)
                                              (_%g151897151914%_
                                               _%g151898151917%_))))
                                      (_%g151897151914%_ _%g151898151917%_))))
                              (_%g151897151914%_ _%g151898151917%_))))
                      (_%g151897151914%_ _%g151898151917%_)))))
          (_%g151896151959%_ _%stx151895%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self151836%_ _%stx151837%_)
        (let* ((_%g151839151853%_
                (lambda (_%g151840151850%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151840151850%_))))
               (_%g151838151891%_
                (lambda (_%g151840151856%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151840151856%_))
                      (let ((_%e151843151858%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151840151856%_))))
                        (let ((_%hd151844151861%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151843151858%_)))
                              (_%tl151845151863%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151843151858%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151845151863%_))
                              (let ((_%e151846151866%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151845151863%_))))
                                (let ((_%hd151847151869%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151846151866%_)))
                                      (_%tl151848151871%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151846151866%_))))
                                  ((lambda (_%L151874%_ _%L151875%_)
                                     (let ((_%ctx151888%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L151875%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self151836%_
                                           'modules))
                                        (cons _%ctx151888%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self151836%_
                                                        'modules)))))
                                       (let ((__tmp153677
                                              (lambda ()
                                                (let ((__tmp153678
                                                       (##structure-ref
                                                        _%ctx151888%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self151836%_
                                                   __tmp153678)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp153677
                                          gx#current-expander-context
                                          _%ctx151888%_))))
                                   _%tl151848151871%_
                                   _%hd151847151869%_)))
                              (_%g151839151853%_ _%g151840151856%_))))
                      (_%g151839151853%_ _%g151840151856%_)))))
          (_%g151838151891%_ _%stx151837%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls151789151791%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls151789151791%_
              (let ((_%decls151794%_ _%decls151789151791%_))
                (let _%lp151796%_ ((_%rest151798%_ _%decls151794%_))
                  (let* ((_%rest151799151807%_ _%rest151798%_)
                         (_%else151801151815%_ (lambda () '#f))
                         (_%K151803151824%_
                          (lambda (_%decls151818%_ _%decl151819%_)
                            (if (equal? _%decl151819%_ '(not safe))
                                '#t
                                (if (equal? _%decl151819%_ '(safe))
                                    '#f
                                    (_%lp151796%_ _%decls151818%_))))))
                    (if (pair? _%rest151799151807%_)
                        (let ((_%hd151804151827%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest151799151807%_)))
                              (_%tl151805151829%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest151799151807%_))))
                          (let* ((_%decl151832%_ _%hd151804151827%_)
                                 (_%decls151834%_ _%tl151805151829%_))
                            (_%K151803151824%_
                             _%decls151834%_
                             _%decl151832%_)))
                        (_%else151801151815%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id151783%_ _%syntax?151784%_)
        (let ((_%eid151786%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id151783%_))
                '1
                gx#binding::t
                '#f))
              (_%ht151787%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid151786%_))
              '#!void
              (let ((__tmp153679
                     (let ((__tmp153680
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid151786%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp153680 _%syntax?151784%_))))
                (declare (not safe))
                (hash-put! _%ht151787%_ _%eid151786%_ __tmp153679))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id151781%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id151781%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key151736%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key151736%_))
            _%key151736%_
            (if (uninterned-symbol? _%key151736%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key151736%_))
                (let* ((_%key151740151747%_ _%key151736%_)
                       (_%E151742151751%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key151740151747%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K151743151769%_
                        (lambda (_%mark151754%_ _%eid151755%_)
                          (let ((_%$e151757%_
                                 (##structure-ref
                                  _%mark151754%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e151757%_
                                ((lambda (_%ht151760%_)
                                   (let ((_%$e151762%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht151760%_
                                             _%eid151755%_))))
                                     (if _%$e151762%_
                                         ((lambda (_%id151765%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id151765%_))
                                                _%id151765%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id151765%_))))
                                          _%$e151762%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid151755%_))))
                                 _%$e151757%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid151755%_))))))
                  (if (pair? _%key151740151747%_)
                      (let ((_%hd151744151772%_
                             (let ()
                               (declare (not safe))
                               (##car _%key151740151747%_)))
                            (_%tl151745151774%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key151740151747%_))))
                        (let* ((_%eid151777%_ _%hd151744151772%_)
                               (_%mark151779%_ _%tl151745151774%_))
                          (_%K151743151769%_ _%mark151779%_ _%eid151777%_)))
                      (_%E151742151751%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self151733%_ _%stx151734%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self151580%_ _%stx151581%_)
        (letrec ((_%simplify151583%_
                  (lambda (_%body151631%_)
                    (let _%lp151633%_ ((_%rest151635%_ _%body151631%_)
                                       (_%r151636%_ '()))
                      (let* ((_%rest151637151645%_ _%rest151635%_)
                             (_%else151639151653%_
                              (lambda () (reverse _%r151636%_)))
                             (_%K151641151721%_
                              (lambda (_%rest151656%_ _%hd151657%_)
                                (let* ((_%hd151658151674%_ _%hd151657%_)
                                       (_%else151662151682%_
                                        (lambda ()
                                          (_%lp151633%_
                                           _%rest151656%_
                                           (cons _%hd151657%_ _%r151636%_)))))
                                  (let ((_%K151670151711%_
                                         (lambda (_%exprs151709%_)
                                           (_%lp151633%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest151656%_
                                               _%exprs151709%_))
                                            _%r151636%_)))
                                        (_%K151665151695%_
                                         (lambda ()
                                           (if (null? _%rest151656%_)
                                               (_%lp151633%_
                                                _%rest151656%_
                                                (cons _%hd151657%_
                                                      _%r151636%_))
                                               (_%lp151633%_
                                                _%rest151656%_
                                                _%r151636%_))))
                                        (_%K151664151687%_
                                         (lambda ()
                                           (if (null? _%rest151656%_)
                                               (_%lp151633%_
                                                _%rest151656%_
                                                (cons _%hd151657%_
                                                      _%r151636%_))
                                               (_%lp151633%_
                                                _%rest151656%_
                                                _%r151636%_)))))
                                    (let ((_%try-match151661151690%_
                                           (lambda ()
                                             (if (symbol? _%hd151658151674%_)
                                                 (_%K151664151687%_)
                                                 (_%else151662151682%_)))))
                                      (if (pair? _%hd151658151674%_)
                                          (let ((_%tl151672151716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd151658151674%_)))
                                                (_%hd151671151714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd151658151674%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd151671151714%_
                                                         'begin))
                                                (let ((_%exprs151719%_
                                                       _%tl151672151716%_))
                                                  (_%K151670151711%_
                                                   _%exprs151719%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd151671151714%_
                                                             'quote))
                                                    (if (pair? _%tl151672151716%_)
                                                        (let ((_%tl151669151703%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl151672151716%_))))
                  (if (null? _%tl151669151703%_)
                      (_%K151665151695%_)
                      (_%try-match151661151690%_)))
                (_%try-match151661151690%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match151661151690%_))))
                                          (_%try-match151661151690%_))))))))
                        (if (pair? _%rest151637151645%_)
                            (let ((_%hd151642151724%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest151637151645%_)))
                                  (_%tl151643151726%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest151637151645%_))))
                              (let* ((_%hd151729%_ _%hd151642151724%_)
                                     (_%rest151731%_ _%tl151643151726%_))
                                (_%K151641151721%_
                                 _%rest151731%_
                                 _%hd151729%_)))
                            (_%else151639151653%_)))))))
          (let* ((_%g151585151595%_
                  (lambda (_%g151586151592%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151586151592%_))))
                 (_%g151584151628%_
                  (lambda (_%g151586151598%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151586151598%_))
                        (let ((_%e151588151600%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151586151598%_))))
                          (let ((_%hd151589151603%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151588151600%_)))
                                (_%tl151590151605%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151588151600%_))))
                            ((lambda (_%L151608%_)
                               (let* ((_%body151623%_
                                       (map (lambda (_%g151618151620%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self151580%_
                                                 _%g151618151620%_)))
                                            _%L151608%_))
                                      (_%body151625%_
                                       (_%simplify151583%_ _%body151623%_)))
                                 (if (let ((__tmp153681
                                            (length _%body151625%_)))
                                       (declare (not safe))
                                       (##fx= __tmp153681 '1))
                                     (car _%body151625%_)
                                     (cons 'begin _%body151625%_))))
                             _%tl151590151605%_)))
                        (_%g151585151595%_ _%g151586151598%_)))))
            (_%g151584151628%_ _%stx151581%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self151541%_ _%stx151542%_)
        (let* ((_%g151544151554%_
                (lambda (_%g151545151551%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151545151551%_))))
               (_%g151543151577%_
                (lambda (_%g151545151557%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151545151557%_))
                      (let ((_%e151547151559%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151545151557%_))))
                        (let ((_%hd151548151562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151547151559%_)))
                              (_%tl151549151564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151547151559%_))))
                          ((lambda (_%L151567%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L151567%_))))
                           _%tl151549151564%_)))
                      (_%g151544151554%_ _%g151545151557%_)))))
          (_%g151543151577%_ _%stx151542%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self151305%_ _%stx151306%_)
        (let* ((_%__stx152271152272%_ _%stx151306%_)
               (_%g151310151362%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx152271152272%_)))))
          (let ((_%__kont152273152274%_
                 (lambda (_%L151523%_ _%L151524%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self151305%_ _%L151523%_))))
                (_%__kont152275152276%_
                 (lambda (_%L151471%_ _%L151472%_ _%L151473%_)
                   (if (let ((__tmp153682
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L151473%_))))
                         (declare (not safe))
                         (##memq __tmp153682 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self151305%_ _%L151471%_)))))
                (_%__kont152279152280%_
                 (lambda (_%L151391%_ _%L151392%_)
                   (let ((_%decls151407%_ (map gx#syntax->datum _%L151392%_)))
                     (let ((__tmp153685
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls151407%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self151305%_
                                                   _%L151391%_))
                                                '())))))
                           (__tmp153683
                            (let ((__tmp153684
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp153684 _%decls151407%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp153685
                        gxc#current-compile-decls
                        __tmp153683))))))
            (let* ((_%__match152326152327%_
                    (lambda (_%e151326151415%_
                             _%hd151327151418%_
                             _%tl151328151420%_
                             _%e151329151423%_
                             _%hd151330151426%_
                             _%tl151331151428%_
                             _%e151332151431%_
                             _%hd151333151434%_
                             _%tl151334151436%_
                             _%__splice152277152278%_
                             _%target151335151439%_
                             _%tl151337151441%_)
                      (letrec ((_%loop151338151444%_
                                (lambda (_%hd151336151447%_
                                         _%param151342151449%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd151336151447%_))
                                      (let ((_%e151339151452%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd151336151447%_))))
                                        (let ((_%lp-tl151341151457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151339151452%_)))
                                              (_%lp-hd151340151455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151339151452%_))))
                                          (_%loop151338151444%_
                                           _%lp-tl151341151457%_
                                           (cons _%lp-hd151340151455%_
                                                 _%param151342151449%_))))
                                      (let ((_%param151343151460%_
                                             (reverse _%param151342151449%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl151331151428%_))
                                            (let ((_%e151344151463%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl151331151428%_))))
                                              (let ((_%tl151346151468%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e151344151463%_)))
                                                    (_%hd151345151466%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e151344151463%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl151346151468%_))
                                                    (let ((_%L151471%_
                                                           _%hd151345151466%_)
                                                          (_%L151472%_
                                                           _%param151343151460%_)
                                                          (_%L151473%_
                                                           _%hd151333151434%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L151473%_))
                       (not (let ((__tmp153686
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L151473%_))))
                              (declare (not safe))
                              (##memq __tmp153686 gxc#gambit-annotations))))
                  (_%__kont152275152276%_ _%L151471%_ _%L151472%_ _%L151473%_)
                  (_%__kont152279152280%_
                   _%hd151345151466%_
                   _%hd151330151426%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g151310151362%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g151310151362%_))))))))
                        (_%loop151338151444%_ _%target151335151439%_ '()))))
                   (_%__match152300152301%_
                    (lambda (_%e151314151499%_
                             _%hd151315151502%_
                             _%tl151316151504%_
                             _%e151317151507%_
                             _%hd151318151510%_
                             _%tl151319151512%_
                             _%e151320151515%_
                             _%hd151321151518%_
                             _%tl151322151520%_)
                      (let ((_%L151523%_ _%hd151321151518%_)
                            (_%L151524%_ _%hd151318151510%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L151524%_))
                            (_%__kont152273152274%_ _%L151523%_ _%L151524%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd151318151510%_))
                                (let ((_%e151332151431%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd151318151510%_))))
                                  (let ((_%tl151334151436%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151332151431%_)))
                                        (_%hd151333151434%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151332151431%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl151334151436%_))
                                        (let ((_%__splice152277152278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl151334151436%_
                                                  '0))))
                                          (let ((_%tl151337151441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice152277152278%_
                                                    '1)))
                                                (_%target151335151439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice152277152278%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151337151441%_))
                                                (_%__match152326152327%_
                                                 _%e151314151499%_
                                                 _%hd151315151502%_
                                                 _%tl151316151504%_
                                                 _%e151317151507%_
                                                 _%hd151318151510%_
                                                 _%tl151319151512%_
                                                 _%e151332151431%_
                                                 _%hd151333151434%_
                                                 _%tl151334151436%_
                                                 _%__splice152277152278%_
                                                 _%target151335151439%_
                                                 _%tl151337151441%_)
                                                (_%__kont152279152280%_
                                                 _%hd151321151518%_
                                                 _%hd151318151510%_))))
                                        (_%__kont152279152280%_
                                         _%hd151321151518%_
                                         _%hd151318151510%_))))
                                (_%__kont152279152280%_
                                 _%hd151321151518%_
                                 _%hd151318151510%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx152271152272%_))
                  (let ((_%e151314151499%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx152271152272%_))))
                    (let ((_%tl151316151504%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e151314151499%_)))
                          (_%hd151315151502%_
                           (let ()
                             (declare (not safe))
                             (##car _%e151314151499%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl151316151504%_))
                          (let ((_%e151317151507%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl151316151504%_))))
                            (let ((_%tl151319151512%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e151317151507%_)))
                                  (_%hd151318151510%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e151317151507%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl151319151512%_))
                                  (let ((_%e151320151515%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl151319151512%_))))
                                    (let ((_%tl151322151520%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e151320151515%_)))
                                          (_%hd151321151518%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e151320151515%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl151322151520%_))
                                          (_%__match152300152301%_
                                           _%e151314151499%_
                                           _%hd151315151502%_
                                           _%tl151316151504%_
                                           _%e151317151507%_
                                           _%hd151318151510%_
                                           _%tl151319151512%_
                                           _%e151320151515%_
                                           _%hd151321151518%_
                                           _%tl151322151520%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd151318151510%_))
                                              (let ((_%e151332151431%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd151318151510%_))))
                                                (let ((_%tl151334151436%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e151332151431%_)))
                                                      (_%hd151333151434%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e151332151431%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl151334151436%_))
                                                      (let ((_%__splice152277152278%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl151334151436%_
                        '0))))
                (let ((_%tl151337151441%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice152277152278%_ '1)))
                      (_%target151335151439%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice152277152278%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl151337151441%_))
                      (_%__match152326152327%_
                       _%e151314151499%_
                       _%hd151315151502%_
                       _%tl151316151504%_
                       _%e151317151507%_
                       _%hd151318151510%_
                       _%tl151319151512%_
                       _%e151332151431%_
                       _%hd151333151434%_
                       _%tl151334151436%_
                       _%__splice152277152278%_
                       _%target151335151439%_
                       _%tl151337151441%_)
                      (let () (declare (not safe)) (_%g151310151362%_)))))
              (let () (declare (not safe)) (_%g151310151362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g151310151362%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd151318151510%_))
                                      (let ((_%e151332151431%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd151318151510%_))))
                                        (let ((_%tl151334151436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151332151431%_)))
                                              (_%hd151333151434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151332151431%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl151334151436%_))
                                              (let ((_%__splice152277152278%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl151334151436%_
                                                        '0))))
                                                (let ((_%tl151337151441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice152277152278%_
                                                          '1)))
                                                      (_%target151335151439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice152277152278%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl151337151441%_))
                                                      (_%__match152326152327%_
                                                       _%e151314151499%_
                                                       _%hd151315151502%_
                                                       _%tl151316151504%_
                                                       _%e151317151507%_
                                                       _%hd151318151510%_
                                                       _%tl151319151512%_
                                                       _%e151332151431%_
                                                       _%hd151333151434%_
                                                       _%tl151334151436%_
                                                       _%__splice152277152278%_
                                                       _%target151335151439%_
                                                       _%tl151337151441%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g151310151362%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g151310151362%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g151310151362%_))))))
                          (let () (declare (not safe)) (_%g151310151362%_)))))
                  (let () (declare (not safe)) (_%g151310151362%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self151264%_ _%stx151265%_)
        (let* ((_%g151267151277%_
                (lambda (_%g151268151274%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151268151274%_))))
               (_%g151266151302%_
                (lambda (_%g151268151280%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151268151280%_))
                      (let ((_%e151270151282%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151268151280%_))))
                        (let ((_%hd151271151285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151270151282%_)))
                              (_%tl151272151287%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151270151282%_))))
                          ((lambda (_%L151290%_)
                             (let ((_%decls151300%_
                                    (map gx#syntax->datum _%L151290%_)))
                               (let ((__tmp153687
                                      (let ((__tmp153688
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp153688
                                         _%decls151300%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp153687))
                               (cons 'declare _%decls151300%_)))
                           _%tl151272151287%_)))
                      (_%g151267151277%_ _%g151268151280%_)))))
          (_%g151266151302%_ _%stx151265%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self151010%_ _%stx151011%_)
        (let* ((_%g151013151030%_
                (lambda (_%g151014151027%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151014151027%_))))
               (_%g151012151261%_
                (lambda (_%g151014151033%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151014151033%_))
                      (let ((_%e151017151035%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151014151033%_))))
                        (let ((_%hd151018151038%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151017151035%_)))
                              (_%tl151019151040%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151017151035%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151019151040%_))
                              (let ((_%e151020151043%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151019151040%_))))
                                (let ((_%hd151021151046%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151020151043%_)))
                                      (_%tl151022151048%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151020151043%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151022151048%_))
                                      (let ((_%e151023151051%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151022151048%_))))
                                        (let ((_%hd151024151054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151023151051%_)))
                                              (_%tl151025151056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151023151051%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151025151056%_))
                                              ((lambda (_%L151059%_
                                                        _%L151060%_)
                                                 (let* ((_%__stx152379152380%_
                                                         _%L151060%_)
                                                        (_%g151077151091%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx152379152380%_)))))
                                                   (let ((_%__kont152381152382%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self151010%_
                                                               _%L151059%_))))
                                                         (_%__kont152383152384%_
                                                          (lambda (_%L151223%_)
                                                            (let ((_%eid151232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L151223%_))))
                      (let ((_%lambda-expr151233151235%_
                             (gxc#apply-find-lambda-expression _%L151059%_)))
                        (if _%lambda-expr151233151235%_
                            (let* ((_%lambda-expr151238%_
                                    _%lambda-expr151233151235%_)
                                   (__tmp153689
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp153689
                               _%lambda-expr151238%_
                               _%eid151232%_))
                            '#f))
                      (cons 'define
                            (cons _%eid151232%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self151010%_
                                           _%L151059%_))
                                        '()))))))
                 (_%__kont152385152386%_
                  (lambda ()
                    (let* ((_%tmp151098%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body151207%_
                            (let _%lp151100%_ ((_%rest151102%_ _%L151060%_)
                                               (_%k151103%_ '0)
                                               (_%r151104%_ '()))
                              (let* ((_%__stx152349152350%_ _%rest151102%_)
                                     (_%g151109151126%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx152349152350%_)))))
                                (let ((_%__kont152351152352%_
                                       (lambda (_%L151194%_)
                                         (_%lp151100%_
                                          _%L151194%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k151103%_ '1))
                                          _%r151104%_)))
                                      (_%__kont152353152354%_
                                       (lambda (_%L151167%_ _%L151168%_)
                                         (_%lp151100%_
                                          _%L151167%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k151103%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L151168%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp151098%_
                           _%k151103%_
                           _%L151167%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r151104%_))))
                                      (_%__kont152355152356%_
                                       (lambda (_%L151138%_)
                                         (let ((__tmp153690
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L151138%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp151098%_
                                 _%k151103%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp153690
                                            _%r151104%_))))
                                      (_%__kont152357152358%_
                                       (lambda () (reverse _%r151104%_))))
                                  (let ((_%g151107151154%_
                                         (lambda ()
                                           (let ((_%L151138%_
                                                  _%__stx152349152350%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L151138%_))
                                                 (_%__kont152355152356%_
                                                  _%L151138%_)
                                                 (_%__kont152357152358%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx152349152350%_))
                                        (let ((_%e151112151183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx152349152350%_))))
                                          (let ((_%tl151114151188%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151112151183%_)))
                                                (_%hd151113151186%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151112151183%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd151113151186%_))
                                                (let ((_%e151115151191%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd151113151186%_))))
                                                  (if (equal? _%e151115151191%_
                                                              '#f)
                                                      (_%__kont152351152352%_
                                                       _%tl151114151188%_)
                                                      (_%__kont152353152354%_
                                                       _%tl151114151188%_
                                                       _%hd151113151186%_)))
                                                (_%__kont152353152354%_
                                                 _%tl151114151188%_
                                                 _%hd151113151186%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g151107151154%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp151098%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self151010%_
                                                       _%L151059%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp151098%_
                                         _%L151060%_
                                         _%L151059%_)
                                        _%body151207%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx152379152380%_))
                                                         (let ((_%e151079151245%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx152379152380%_))))
                   (let ((_%tl151081151250%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e151079151245%_)))
                         (_%hd151080151248%_
                          (let ()
                            (declare (not safe))
                            (##car _%e151079151245%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd151080151248%_))
                         (let ((_%e151082151253%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd151080151248%_))))
                           (if (equal? _%e151082151253%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl151081151250%_))
                                   (_%__kont152381152382%_)
                                   (_%__kont152385152386%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl151081151250%_))
                                   (_%__kont152383152384%_ _%hd151080151248%_)
                                   (_%__kont152385152386%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl151081151250%_))
                             (_%__kont152383152384%_ _%hd151080151248%_)
                             (_%__kont152385152386%_)))))
                 (_%__kont152385152386%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd151024151054%_
                                               _%hd151021151046%_)
                                              (_%g151013151030%_
                                               _%g151014151033%_))))
                                      (_%g151013151030%_ _%g151014151033%_))))
                              (_%g151013151030%_ _%g151014151033%_))))
                      (_%g151013151030%_ _%g151014151033%_)))))
          (_%g151012151261%_ _%stx151011%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals150985%_ _%hd150986%_ _%expr150987%_)
        (let ((_%$e150989%_ (gxc#apply-count-values _%expr150987%_)))
          (if _%$e150989%_
              ((lambda (_%count150992%_)
                 (let ((_%len150994%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd150986%_)))
                       (_%cmp150995%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd150986%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len150994%_ '0))
                           (_%cmp150995%_ _%count150992%_ _%len150994%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr150987%_
                          _%hd150986%_)))))
               _%$e150989%_)
              (let* ((_%len151001%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd150986%_)))
                     (_%cmp151003%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd150986%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg151005%_
                      (let ((__tmp153692
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd150986%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp153691 (number->string _%len151001%_)))
                        (declare (not safe))
                        (##string-append __tmp153692 __tmp153691 '" values")))
                     (_%count151007%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd150986%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len151001%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count151007%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals150985%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp151003%_
                                (cons _%count151007%_
                                      (cons _%len151001%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp151003%_
                                                        (cons _%count151007%_
                                                              (cons _%len151001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg151005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count151007%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var150980%_)
        (letrec ((_%generate-inline150982%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var150980%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var150980%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline150982%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline150982%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var150973%_ _%i150974%_ _%rest150975%_)
        (letrec ((_%generate-inline150977%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i150974%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest150975%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var150973%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var150973%_
                                                      (cons '0 '())))
                                          (cons _%var150973%_ '()))))
                        (cons '##values-ref
                              (cons _%var150973%_ (cons _%i150974%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline150977%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline150977%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var150967%_ _%i150968%_)
        (if (let () (declare (not safe)) (##fx= _%i150968%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var150967%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var150967%_ '()))
                                  (cons (cons 'list (cons _%var150967%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var150967%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var150967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var150967%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i150968%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var150967%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var150967%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var150967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var150967%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var150967%_ '()))
                                (cons _%i150968%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var150967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i150968%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self150899%_ _%stx150900%_)
        (let* ((_%g150902150919%_
                (lambda (_%g150903150916%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150903150916%_))))
               (_%g150901150964%_
                (lambda (_%g150903150922%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150903150922%_))
                      (let ((_%e150906150924%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150903150922%_))))
                        (let ((_%hd150907150927%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150906150924%_)))
                              (_%tl150908150929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150906150924%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150908150929%_))
                              (let ((_%e150909150932%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150908150929%_))))
                                (let ((_%hd150910150935%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150909150932%_)))
                                      (_%tl150911150937%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150909150932%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150911150937%_))
                                      (let ((_%e150912150940%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150911150937%_))))
                                        (let ((_%hd150913150943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150912150940%_)))
                                              (_%tl150914150945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150912150940%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150914150945%_))
                                              ((lambda (_%L150948%_
                                                        _%L150949%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self150899%_
                                                  _%L150949%_
                                                  _%L150948%_))
                                               _%hd150913150943%_
                                               _%hd150910150935%_)
                                              (_%g150902150919%_
                                               _%g150903150922%_))))
                                      (_%g150902150919%_ _%g150903150922%_))))
                              (_%g150902150919%_ _%g150903150922%_))))
                      (_%g150902150919%_ _%g150903150922%_)))))
          (_%g150901150964%_ _%stx150900%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self150858%_ _%hd150859%_ _%body150860%_)
        (let* ((_%hd150862%_ (gxc#generate-runtime-lambda-head _%hd150859%_))
               (_%body150864%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self150858%_ _%body150860%_)))
               (_%body150896%_
                (let* ((_%body150865150873%_ _%body150864%_)
                       (_%else150867150881%_
                        (lambda () (cons _%body150864%_ '())))
                       (_%K150869150886%_
                        (lambda (_%exprs150884%_) _%exprs150884%_)))
                  (if (pair? _%body150865150873%_)
                      (let ((_%hd150870150889%_
                             (let ()
                               (declare (not safe))
                               (##car _%body150865150873%_)))
                            (_%tl150871150891%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body150865150873%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd150870150889%_ 'begin))
                            (let ((_%exprs150894%_ _%tl150871150891%_))
                              (_%K150869150886%_ _%exprs150894%_))
                            (_%else150867150881%_)))
                      (_%else150867150881%_)))))
          (cons 'lambda (cons _%hd150862%_ _%body150896%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd150856%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd150856%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self149395%_ _%stx149396%_)
        (letrec ((_%dispatch-case?149398%_
                  (lambda (_%hd150086%_ _%body150087%_)
                    (let* ((_%form150089%_
                            (cons _%hd150086%_ (cons _%body150087%_ '())))
                           (_%__stx152411152412%_ _%form150089%_)
                           (_%g150094150251%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx152411152412%_)))))
                      (let ((_%__kont152413152414%_
                             (lambda (_%L150776%_ _%L150777%_ _%L150778%_)
                               '#t))
                            (_%__kont152419152420%_
                             (lambda (_%L150564%_
                                      _%L150565%_
                                      _%L150566%_
                                      _%L150567%_
                                      _%L150568%_
                                      _%L150569%_)
                               '#t))
                            (_%__kont152425152426%_
                             (lambda (_%L150359%_
                                      _%L150360%_
                                      _%L150361%_
                                      _%L150362%_)
                               '#t))
                            (_%__kont152427152428%_ (lambda () '#f)))
                        (let* ((_%__match152552152553%_
                                (lambda (_%e150211150263%_
                                         _%hd150212150266%_
                                         _%tl150213150268%_
                                         _%e150214150271%_
                                         _%hd150215150274%_
                                         _%tl150216150276%_
                                         _%e150217150279%_
                                         _%hd150218150282%_
                                         _%tl150219150284%_
                                         _%e150220150287%_
                                         _%hd150221150290%_
                                         _%tl150222150292%_
                                         _%e150223150295%_
                                         _%hd150224150298%_
                                         _%tl150225150300%_
                                         _%e150226150303%_
                                         _%hd150227150306%_
                                         _%tl150228150308%_
                                         _%e150229150311%_
                                         _%hd150230150314%_
                                         _%tl150231150316%_
                                         _%e150232150319%_
                                         _%hd150233150322%_
                                         _%tl150234150324%_
                                         _%e150235150327%_
                                         _%hd150236150330%_
                                         _%tl150237150332%_
                                         _%e150238150335%_
                                         _%hd150239150338%_
                                         _%tl150240150340%_
                                         _%e150241150343%_
                                         _%hd150242150346%_
                                         _%tl150243150348%_
                                         _%e150244150351%_
                                         _%hd150245150354%_
                                         _%tl150246150356%_)
                                  (let ((_%L150359%_ _%hd150245150354%_)
                                        (_%L150360%_ _%hd150236150330%_)
                                        (_%L150361%_ _%hd150227150306%_)
                                        (_%L150362%_ _%hd150212150266%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L150362%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L150361%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L150362%_
                                                _%L150359%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L150360%_
                                                     _%L150362%_))))
                                        (_%__kont152425152426%_
                                         _%L150359%_
                                         _%L150360%_
                                         _%L150361%_
                                         _%L150362%_)
                                        (_%__kont152427152428%_)))))
                               (_%__match152524152525%_
                                (lambda (_%e150211150263%_
                                         _%hd150212150266%_
                                         _%tl150213150268%_
                                         _%e150214150271%_
                                         _%hd150215150274%_
                                         _%tl150216150276%_
                                         _%e150217150279%_
                                         _%hd150218150282%_
                                         _%tl150219150284%_
                                         _%e150220150287%_
                                         _%hd150221150290%_
                                         _%tl150222150292%_
                                         _%e150223150295%_
                                         _%hd150224150298%_
                                         _%tl150225150300%_
                                         _%e150226150303%_
                                         _%hd150227150306%_
                                         _%tl150228150308%_
                                         _%e150229150311%_
                                         _%hd150230150314%_
                                         _%tl150231150316%_
                                         _%e150232150319%_
                                         _%hd150233150322%_
                                         _%tl150234150324%_
                                         _%e150235150327%_
                                         _%hd150236150330%_
                                         _%tl150237150332%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150231150316%_))
                                      (let ((_%e150238150335%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150231150316%_))))
                                        (let ((_%tl150240150340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150238150335%_)))
                                              (_%hd150239150338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150238150335%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd150239150338%_))
                                              (let ((_%e150241150343%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd150239150338%_))))
                                                (let ((_%tl150243150348%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150241150343%_)))
                                                      (_%hd150242150346%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150241150343%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd150242150346%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd150242150346%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl150243150348%_))
                      (let ((_%e150244150351%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl150243150348%_))))
                        (let ((_%tl150246150356%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150244150351%_)))
                              (_%hd150245150354%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150244150351%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl150246150356%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl150240150340%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150216150276%_))
                                      (_%__match152552152553%_
                                       _%e150211150263%_
                                       _%hd150212150266%_
                                       _%tl150213150268%_
                                       _%e150214150271%_
                                       _%hd150215150274%_
                                       _%tl150216150276%_
                                       _%e150217150279%_
                                       _%hd150218150282%_
                                       _%tl150219150284%_
                                       _%e150220150287%_
                                       _%hd150221150290%_
                                       _%tl150222150292%_
                                       _%e150223150295%_
                                       _%hd150224150298%_
                                       _%tl150225150300%_
                                       _%e150226150303%_
                                       _%hd150227150306%_
                                       _%tl150228150308%_
                                       _%e150229150311%_
                                       _%hd150230150314%_
                                       _%tl150231150316%_
                                       _%e150232150319%_
                                       _%hd150233150322%_
                                       _%tl150234150324%_
                                       _%e150235150327%_
                                       _%hd150236150330%_
                                       _%tl150237150332%_
                                       _%e150238150335%_
                                       _%hd150239150338%_
                                       _%tl150240150340%_
                                       _%e150241150343%_
                                       _%hd150242150346%_
                                       _%tl150243150348%_
                                       _%e150244150351%_
                                       _%hd150245150354%_
                                       _%tl150246150356%_)
                                      (_%__kont152427152428%_))
                                  (_%__kont152427152428%_))
                              (_%__kont152427152428%_))))
                      (_%__kont152427152428%_))
                  (_%__kont152427152428%_))
              (_%__kont152427152428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont152427152428%_))))
                                      (_%__kont152427152428%_))))
                               (_%__match152454152455%_
                                (lambda (_%e150147150404%_
                                         _%hd150148150407%_
                                         _%tl150149150409%_
                                         _%__splice152421152422%_
                                         _%target150150150412%_
                                         _%tl150152150414%_)
                                  (letrec ((_%loop150153150417%_
                                            (lambda (_%hd150151150420%_
                                                     _%arg150157150422%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd150151150420%_))
                                                  (let ((_%e150154150425%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd150151150420%_))))
                                                    (let ((_%lp-tl150156150430%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150154150425%_)))
                                                          (_%lp-hd150155150428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150154150425%_))))
                                                      (_%loop150153150417%_
                                                       _%lp-tl150156150430%_
                                                       (cons _%lp-hd150155150428%_
                                                             _%arg150157150422%_))))
                                                  (let ((_%arg150158150433%_
                                                         (reverse _%arg150157150422%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl150149150409%_))
                                                        (let ((_%e150159150436%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl150149150409%_))))
                  (let ((_%tl150161150441%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e150159150436%_)))
                        (_%hd150160150439%_
                         (let ()
                           (declare (not safe))
                           (##car _%e150159150436%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd150160150439%_))
                        (let ((_%e150162150444%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd150160150439%_))))
                          (let ((_%tl150164150449%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150162150444%_)))
                                (_%hd150163150447%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150162150444%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd150163150447%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd150163150447%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl150164150449%_))
                                        (let ((_%e150165150452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl150164150449%_))))
                                          (let ((_%tl150167150457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e150165150452%_)))
                                                (_%hd150166150455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e150165150452%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd150166150455%_))
                                                (let ((_%e150168150460%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd150166150455%_))))
                                                  (let ((_%tl150170150465%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e150168150460%_)))
                                                        (_%hd150169150463%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e150168150460%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd150169150463%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd150169150463%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl150170150465%_))
                        (let ((_%e150171150468%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl150170150465%_))))
                          (let ((_%tl150173150473%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150171150468%_)))
                                (_%hd150172150471%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150171150468%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl150173150473%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl150167150457%_))
                                    (let ((_%e150174150476%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl150167150457%_))))
                                      (let ((_%tl150176150481%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e150174150476%_)))
                                            (_%hd150175150479%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e150174150476%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd150175150479%_))
                                            (let ((_%e150177150484%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd150175150479%_))))
                                              (let ((_%tl150179150489%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e150177150484%_)))
                                                    (_%hd150178150487%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e150177150484%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd150178150487%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd150178150487%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl150179150489%_))
                                                            (let ((_%e150180150492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl150179150489%_))))
                      (let ((_%tl150182150497%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e150180150492%_)))
                            (_%hd150181150495%_
                             (let ()
                               (declare (not safe))
                               (##car _%e150180150492%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl150182150497%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl150176150481%_))
                                (if (let ((__tmp153693
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl150176150481%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp153693 '1))
                                    (let ((_%__splice152423152424%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl150176150481%_
                                              '1))))
                                      (let ((_%tl150185150502%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice152423152424%_
                                                '1)))
                                            (_%target150183150500%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice152423152424%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl150185150502%_))
                                            (let ((_%e150192150505%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl150185150502%_))))
                                              (let ((_%tl150194150510%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e150192150505%_)))
                                                    (_%hd150193150508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e150192150505%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd150193150508%_))
                                                    (let ((_%e150195150513%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd150193150508%_))))
                                                      (let ((_%tl150197150518%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e150195150513%_)))
                    (_%hd150196150516%_
                     (let () (declare (not safe)) (##car _%e150195150513%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd150196150516%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd150196150516%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl150197150518%_))
                            (let ((_%e150198150521%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl150197150518%_))))
                              (let ((_%tl150200150526%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e150198150521%_)))
                                    (_%hd150199150524%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e150198150521%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl150200150526%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl150194150510%_))
                                        (letrec ((_%loop150186150529%_
                                                  (lambda (_%hd150184150532%_
                                                           _%xarg150190150534%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd150184150532%_))
                                                        (let ((_%e150187150537%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd150184150532%_))))
                  (let ((_%lp-tl150189150542%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e150187150537%_)))
                        (_%lp-hd150188150540%_
                         (let ()
                           (declare (not safe))
                           (##car _%e150187150537%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd150188150540%_))
                        (let ((_%e150201150545%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd150188150540%_))))
                          (let ((_%tl150203150550%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150201150545%_)))
                                (_%hd150202150548%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150201150545%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd150202150548%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd150202150548%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl150203150550%_))
                                        (let ((_%e150204150553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl150203150550%_))))
                                          (let ((_%tl150206150558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e150204150553%_)))
                                                (_%hd150205150556%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e150204150553%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl150206150558%_))
                                                (_%loop150186150529%_
                                                 _%lp-tl150189150542%_
                                                 (cons _%hd150205150556%_
                                                       _%xarg150190150534%_))
                                                (_%__match152524152525%_
                                                 _%e150147150404%_
                                                 _%hd150148150407%_
                                                 _%tl150149150409%_
                                                 _%e150159150436%_
                                                 _%hd150160150439%_
                                                 _%tl150161150441%_
                                                 _%e150162150444%_
                                                 _%hd150163150447%_
                                                 _%tl150164150449%_
                                                 _%e150165150452%_
                                                 _%hd150166150455%_
                                                 _%tl150167150457%_
                                                 _%e150168150460%_
                                                 _%hd150169150463%_
                                                 _%tl150170150465%_
                                                 _%e150171150468%_
                                                 _%hd150172150471%_
                                                 _%tl150173150473%_
                                                 _%e150174150476%_
                                                 _%hd150175150479%_
                                                 _%tl150176150481%_
                                                 _%e150177150484%_
                                                 _%hd150178150487%_
                                                 _%tl150179150489%_
                                                 _%e150180150492%_
                                                 _%hd150181150495%_
                                                 _%tl150182150497%_))))
                                        (_%__match152524152525%_
                                         _%e150147150404%_
                                         _%hd150148150407%_
                                         _%tl150149150409%_
                                         _%e150159150436%_
                                         _%hd150160150439%_
                                         _%tl150161150441%_
                                         _%e150162150444%_
                                         _%hd150163150447%_
                                         _%tl150164150449%_
                                         _%e150165150452%_
                                         _%hd150166150455%_
                                         _%tl150167150457%_
                                         _%e150168150460%_
                                         _%hd150169150463%_
                                         _%tl150170150465%_
                                         _%e150171150468%_
                                         _%hd150172150471%_
                                         _%tl150173150473%_
                                         _%e150174150476%_
                                         _%hd150175150479%_
                                         _%tl150176150481%_
                                         _%e150177150484%_
                                         _%hd150178150487%_
                                         _%tl150179150489%_
                                         _%e150180150492%_
                                         _%hd150181150495%_
                                         _%tl150182150497%_))
                                    (_%__match152524152525%_
                                     _%e150147150404%_
                                     _%hd150148150407%_
                                     _%tl150149150409%_
                                     _%e150159150436%_
                                     _%hd150160150439%_
                                     _%tl150161150441%_
                                     _%e150162150444%_
                                     _%hd150163150447%_
                                     _%tl150164150449%_
                                     _%e150165150452%_
                                     _%hd150166150455%_
                                     _%tl150167150457%_
                                     _%e150168150460%_
                                     _%hd150169150463%_
                                     _%tl150170150465%_
                                     _%e150171150468%_
                                     _%hd150172150471%_
                                     _%tl150173150473%_
                                     _%e150174150476%_
                                     _%hd150175150479%_
                                     _%tl150176150481%_
                                     _%e150177150484%_
                                     _%hd150178150487%_
                                     _%tl150179150489%_
                                     _%e150180150492%_
                                     _%hd150181150495%_
                                     _%tl150182150497%_))
                                (_%__match152524152525%_
                                 _%e150147150404%_
                                 _%hd150148150407%_
                                 _%tl150149150409%_
                                 _%e150159150436%_
                                 _%hd150160150439%_
                                 _%tl150161150441%_
                                 _%e150162150444%_
                                 _%hd150163150447%_
                                 _%tl150164150449%_
                                 _%e150165150452%_
                                 _%hd150166150455%_
                                 _%tl150167150457%_
                                 _%e150168150460%_
                                 _%hd150169150463%_
                                 _%tl150170150465%_
                                 _%e150171150468%_
                                 _%hd150172150471%_
                                 _%tl150173150473%_
                                 _%e150174150476%_
                                 _%hd150175150479%_
                                 _%tl150176150481%_
                                 _%e150177150484%_
                                 _%hd150178150487%_
                                 _%tl150179150489%_
                                 _%e150180150492%_
                                 _%hd150181150495%_
                                 _%tl150182150497%_))))
                        (_%__match152524152525%_
                         _%e150147150404%_
                         _%hd150148150407%_
                         _%tl150149150409%_
                         _%e150159150436%_
                         _%hd150160150439%_
                         _%tl150161150441%_
                         _%e150162150444%_
                         _%hd150163150447%_
                         _%tl150164150449%_
                         _%e150165150452%_
                         _%hd150166150455%_
                         _%tl150167150457%_
                         _%e150168150460%_
                         _%hd150169150463%_
                         _%tl150170150465%_
                         _%e150171150468%_
                         _%hd150172150471%_
                         _%tl150173150473%_
                         _%e150174150476%_
                         _%hd150175150479%_
                         _%tl150176150481%_
                         _%e150177150484%_
                         _%hd150178150487%_
                         _%tl150179150489%_
                         _%e150180150492%_
                         _%hd150181150495%_
                         _%tl150182150497%_))))
                (let ((_%xarg150191150561%_ (reverse _%xarg150190150534%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl150161150441%_))
                      (let ((_%L150564%_ _%hd150199150524%_)
                            (_%L150565%_ _%xarg150191150561%_)
                            (_%L150566%_ _%hd150181150495%_)
                            (_%L150567%_ _%hd150172150471%_)
                            (_%L150568%_ _%tl150152150414%_)
                            (_%L150569%_ _%arg150158150433%_))
                        (if (and (let ((__tmp153694
                                        (let ((__tmp153695
                                               (lambda (_%g150612150615%_
                                                        _%g150613150617%_)
                                                 (cons _%g150612150615%_
                                                       _%g150613150617%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp153695
                                           '()
                                           _%L150569%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp153694))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L150568%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L150567%_
                                    'apply))
                                 (let ((__tmp153698
                                        (length (let ((__tmp153699
                                                       (lambda (_%g150619150622%_
                                                                _%g150620150624%_)
                                                         (cons _%g150619150622%_
                                                               _%g150620150624%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp153699
                                                   '()
                                                   _%L150569%_))))
                                       (__tmp153696
                                        (length (let ((__tmp153697
                                                       (lambda (_%g150626150629%_
                                                                _%g150627150631%_)
                                                         (cons _%g150626150629%_
                                                               _%g150627150631%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp153697
                                                   '()
                                                   _%L150565%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp153698 __tmp153696))
                                 (let ((__tmp153702
                                        (let ((__tmp153703
                                               (lambda (_%g150633150636%_
                                                        _%g150634150638%_)
                                                 (cons _%g150633150636%_
                                                       _%g150634150638%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp153703
                                           '()
                                           _%L150569%_)))
                                       (__tmp153700
                                        (let ((__tmp153701
                                               (lambda (_%g150640150643%_
                                                        _%g150641150645%_)
                                                 (cons _%g150640150643%_
                                                       _%g150641150645%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp153701
                                           '()
                                           _%L150565%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp153702
                                    __tmp153700))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L150568%_
                                    _%L150564%_))
                                 (not (let ((__tmp153707
                                             (lambda (_%g150647150649%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g150647150649%_
                                                  _%L150566%_))))
                                            (__tmp153704
                                             (let ((__tmp153706
                                                    (lambda (_%g150651150654%_
                                                             _%g150652150656%_)
                                                      (cons _%g150651150654%_
                                                            _%g150652150656%_)))
                                                   (__tmp153705
                                                    (cons _%L150568%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp153706
                                                __tmp153705
                                                _%L150569%_))))
                                        (declare (not safe))
                                        (__find __tmp153707 __tmp153704))))
                            (_%__kont152419152420%_
                             _%L150564%_
                             _%L150565%_
                             _%L150566%_
                             _%L150567%_
                             _%L150568%_
                             _%L150569%_)
                            (_%__match152524152525%_
                             _%e150147150404%_
                             _%hd150148150407%_
                             _%tl150149150409%_
                             _%e150159150436%_
                             _%hd150160150439%_
                             _%tl150161150441%_
                             _%e150162150444%_
                             _%hd150163150447%_
                             _%tl150164150449%_
                             _%e150165150452%_
                             _%hd150166150455%_
                             _%tl150167150457%_
                             _%e150168150460%_
                             _%hd150169150463%_
                             _%tl150170150465%_
                             _%e150171150468%_
                             _%hd150172150471%_
                             _%tl150173150473%_
                             _%e150174150476%_
                             _%hd150175150479%_
                             _%tl150176150481%_
                             _%e150177150484%_
                             _%hd150178150487%_
                             _%tl150179150489%_
                             _%e150180150492%_
                             _%hd150181150495%_
                             _%tl150182150497%_)))
                      (_%__match152524152525%_
                       _%e150147150404%_
                       _%hd150148150407%_
                       _%tl150149150409%_
                       _%e150159150436%_
                       _%hd150160150439%_
                       _%tl150161150441%_
                       _%e150162150444%_
                       _%hd150163150447%_
                       _%tl150164150449%_
                       _%e150165150452%_
                       _%hd150166150455%_
                       _%tl150167150457%_
                       _%e150168150460%_
                       _%hd150169150463%_
                       _%tl150170150465%_
                       _%e150171150468%_
                       _%hd150172150471%_
                       _%tl150173150473%_
                       _%e150174150476%_
                       _%hd150175150479%_
                       _%tl150176150481%_
                       _%e150177150484%_
                       _%hd150178150487%_
                       _%tl150179150489%_
                       _%e150180150492%_
                       _%hd150181150495%_
                       _%tl150182150497%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop150186150529%_
                                           _%target150183150500%_
                                           '()))
                                        (_%__match152524152525%_
                                         _%e150147150404%_
                                         _%hd150148150407%_
                                         _%tl150149150409%_
                                         _%e150159150436%_
                                         _%hd150160150439%_
                                         _%tl150161150441%_
                                         _%e150162150444%_
                                         _%hd150163150447%_
                                         _%tl150164150449%_
                                         _%e150165150452%_
                                         _%hd150166150455%_
                                         _%tl150167150457%_
                                         _%e150168150460%_
                                         _%hd150169150463%_
                                         _%tl150170150465%_
                                         _%e150171150468%_
                                         _%hd150172150471%_
                                         _%tl150173150473%_
                                         _%e150174150476%_
                                         _%hd150175150479%_
                                         _%tl150176150481%_
                                         _%e150177150484%_
                                         _%hd150178150487%_
                                         _%tl150179150489%_
                                         _%e150180150492%_
                                         _%hd150181150495%_
                                         _%tl150182150497%_))
                                    (_%__match152524152525%_
                                     _%e150147150404%_
                                     _%hd150148150407%_
                                     _%tl150149150409%_
                                     _%e150159150436%_
                                     _%hd150160150439%_
                                     _%tl150161150441%_
                                     _%e150162150444%_
                                     _%hd150163150447%_
                                     _%tl150164150449%_
                                     _%e150165150452%_
                                     _%hd150166150455%_
                                     _%tl150167150457%_
                                     _%e150168150460%_
                                     _%hd150169150463%_
                                     _%tl150170150465%_
                                     _%e150171150468%_
                                     _%hd150172150471%_
                                     _%tl150173150473%_
                                     _%e150174150476%_
                                     _%hd150175150479%_
                                     _%tl150176150481%_
                                     _%e150177150484%_
                                     _%hd150178150487%_
                                     _%tl150179150489%_
                                     _%e150180150492%_
                                     _%hd150181150495%_
                                     _%tl150182150497%_))))
                            (_%__match152524152525%_
                             _%e150147150404%_
                             _%hd150148150407%_
                             _%tl150149150409%_
                             _%e150159150436%_
                             _%hd150160150439%_
                             _%tl150161150441%_
                             _%e150162150444%_
                             _%hd150163150447%_
                             _%tl150164150449%_
                             _%e150165150452%_
                             _%hd150166150455%_
                             _%tl150167150457%_
                             _%e150168150460%_
                             _%hd150169150463%_
                             _%tl150170150465%_
                             _%e150171150468%_
                             _%hd150172150471%_
                             _%tl150173150473%_
                             _%e150174150476%_
                             _%hd150175150479%_
                             _%tl150176150481%_
                             _%e150177150484%_
                             _%hd150178150487%_
                             _%tl150179150489%_
                             _%e150180150492%_
                             _%hd150181150495%_
                             _%tl150182150497%_))
                        (_%__match152524152525%_
                         _%e150147150404%_
                         _%hd150148150407%_
                         _%tl150149150409%_
                         _%e150159150436%_
                         _%hd150160150439%_
                         _%tl150161150441%_
                         _%e150162150444%_
                         _%hd150163150447%_
                         _%tl150164150449%_
                         _%e150165150452%_
                         _%hd150166150455%_
                         _%tl150167150457%_
                         _%e150168150460%_
                         _%hd150169150463%_
                         _%tl150170150465%_
                         _%e150171150468%_
                         _%hd150172150471%_
                         _%tl150173150473%_
                         _%e150174150476%_
                         _%hd150175150479%_
                         _%tl150176150481%_
                         _%e150177150484%_
                         _%hd150178150487%_
                         _%tl150179150489%_
                         _%e150180150492%_
                         _%hd150181150495%_
                         _%tl150182150497%_))
                    (_%__match152524152525%_
                     _%e150147150404%_
                     _%hd150148150407%_
                     _%tl150149150409%_
                     _%e150159150436%_
                     _%hd150160150439%_
                     _%tl150161150441%_
                     _%e150162150444%_
                     _%hd150163150447%_
                     _%tl150164150449%_
                     _%e150165150452%_
                     _%hd150166150455%_
                     _%tl150167150457%_
                     _%e150168150460%_
                     _%hd150169150463%_
                     _%tl150170150465%_
                     _%e150171150468%_
                     _%hd150172150471%_
                     _%tl150173150473%_
                     _%e150174150476%_
                     _%hd150175150479%_
                     _%tl150176150481%_
                     _%e150177150484%_
                     _%hd150178150487%_
                     _%tl150179150489%_
                     _%e150180150492%_
                     _%hd150181150495%_
                     _%tl150182150497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match152524152525%_
                                                     _%e150147150404%_
                                                     _%hd150148150407%_
                                                     _%tl150149150409%_
                                                     _%e150159150436%_
                                                     _%hd150160150439%_
                                                     _%tl150161150441%_
                                                     _%e150162150444%_
                                                     _%hd150163150447%_
                                                     _%tl150164150449%_
                                                     _%e150165150452%_
                                                     _%hd150166150455%_
                                                     _%tl150167150457%_
                                                     _%e150168150460%_
                                                     _%hd150169150463%_
                                                     _%tl150170150465%_
                                                     _%e150171150468%_
                                                     _%hd150172150471%_
                                                     _%tl150173150473%_
                                                     _%e150174150476%_
                                                     _%hd150175150479%_
                                                     _%tl150176150481%_
                                                     _%e150177150484%_
                                                     _%hd150178150487%_
                                                     _%tl150179150489%_
                                                     _%e150180150492%_
                                                     _%hd150181150495%_
                                                     _%tl150182150497%_))))
                                            (_%__match152524152525%_
                                             _%e150147150404%_
                                             _%hd150148150407%_
                                             _%tl150149150409%_
                                             _%e150159150436%_
                                             _%hd150160150439%_
                                             _%tl150161150441%_
                                             _%e150162150444%_
                                             _%hd150163150447%_
                                             _%tl150164150449%_
                                             _%e150165150452%_
                                             _%hd150166150455%_
                                             _%tl150167150457%_
                                             _%e150168150460%_
                                             _%hd150169150463%_
                                             _%tl150170150465%_
                                             _%e150171150468%_
                                             _%hd150172150471%_
                                             _%tl150173150473%_
                                             _%e150174150476%_
                                             _%hd150175150479%_
                                             _%tl150176150481%_
                                             _%e150177150484%_
                                             _%hd150178150487%_
                                             _%tl150179150489%_
                                             _%e150180150492%_
                                             _%hd150181150495%_
                                             _%tl150182150497%_))))
                                    (_%__match152524152525%_
                                     _%e150147150404%_
                                     _%hd150148150407%_
                                     _%tl150149150409%_
                                     _%e150159150436%_
                                     _%hd150160150439%_
                                     _%tl150161150441%_
                                     _%e150162150444%_
                                     _%hd150163150447%_
                                     _%tl150164150449%_
                                     _%e150165150452%_
                                     _%hd150166150455%_
                                     _%tl150167150457%_
                                     _%e150168150460%_
                                     _%hd150169150463%_
                                     _%tl150170150465%_
                                     _%e150171150468%_
                                     _%hd150172150471%_
                                     _%tl150173150473%_
                                     _%e150174150476%_
                                     _%hd150175150479%_
                                     _%tl150176150481%_
                                     _%e150177150484%_
                                     _%hd150178150487%_
                                     _%tl150179150489%_
                                     _%e150180150492%_
                                     _%hd150181150495%_
                                     _%tl150182150497%_))
                                (_%__match152524152525%_
                                 _%e150147150404%_
                                 _%hd150148150407%_
                                 _%tl150149150409%_
                                 _%e150159150436%_
                                 _%hd150160150439%_
                                 _%tl150161150441%_
                                 _%e150162150444%_
                                 _%hd150163150447%_
                                 _%tl150164150449%_
                                 _%e150165150452%_
                                 _%hd150166150455%_
                                 _%tl150167150457%_
                                 _%e150168150460%_
                                 _%hd150169150463%_
                                 _%tl150170150465%_
                                 _%e150171150468%_
                                 _%hd150172150471%_
                                 _%tl150173150473%_
                                 _%e150174150476%_
                                 _%hd150175150479%_
                                 _%tl150176150481%_
                                 _%e150177150484%_
                                 _%hd150178150487%_
                                 _%tl150179150489%_
                                 _%e150180150492%_
                                 _%hd150181150495%_
                                 _%tl150182150497%_))
                            (_%__kont152427152428%_))))
                    (_%__kont152427152428%_))
                (_%__kont152427152428%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont152427152428%_))))
                                            (_%__kont152427152428%_))))
                                    (_%__kont152427152428%_))
                                (_%__kont152427152428%_))))
                        (_%__kont152427152428%_))
                    (_%__kont152427152428%_))
                (_%__kont152427152428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont152427152428%_))))
                                        (_%__kont152427152428%_))
                                    (_%__kont152427152428%_))
                                (_%__kont152427152428%_))))
                        (_%__kont152427152428%_))))
                (_%__kont152427152428%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop150153150417%_
                                     _%target150150150412%_
                                     '()))))
                               (_%__match152442152443%_
                                (lambda (_%e150099150664%_
                                         _%hd150100150667%_
                                         _%tl150101150669%_
                                         _%__splice152415152416%_
                                         _%target150102150672%_
                                         _%tl150104150674%_)
                                  (letrec ((_%loop150105150677%_
                                            (lambda (_%hd150103150680%_
                                                     _%arg150109150682%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd150103150680%_))
                                                  (let ((_%e150106150685%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd150103150680%_))))
                                                    (let ((_%lp-tl150108150690%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150106150685%_)))
                                                          (_%lp-hd150107150688%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150106150685%_))))
                                                      (_%loop150105150677%_
                                                       _%lp-tl150108150690%_
                                                       (cons _%lp-hd150107150688%_
                                                             _%arg150109150682%_))))
                                                  (let ((_%arg150110150693%_
                                                         (reverse _%arg150109150682%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl150101150669%_))
                                                        (let ((_%e150111150696%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl150101150669%_))))
                  (let ((_%tl150113150701%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e150111150696%_)))
                        (_%hd150112150699%_
                         (let ()
                           (declare (not safe))
                           (##car _%e150111150696%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd150112150699%_))
                        (let ((_%e150114150704%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd150112150699%_))))
                          (let ((_%tl150116150709%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150114150704%_)))
                                (_%hd150115150707%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150114150704%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd150115150707%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd150115150707%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl150116150709%_))
                                        (let ((_%e150117150712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl150116150709%_))))
                                          (let ((_%tl150119150717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e150117150712%_)))
                                                (_%hd150118150715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e150117150712%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd150118150715%_))
                                                (let ((_%e150120150720%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd150118150715%_))))
                                                  (let ((_%tl150122150725%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e150120150720%_)))
                                                        (_%hd150121150723%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e150120150720%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd150121150723%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd150121150723%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl150122150725%_))
                        (let ((_%e150123150728%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl150122150725%_))))
                          (let ((_%tl150125150733%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150123150728%_)))
                                (_%hd150124150731%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150123150728%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl150125150733%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl150119150717%_))
                                    (let ((_%__splice152417152418%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl150119150717%_
                                              '0))))
                                      (let ((_%tl150128150738%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice152417152418%_
                                                '1)))
                                            (_%target150126150736%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice152417152418%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl150128150738%_))
                                            (letrec ((_%loop150129150741%_
                                                      (lambda (_%hd150127150744%_
                                                               _%xarg150133150746%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd150127150744%_))
                                                            (let ((_%e150130150749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd150127150744%_))))
                      (let ((_%lp-tl150132150754%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e150130150749%_)))
                            (_%lp-hd150131150752%_
                             (let ()
                               (declare (not safe))
                               (##car _%e150130150749%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd150131150752%_))
                            (let ((_%e150135150757%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd150131150752%_))))
                              (let ((_%tl150137150762%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e150135150757%_)))
                                    (_%hd150136150760%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e150135150757%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd150136150760%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd150136150760%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl150137150762%_))
                                            (let ((_%e150138150765%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl150137150762%_))))
                                              (let ((_%tl150140150770%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e150138150765%_)))
                                                    (_%hd150139150768%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e150138150765%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl150140150770%_))
                                                    (_%loop150129150741%_
                                                     _%lp-tl150132150754%_
                                                     (cons _%hd150139150768%_
                                                           _%xarg150133150746%_))
                                                    (_%__match152454152455%_
                                                     _%e150099150664%_
                                                     _%hd150100150667%_
                                                     _%tl150101150669%_
                                                     _%__splice152415152416%_
                                                     _%target150102150672%_
                                                     _%tl150104150674%_))))
                                            (_%__match152454152455%_
                                             _%e150099150664%_
                                             _%hd150100150667%_
                                             _%tl150101150669%_
                                             _%__splice152415152416%_
                                             _%target150102150672%_
                                             _%tl150104150674%_))
                                        (_%__match152454152455%_
                                         _%e150099150664%_
                                         _%hd150100150667%_
                                         _%tl150101150669%_
                                         _%__splice152415152416%_
                                         _%target150102150672%_
                                         _%tl150104150674%_))
                                    (_%__match152454152455%_
                                     _%e150099150664%_
                                     _%hd150100150667%_
                                     _%tl150101150669%_
                                     _%__splice152415152416%_
                                     _%target150102150672%_
                                     _%tl150104150674%_))))
                            (_%__match152454152455%_
                             _%e150099150664%_
                             _%hd150100150667%_
                             _%tl150101150669%_
                             _%__splice152415152416%_
                             _%target150102150672%_
                             _%tl150104150674%_))))
                    (let ((_%xarg150134150773%_
                           (reverse _%xarg150133150746%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl150113150701%_))
                          (let ((_%L150776%_ _%xarg150134150773%_)
                                (_%L150777%_ _%hd150124150731%_)
                                (_%L150778%_ _%arg150110150693%_))
                            (if (and (let ((__tmp153708
                                            (let ((__tmp153709
                                                   (lambda (_%g150806150809%_
                                                            _%g150807150811%_)
                                                     (cons _%g150806150809%_
                                                           _%g150807150811%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp153709
                                               '()
                                               _%L150778%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp153708))
                                     (let ((__tmp153712
                                            (length (let ((__tmp153713
                                                           (lambda (_%g150813150816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g150814150818%_)
                     (cons _%g150813150816%_ _%g150814150818%_))))
              (declare (not safe))
              (__foldr1 __tmp153713 '() _%L150778%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp153710
                                            (length (let ((__tmp153711
                                                           (lambda (_%g150820150823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g150821150825%_)
                     (cons _%g150820150823%_ _%g150821150825%_))))
              (declare (not safe))
              (__foldr1 __tmp153711 '() _%L150776%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp153712 __tmp153710))
                                     (let ((__tmp153716
                                            (let ((__tmp153717
                                                   (lambda (_%g150827150830%_
                                                            _%g150828150832%_)
                                                     (cons _%g150827150830%_
                                                           _%g150828150832%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp153717
                                               '()
                                               _%L150778%_)))
                                           (__tmp153714
                                            (let ((__tmp153715
                                                   (lambda (_%g150834150837%_
                                                            _%g150835150839%_)
                                                     (cons _%g150834150837%_
                                                           _%g150835150839%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp153715
                                               '()
                                               _%L150776%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp153716
                                        __tmp153714))
                                     (not (let ((__tmp153720
                                                 (lambda (_%g150841150843%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g150841150843%_
                                                      _%L150777%_))))
                                                (__tmp153718
                                                 (let ((__tmp153719
                                                        (lambda (_%g150845150848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g150846150850%_)
                  (cons _%g150845150848%_ _%g150846150850%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp153719
                                                    '()
                                                    _%L150778%_))))
                                            (declare (not safe))
                                            (__find __tmp153720 __tmp153718))))
                                (_%__kont152413152414%_
                                 _%L150776%_
                                 _%L150777%_
                                 _%L150778%_)
                                (_%__match152454152455%_
                                 _%e150099150664%_
                                 _%hd150100150667%_
                                 _%tl150101150669%_
                                 _%__splice152415152416%_
                                 _%target150102150672%_
                                 _%tl150104150674%_)))
                          (_%__match152454152455%_
                           _%e150099150664%_
                           _%hd150100150667%_
                           _%tl150101150669%_
                           _%__splice152415152416%_
                           _%target150102150672%_
                           _%tl150104150674%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop150129150741%_
                                               _%target150126150736%_
                                               '()))
                                            (_%__match152454152455%_
                                             _%e150099150664%_
                                             _%hd150100150667%_
                                             _%tl150101150669%_
                                             _%__splice152415152416%_
                                             _%target150102150672%_
                                             _%tl150104150674%_))))
                                    (_%__match152454152455%_
                                     _%e150099150664%_
                                     _%hd150100150667%_
                                     _%tl150101150669%_
                                     _%__splice152415152416%_
                                     _%target150102150672%_
                                     _%tl150104150674%_))
                                (_%__match152454152455%_
                                 _%e150099150664%_
                                 _%hd150100150667%_
                                 _%tl150101150669%_
                                 _%__splice152415152416%_
                                 _%target150102150672%_
                                 _%tl150104150674%_))))
                        (_%__match152454152455%_
                         _%e150099150664%_
                         _%hd150100150667%_
                         _%tl150101150669%_
                         _%__splice152415152416%_
                         _%target150102150672%_
                         _%tl150104150674%_))
                    (_%__match152454152455%_
                     _%e150099150664%_
                     _%hd150100150667%_
                     _%tl150101150669%_
                     _%__splice152415152416%_
                     _%target150102150672%_
                     _%tl150104150674%_))
                (_%__match152454152455%_
                 _%e150099150664%_
                 _%hd150100150667%_
                 _%tl150101150669%_
                 _%__splice152415152416%_
                 _%target150102150672%_
                 _%tl150104150674%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match152454152455%_
                                                 _%e150099150664%_
                                                 _%hd150100150667%_
                                                 _%tl150101150669%_
                                                 _%__splice152415152416%_
                                                 _%target150102150672%_
                                                 _%tl150104150674%_))))
                                        (_%__match152454152455%_
                                         _%e150099150664%_
                                         _%hd150100150667%_
                                         _%tl150101150669%_
                                         _%__splice152415152416%_
                                         _%target150102150672%_
                                         _%tl150104150674%_))
                                    (_%__match152454152455%_
                                     _%e150099150664%_
                                     _%hd150100150667%_
                                     _%tl150101150669%_
                                     _%__splice152415152416%_
                                     _%target150102150672%_
                                     _%tl150104150674%_))
                                (_%__match152454152455%_
                                 _%e150099150664%_
                                 _%hd150100150667%_
                                 _%tl150101150669%_
                                 _%__splice152415152416%_
                                 _%target150102150672%_
                                 _%tl150104150674%_))))
                        (_%__match152454152455%_
                         _%e150099150664%_
                         _%hd150100150667%_
                         _%tl150101150669%_
                         _%__splice152415152416%_
                         _%target150102150672%_
                         _%tl150104150674%_))))
                (_%__match152454152455%_
                 _%e150099150664%_
                 _%hd150100150667%_
                 _%tl150101150669%_
                 _%__splice152415152416%_
                 _%target150102150672%_
                 _%tl150104150674%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop150105150677%_
                                     _%target150102150672%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx152411152412%_))
                              (let ((_%e150099150664%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx152411152412%_))))
                                (let ((_%tl150101150669%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150099150664%_)))
                                      (_%hd150100150667%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150099150664%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd150100150667%_))
                                      (let ((_%__splice152415152416%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd150100150667%_
                                                '0))))
                                        (let ((_%tl150104150674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice152415152416%_
                                                  '1)))
                                              (_%target150102150672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice152415152416%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150104150674%_))
                                              (_%__match152442152443%_
                                               _%e150099150664%_
                                               _%hd150100150667%_
                                               _%tl150101150669%_
                                               _%__splice152415152416%_
                                               _%target150102150672%_
                                               _%tl150104150674%_)
                                              (_%__match152454152455%_
                                               _%e150099150664%_
                                               _%hd150100150667%_
                                               _%tl150101150669%_
                                               _%__splice152415152416%_
                                               _%target150102150672%_
                                               _%tl150104150674%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl150101150669%_))
                                          (let ((_%e150214150271%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl150101150669%_))))
                                            (let ((_%tl150216150276%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e150214150271%_)))
                                                  (_%hd150215150274%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e150214150271%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd150215150274%_))
                                                  (let ((_%e150217150279%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd150215150274%_))))
                                                    (let ((_%tl150219150284%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150217150279%_)))
                                                          (_%hd150218150282%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150217150279%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd150218150282%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd150218150282%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl150219150284%_))
                          (let ((_%e150220150287%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl150219150284%_))))
                            (let ((_%tl150222150292%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150220150287%_)))
                                  (_%hd150221150290%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150220150287%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd150221150290%_))
                                  (let ((_%e150223150295%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd150221150290%_))))
                                    (let ((_%tl150225150300%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150223150295%_)))
                                          (_%hd150224150298%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150223150295%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd150224150298%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd150224150298%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150225150300%_))
                                                  (let ((_%e150226150303%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150225150300%_))))
                                                    (let ((_%tl150228150308%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150226150303%_)))
                                                          (_%hd150227150306%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150226150303%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl150228150308%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl150222150292%_))
                      (let ((_%e150229150311%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl150222150292%_))))
                        (let ((_%tl150231150316%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150229150311%_)))
                              (_%hd150230150314%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150229150311%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd150230150314%_))
                              (let ((_%e150232150319%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd150230150314%_))))
                                (let ((_%tl150234150324%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150232150319%_)))
                                      (_%hd150233150322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150232150319%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd150233150322%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd150233150322%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl150234150324%_))
                                              (let ((_%e150235150327%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl150234150324%_))))
                                                (let ((_%tl150237150332%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150235150327%_)))
                                                      (_%hd150236150330%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150235150327%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150237150332%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl150231150316%_))
                                                          (let ((_%e150238150335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl150231150316%_))))
                    (let ((_%tl150240150340%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150238150335%_)))
                          (_%hd150239150338%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150238150335%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd150239150338%_))
                          (let ((_%e150241150343%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd150239150338%_))))
                            (let ((_%tl150243150348%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150241150343%_)))
                                  (_%hd150242150346%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150241150343%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd150242150346%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd150242150346%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl150243150348%_))
                                          (let ((_%e150244150351%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl150243150348%_))))
                                            (let ((_%tl150246150356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e150244150351%_)))
                                                  (_%hd150245150354%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e150244150351%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl150246150356%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150240150340%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl150216150276%_))
                                                          (_%__match152552152553%_
                                                           _%e150099150664%_
                                                           _%hd150100150667%_
                                                           _%tl150101150669%_
                                                           _%e150214150271%_
                                                           _%hd150215150274%_
                                                           _%tl150216150276%_
                                                           _%e150217150279%_
                                                           _%hd150218150282%_
                                                           _%tl150219150284%_
                                                           _%e150220150287%_
                                                           _%hd150221150290%_
                                                           _%tl150222150292%_
                                                           _%e150223150295%_
                                                           _%hd150224150298%_
                                                           _%tl150225150300%_
                                                           _%e150226150303%_
                                                           _%hd150227150306%_
                                                           _%tl150228150308%_
                                                           _%e150229150311%_
                                                           _%hd150230150314%_
                                                           _%tl150231150316%_
                                                           _%e150232150319%_
                                                           _%hd150233150322%_
                                                           _%tl150234150324%_
                                                           _%e150235150327%_
                                                           _%hd150236150330%_
                                                           _%tl150237150332%_
                                                           _%e150238150335%_
                                                           _%hd150239150338%_
                                                           _%tl150240150340%_
                                                           _%e150241150343%_
                                                           _%hd150242150346%_
                                                           _%tl150243150348%_
                                                           _%e150244150351%_
                                                           _%hd150245150354%_
                                                           _%tl150246150356%_)
                                                          (_%__kont152427152428%_))
                                                      (_%__kont152427152428%_))
                                                  (_%__kont152427152428%_))))
                                          (_%__kont152427152428%_))
                                      (_%__kont152427152428%_))
                                  (_%__kont152427152428%_))))
                          (_%__kont152427152428%_))))
                  (_%__kont152427152428%_))
              (_%__kont152427152428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont152427152428%_))
                                          (_%__kont152427152428%_))
                                      (_%__kont152427152428%_))))
                              (_%__kont152427152428%_))))
                      (_%__kont152427152428%_))
                  (_%__kont152427152428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont152427152428%_))
                                              (_%__kont152427152428%_))
                                          (_%__kont152427152428%_))))
                                  (_%__kont152427152428%_))))
                          (_%__kont152427152428%_))
                      (_%__kont152427152428%_))
                  (_%__kont152427152428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont152427152428%_))))
                                          (_%__kont152427152428%_)))))
                              (_%__kont152427152428%_)))))))
                 (_%dispatch-case-e149399%_
                  (lambda (_%hd149550%_ _%body149551%_)
                    (let* ((_%form149553%_
                            (cons _%hd149550%_ (cons _%body149551%_ '())))
                           (_%__stx152555152556%_ _%form149553%_)
                           (_%g149557149681%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx152555152556%_)))))
                      (let ((_%__kont152557152558%_
                             (lambda (_%L150052%_ _%L150053%_ _%L150054%_)
                               (let ((__tmp153721
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L150053%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self149395%_
                                  __tmp153721))))
                            (_%__kont152563152564%_
                             (lambda (_%L149900%_
                                      _%L149901%_
                                      _%L149902%_
                                      _%L149903%_)
                               (let ((__tmp153722
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L149900%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self149395%_
                                  __tmp153722))))
                            (_%__kont152567152568%_
                             (lambda (_%L149766%_ _%L149767%_ _%L149768%_)
                               (let ((__tmp153723
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L149766%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self149395%_
                                  __tmp153723)))))
                        (let* ((_%__match152664152665%_
                                (lambda (_%e149647149686%_
                                         _%hd149648149689%_
                                         _%tl149649149691%_
                                         _%e149650149694%_
                                         _%hd149651149697%_
                                         _%tl149652149699%_
                                         _%e149653149702%_
                                         _%hd149654149705%_
                                         _%tl149655149707%_
                                         _%e149656149710%_
                                         _%hd149657149713%_
                                         _%tl149658149715%_
                                         _%e149659149718%_
                                         _%hd149660149721%_
                                         _%tl149661149723%_
                                         _%e149662149726%_
                                         _%hd149663149729%_
                                         _%tl149664149731%_
                                         _%e149665149734%_
                                         _%hd149666149737%_
                                         _%tl149667149739%_
                                         _%e149668149742%_
                                         _%hd149669149745%_
                                         _%tl149670149747%_
                                         _%e149671149750%_
                                         _%hd149672149753%_
                                         _%tl149673149755%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149667149739%_))
                                      (let ((_%e149674149758%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149667149739%_))))
                                        (let ((_%tl149676149763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149674149758%_)))
                                              (_%hd149675149761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149674149758%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149676149763%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl149652149699%_))
                                                  (_%__kont152567152568%_
                                                   _%hd149672149753%_
                                                   _%hd149663149729%_
                                                   _%hd149648149689%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g149557149681%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g149557149681%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149557149681%_)))))
                               (_%__match152594152595%_
                                (lambda (_%e149608149804%_
                                         _%hd149609149807%_
                                         _%tl149610149809%_
                                         _%__splice152565152566%_
                                         _%target149611149812%_
                                         _%tl149613149814%_)
                                  (letrec ((_%loop149614149817%_
                                            (lambda (_%hd149612149820%_
                                                     _%arg149618149822%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd149612149820%_))
                                                  (let ((_%e149615149825%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd149612149820%_))))
                                                    (let ((_%lp-tl149617149830%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149615149825%_)))
                                                          (_%lp-hd149616149828%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149615149825%_))))
                                                      (_%loop149614149817%_
                                                       _%lp-tl149617149830%_
                                                       (cons _%lp-hd149616149828%_
                                                             _%arg149618149822%_))))
                                                  (let ((_%arg149619149833%_
                                                         (reverse _%arg149618149822%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl149610149809%_))
                                                        (let ((_%e149620149836%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl149610149809%_))))
                  (let ((_%tl149622149841%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149620149836%_)))
                        (_%hd149621149839%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149620149836%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd149621149839%_))
                        (let ((_%e149623149844%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd149621149839%_))))
                          (let ((_%tl149625149849%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149623149844%_)))
                                (_%hd149624149847%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149623149844%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd149624149847%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd149624149847%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl149625149849%_))
                                        (let ((_%e149626149852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl149625149849%_))))
                                          (let ((_%tl149628149857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e149626149852%_)))
                                                (_%hd149627149855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e149626149852%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd149627149855%_))
                                                (let ((_%e149629149860%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd149627149855%_))))
                                                  (let ((_%tl149631149865%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e149629149860%_)))
                                                        (_%hd149630149863%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e149629149860%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd149630149863%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd149630149863%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl149631149865%_))
                        (let ((_%e149632149868%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl149631149865%_))))
                          (let ((_%tl149634149873%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149632149868%_)))
                                (_%hd149633149871%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149632149868%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl149634149873%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl149628149857%_))
                                    (let ((_%e149635149876%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl149628149857%_))))
                                      (let ((_%tl149637149881%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e149635149876%_)))
                                            (_%hd149636149879%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e149635149876%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd149636149879%_))
                                            (let ((_%e149638149884%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd149636149879%_))))
                                              (let ((_%tl149640149889%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e149638149884%_)))
                                                    (_%hd149639149887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e149638149884%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd149639149887%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd149639149887%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl149640149889%_))
                                                            (let ((_%e149641149892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl149640149889%_))))
                      (let ((_%tl149643149897%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e149641149892%_)))
                            (_%hd149642149895%_
                             (let ()
                               (declare (not safe))
                               (##car _%e149641149892%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl149643149897%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl149622149841%_))
                                (_%__kont152563152564%_
                                 _%hd149642149895%_
                                 _%hd149633149871%_
                                 _%tl149613149814%_
                                 _%arg149619149833%_)
                                (_%__match152664152665%_
                                 _%e149608149804%_
                                 _%hd149609149807%_
                                 _%tl149610149809%_
                                 _%e149620149836%_
                                 _%hd149621149839%_
                                 _%tl149622149841%_
                                 _%e149623149844%_
                                 _%hd149624149847%_
                                 _%tl149625149849%_
                                 _%e149626149852%_
                                 _%hd149627149855%_
                                 _%tl149628149857%_
                                 _%e149629149860%_
                                 _%hd149630149863%_
                                 _%tl149631149865%_
                                 _%e149632149868%_
                                 _%hd149633149871%_
                                 _%tl149634149873%_
                                 _%e149635149876%_
                                 _%hd149636149879%_
                                 _%tl149637149881%_
                                 _%e149638149884%_
                                 _%hd149639149887%_
                                 _%tl149640149889%_
                                 _%e149641149892%_
                                 _%hd149642149895%_
                                 _%tl149643149897%_))
                            (let ()
                              (declare (not safe))
                              (_%g149557149681%_)))))
                    (let () (declare (not safe)) (_%g149557149681%_)))
                (let () (declare (not safe)) (_%g149557149681%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g149557149681%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g149557149681%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g149557149681%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g149557149681%_)))))
                        (let () (declare (not safe)) (_%g149557149681%_)))
                    (let () (declare (not safe)) (_%g149557149681%_)))
                (let () (declare (not safe)) (_%g149557149681%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g149557149681%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149557149681%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g149557149681%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g149557149681%_)))))
                        (let () (declare (not safe)) (_%g149557149681%_)))))
                (let () (declare (not safe)) (_%g149557149681%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop149614149817%_
                                     _%target149611149812%_
                                     '()))))
                               (_%__match152582152583%_
                                (lambda (_%e149562149940%_
                                         _%hd149563149943%_
                                         _%tl149564149945%_
                                         _%__splice152559152560%_
                                         _%target149565149948%_
                                         _%tl149567149950%_)
                                  (letrec ((_%loop149568149953%_
                                            (lambda (_%hd149566149956%_
                                                     _%arg149572149958%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd149566149956%_))
                                                  (let ((_%e149569149961%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd149566149956%_))))
                                                    (let ((_%lp-tl149571149966%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149569149961%_)))
                                                          (_%lp-hd149570149964%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149569149961%_))))
                                                      (_%loop149568149953%_
                                                       _%lp-tl149571149966%_
                                                       (cons _%lp-hd149570149964%_
                                                             _%arg149572149958%_))))
                                                  (let ((_%arg149573149969%_
                                                         (reverse _%arg149572149958%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl149564149945%_))
                                                        (let ((_%e149574149972%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl149564149945%_))))
                  (let ((_%tl149576149977%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149574149972%_)))
                        (_%hd149575149975%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149574149972%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd149575149975%_))
                        (let ((_%e149577149980%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd149575149975%_))))
                          (let ((_%tl149579149985%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149577149980%_)))
                                (_%hd149578149983%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149577149980%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd149578149983%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd149578149983%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl149579149985%_))
                                        (let ((_%e149580149988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl149579149985%_))))
                                          (let ((_%tl149582149993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e149580149988%_)))
                                                (_%hd149581149991%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e149580149988%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd149581149991%_))
                                                (let ((_%e149583149996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd149581149991%_))))
                                                  (let ((_%tl149585150001%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e149583149996%_)))
                                                        (_%hd149584149999%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e149583149996%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd149584149999%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd149584149999%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl149585150001%_))
                        (let ((_%e149586150004%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl149585150001%_))))
                          (let ((_%tl149588150009%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149586150004%_)))
                                (_%hd149587150007%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149586150004%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl149588150009%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl149582149993%_))
                                    (let ((_%__splice152561152562%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl149582149993%_
                                              '0))))
                                      (let ((_%tl149591150014%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice152561152562%_
                                                '1)))
                                            (_%target149589150012%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice152561152562%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl149591150014%_))
                                            (letrec ((_%loop149592150017%_
                                                      (lambda (_%hd149590150020%_
                                                               _%xarg149596150022%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd149590150020%_))
                                                            (let ((_%e149593150025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd149590150020%_))))
                      (let ((_%lp-tl149595150030%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e149593150025%_)))
                            (_%lp-hd149594150028%_
                             (let ()
                               (declare (not safe))
                               (##car _%e149593150025%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd149594150028%_))
                            (let ((_%e149598150033%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd149594150028%_))))
                              (let ((_%tl149600150038%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e149598150033%_)))
                                    (_%hd149599150036%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e149598150033%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd149599150036%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd149599150036%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl149600150038%_))
                                            (let ((_%e149601150041%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl149600150038%_))))
                                              (let ((_%tl149603150046%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e149601150041%_)))
                                                    (_%hd149602150044%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e149601150041%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl149603150046%_))
                                                    (_%loop149592150017%_
                                                     _%lp-tl149595150030%_
                                                     (cons _%hd149602150044%_
                                                           _%xarg149596150022%_))
                                                    (_%__match152594152595%_
                                                     _%e149562149940%_
                                                     _%hd149563149943%_
                                                     _%tl149564149945%_
                                                     _%__splice152559152560%_
                                                     _%target149565149948%_
                                                     _%tl149567149950%_))))
                                            (_%__match152594152595%_
                                             _%e149562149940%_
                                             _%hd149563149943%_
                                             _%tl149564149945%_
                                             _%__splice152559152560%_
                                             _%target149565149948%_
                                             _%tl149567149950%_))
                                        (_%__match152594152595%_
                                         _%e149562149940%_
                                         _%hd149563149943%_
                                         _%tl149564149945%_
                                         _%__splice152559152560%_
                                         _%target149565149948%_
                                         _%tl149567149950%_))
                                    (_%__match152594152595%_
                                     _%e149562149940%_
                                     _%hd149563149943%_
                                     _%tl149564149945%_
                                     _%__splice152559152560%_
                                     _%target149565149948%_
                                     _%tl149567149950%_))))
                            (_%__match152594152595%_
                             _%e149562149940%_
                             _%hd149563149943%_
                             _%tl149564149945%_
                             _%__splice152559152560%_
                             _%target149565149948%_
                             _%tl149567149950%_))))
                    (let ((_%xarg149597150049%_
                           (reverse _%xarg149596150022%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl149576149977%_))
                          (_%__kont152557152558%_
                           _%xarg149597150049%_
                           _%hd149587150007%_
                           _%arg149573149969%_)
                          (_%__match152594152595%_
                           _%e149562149940%_
                           _%hd149563149943%_
                           _%tl149564149945%_
                           _%__splice152559152560%_
                           _%target149565149948%_
                           _%tl149567149950%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop149592150017%_
                                               _%target149589150012%_
                                               '()))
                                            (_%__match152594152595%_
                                             _%e149562149940%_
                                             _%hd149563149943%_
                                             _%tl149564149945%_
                                             _%__splice152559152560%_
                                             _%target149565149948%_
                                             _%tl149567149950%_))))
                                    (_%__match152594152595%_
                                     _%e149562149940%_
                                     _%hd149563149943%_
                                     _%tl149564149945%_
                                     _%__splice152559152560%_
                                     _%target149565149948%_
                                     _%tl149567149950%_))
                                (_%__match152594152595%_
                                 _%e149562149940%_
                                 _%hd149563149943%_
                                 _%tl149564149945%_
                                 _%__splice152559152560%_
                                 _%target149565149948%_
                                 _%tl149567149950%_))))
                        (_%__match152594152595%_
                         _%e149562149940%_
                         _%hd149563149943%_
                         _%tl149564149945%_
                         _%__splice152559152560%_
                         _%target149565149948%_
                         _%tl149567149950%_))
                    (_%__match152594152595%_
                     _%e149562149940%_
                     _%hd149563149943%_
                     _%tl149564149945%_
                     _%__splice152559152560%_
                     _%target149565149948%_
                     _%tl149567149950%_))
                (_%__match152594152595%_
                 _%e149562149940%_
                 _%hd149563149943%_
                 _%tl149564149945%_
                 _%__splice152559152560%_
                 _%target149565149948%_
                 _%tl149567149950%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match152594152595%_
                                                 _%e149562149940%_
                                                 _%hd149563149943%_
                                                 _%tl149564149945%_
                                                 _%__splice152559152560%_
                                                 _%target149565149948%_
                                                 _%tl149567149950%_))))
                                        (_%__match152594152595%_
                                         _%e149562149940%_
                                         _%hd149563149943%_
                                         _%tl149564149945%_
                                         _%__splice152559152560%_
                                         _%target149565149948%_
                                         _%tl149567149950%_))
                                    (_%__match152594152595%_
                                     _%e149562149940%_
                                     _%hd149563149943%_
                                     _%tl149564149945%_
                                     _%__splice152559152560%_
                                     _%target149565149948%_
                                     _%tl149567149950%_))
                                (_%__match152594152595%_
                                 _%e149562149940%_
                                 _%hd149563149943%_
                                 _%tl149564149945%_
                                 _%__splice152559152560%_
                                 _%target149565149948%_
                                 _%tl149567149950%_))))
                        (_%__match152594152595%_
                         _%e149562149940%_
                         _%hd149563149943%_
                         _%tl149564149945%_
                         _%__splice152559152560%_
                         _%target149565149948%_
                         _%tl149567149950%_))))
                (_%__match152594152595%_
                 _%e149562149940%_
                 _%hd149563149943%_
                 _%tl149564149945%_
                 _%__splice152559152560%_
                 _%target149565149948%_
                 _%tl149567149950%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop149568149953%_
                                     _%target149565149948%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx152555152556%_))
                              (let ((_%e149562149940%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx152555152556%_))))
                                (let ((_%tl149564149945%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149562149940%_)))
                                      (_%hd149563149943%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149562149940%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd149563149943%_))
                                      (let ((_%__splice152559152560%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd149563149943%_
                                                '0))))
                                        (let ((_%tl149567149950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice152559152560%_
                                                  '1)))
                                              (_%target149565149948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice152559152560%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149567149950%_))
                                              (_%__match152582152583%_
                                               _%e149562149940%_
                                               _%hd149563149943%_
                                               _%tl149564149945%_
                                               _%__splice152559152560%_
                                               _%target149565149948%_
                                               _%tl149567149950%_)
                                              (_%__match152594152595%_
                                               _%e149562149940%_
                                               _%hd149563149943%_
                                               _%tl149564149945%_
                                               _%__splice152559152560%_
                                               _%target149565149948%_
                                               _%tl149567149950%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl149564149945%_))
                                          (let ((_%e149650149694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl149564149945%_))))
                                            (let ((_%tl149652149699%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e149650149694%_)))
                                                  (_%hd149651149697%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e149650149694%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd149651149697%_))
                                                  (let ((_%e149653149702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd149651149697%_))))
                                                    (let ((_%tl149655149707%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149653149702%_)))
                                                          (_%hd149654149705%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149653149702%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd149654149705%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd149654149705%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl149655149707%_))
                          (let ((_%e149656149710%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl149655149707%_))))
                            (let ((_%tl149658149715%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149656149710%_)))
                                  (_%hd149657149713%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149656149710%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd149657149713%_))
                                  (let ((_%e149659149718%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd149657149713%_))))
                                    (let ((_%tl149661149723%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149659149718%_)))
                                          (_%hd149660149721%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149659149718%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd149660149721%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd149660149721%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149661149723%_))
                                                  (let ((_%e149662149726%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149661149723%_))))
                                                    (let ((_%tl149664149731%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149662149726%_)))
                                                          (_%hd149663149729%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149662149726%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl149664149731%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl149658149715%_))
                      (let ((_%e149665149734%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl149658149715%_))))
                        (let ((_%tl149667149739%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149665149734%_)))
                              (_%hd149666149737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149665149734%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd149666149737%_))
                              (let ((_%e149668149742%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd149666149737%_))))
                                (let ((_%tl149670149747%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149668149742%_)))
                                      (_%hd149669149745%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149668149742%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd149669149745%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd149669149745%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149670149747%_))
                                              (let ((_%e149671149750%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149670149747%_))))
                                                (let ((_%tl149673149755%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149671149750%_)))
                                                      (_%hd149672149753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149671149750%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149673149755%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl149667149739%_))
                                                          (let ((_%e149674149758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl149667149739%_))))
                    (let ((_%tl149676149763%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149674149758%_)))
                          (_%hd149675149761%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149674149758%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl149676149763%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl149652149699%_))
                              (_%__kont152567152568%_
                               _%hd149672149753%_
                               _%hd149663149729%_
                               _%hd149563149943%_)
                              (let ()
                                (declare (not safe))
                                (_%g149557149681%_)))
                          (let () (declare (not safe)) (_%g149557149681%_)))))
                  (let () (declare (not safe)) (_%g149557149681%_)))
              (let () (declare (not safe)) (_%g149557149681%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g149557149681%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g149557149681%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149557149681%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149557149681%_)))))
                      (let () (declare (not safe)) (_%g149557149681%_)))
                  (let () (declare (not safe)) (_%g149557149681%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g149557149681%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g149557149681%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g149557149681%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g149557149681%_)))))
                          (let () (declare (not safe)) (_%g149557149681%_)))
                      (let () (declare (not safe)) (_%g149557149681%_)))
                  (let () (declare (not safe)) (_%g149557149681%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g149557149681%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g149557149681%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g149557149681%_))))))))
                 (_%generate1149400%_
                  (lambda (_%args149535%_
                           _%arglen149536%_
                           _%hd149537%_
                           _%body149538%_)
                    (let* ((_%len149540%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd149537%_)))
                           (_%condition149545%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd149537%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen149536%_
                                                (cons _%len149540%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen149536%_ (cons _%len149540%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len149540%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen149536%_
                                                    (cons _%len149540%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen149536%_ (cons _%len149540%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch149547%_
                            (if (_%dispatch-case?149398%_
                                 _%hd149537%_
                                 _%body149538%_)
                                (_%dispatch-case-e149399%_
                                 _%hd149537%_
                                 _%body149538%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self149395%_
                                 _%hd149537%_
                                 _%body149538%_))))
                      (cons _%condition149545%_
                            (cons (cons 'apply
                                        (cons _%dispatch149547%_
                                              (cons _%args149535%_ '())))
                                  '()))))))
          (let* ((_%g149402149430%_
                  (lambda (_%g149403149427%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g149403149427%_))))
                 (_%g149401149532%_
                  (lambda (_%g149403149433%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g149403149433%_))
                        (let ((_%e149406149435%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g149403149433%_))))
                          (let ((_%hd149407149438%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149406149435%_)))
                                (_%tl149408149440%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149406149435%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl149408149440%_))
                                (let ((_g153724_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl149408149440%_
                                          '0))))
                                  (begin
                                    (let ((_g153725_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g153724_)
                                                 (##values-length _g153724_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g153725_ 2)))
                                          (error "Context expects 2 values"
                                                 _g153725_)))
                                    (let ((_%target149409149443%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g153724_ 0)))
                                          (_%tl149411149445%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g153724_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl149411149445%_))
                                          (letrec ((_%loop149412149448%_
                                                    (lambda (_%hd149410149451%_
                                                             _%body149416149453%_
                                                             _%hd149417149455%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd149410149451%_))
                                                          (let ((_%e149413149458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd149410149451%_))))
                    (let ((_%lp-hd149414149461%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149413149458%_)))
                          (_%lp-tl149415149463%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149413149458%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd149414149461%_))
                          (let ((_%e149420149466%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd149414149461%_))))
                            (let ((_%hd149421149469%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149420149466%_)))
                                  (_%tl149422149471%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149420149466%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl149422149471%_))
                                  (let ((_%e149423149474%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl149422149471%_))))
                                    (let ((_%hd149424149477%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149423149474%_)))
                                          (_%tl149425149479%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149423149474%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl149425149479%_))
                                          (_%loop149412149448%_
                                           _%lp-tl149415149463%_
                                           (cons _%hd149424149477%_
                                                 _%body149416149453%_)
                                           (cons _%hd149421149469%_
                                                 _%hd149417149455%_))
                                          (_%g149402149430%_
                                           _%g149403149433%_))))
                                  (_%g149402149430%_ _%g149403149433%_))))
                          (_%g149402149430%_ _%g149403149433%_))))
                  (let ((_%body149418149482%_ (reverse _%body149416149453%_))
                        (_%hd149419149484%_ (reverse _%hd149417149455%_)))
                    ((lambda (_%L149487%_ _%L149488%_)
                       (let ((_%args149507%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen149508%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name149509%_
                              (let ((_%$e149504%_
                                     (let ((__tmp153726
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp153726 _%stx149396%_))))
                                (if _%$e149504%_
                                    _%$e149504%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args149507%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen149508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args149507%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args149507%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp153730
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name149509%_
                                                                (cons _%args149507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp153727
                                  (map (lambda (_%g149510149513%_
                                                _%g149511149515%_)
                                         (_%generate1149400%_
                                          _%args149507%_
                                          _%arglen149508%_
                                          _%g149510149513%_
                                          _%g149511149515%_))
                                       (let ((__tmp153728
                                              (lambda (_%g149517149520%_
                                                       _%g149518149522%_)
                                                (cons _%g149517149520%_
                                                      _%g149518149522%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp153728
                                          '()
                                          _%L149488%_))
                                       (let ((__tmp153729
                                              (lambda (_%g149524149527%_
                                                       _%g149525149529%_)
                                                (cons _%g149524149527%_
                                                      _%g149525149529%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp153729
                                          '()
                                          _%L149487%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp153730 __tmp153727)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body149418149482%_
                     _%hd149419149484%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop149412149448%_
                                             _%target149409149443%_
                                             '()
                                             '()))
                                          (_%g149402149430%_
                                           _%g149403149433%_)))))
                                (_%g149402149430%_ _%g149403149433%_))))
                        (_%g149402149430%_ _%g149403149433%_)))))
            (_%g149401149532%_ _%stx149396%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self148632%_ _%stx148633%_ _%compiled-body?148634%_)
        (letrec ((_%generate-simple148636%_
                  (lambda (_%hd149380%_ _%body149381%_)
                    (_%coalesce-boolean148637%_
                     (_%simplify-let148638%_
                      (gxc#generate-runtime-simple-let
                       _%self148632%_
                       'let
                       _%hd149380%_
                       _%body149381%_
                       _%compiled-body?148634%_)))))
                 (_%coalesce-boolean148637%_
                  (lambda (_%code149241%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code149242149268%_ _%code149241%_)
                               (_%else149244149276%_
                                (lambda () _%code149241%_))
                               (_%K149246149313%_
                                (lambda (_%expr2149279%_
                                         _%expr1149280%_
                                         _%id149281%_)
                                  (let* ((_%expr2149282149290%_
                                          _%expr2149279%_)
                                         (_%else149284149298%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1149280%_
                                                        (cons _%expr2149279%_
                                                              '())))))
                                         (_%K149286149303%_
                                          (lambda (_%exprs149301%_)
                                            (cons 'or
                                                  (cons _%expr1149280%_
                                                        _%exprs149301%_)))))
                                    (if (pair? _%expr2149282149290%_)
                                        (let ((_%hd149287149306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2149282149290%_)))
                                              (_%tl149288149308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2149282149290%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd149287149306%_ 'or))
                                              (let ((_%exprs149311%_
                                                     _%tl149288149308%_))
                                                (_%K149286149303%_
                                                 _%exprs149311%_))
                                              (_%else149284149298%_)))
                                        (_%else149284149298%_))))))
                          (if (pair? _%code149242149268%_)
                              (let ((_%hd149247149316%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code149242149268%_)))
                                    (_%tl149248149318%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code149242149268%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd149247149316%_ 'let))
                                    (if (pair? _%tl149248149318%_)
                                        (let ((_%hd149249149321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl149248149318%_)))
                                              (_%tl149250149323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl149248149318%_))))
                                          (if (pair? _%hd149249149321%_)
                                              (let ((_%hd149261149326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd149249149321%_)))
                                                    (_%tl149262149328%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd149249149321%_))))
                                                (if (pair? _%hd149261149326%_)
                                                    (let ((_%hd149263149331%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd149261149326%_)))
                                                          (_%tl149264149333%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd149261149326%_))))
                                                      (let ((_%id149336%_
                                                             _%hd149263149331%_))
                                                        (if (pair? _%tl149264149333%_)
                                                            (let ((_%hd149265149338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl149264149333%_)))
                          (_%tl149266149340%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl149264149333%_))))
                      (let ((_%expr1149343%_ _%hd149265149338%_))
                        (if (null? _%tl149266149340%_)
                            (if (null? _%tl149262149328%_)
                                (if (pair? _%tl149250149323%_)
                                    (let ((_%hd149251149345%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl149250149323%_)))
                                          (_%tl149252149347%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl149250149323%_))))
                                      (if (pair? _%hd149251149345%_)
                                          (let ((_%hd149253149350%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd149251149345%_)))
                                                (_%tl149254149352%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd149251149345%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd149253149350%_
                                                         'if))
                                                (if (pair? _%tl149254149352%_)
                                                    (let ((_%hd149255149355%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl149254149352%_)))
                                                          (_%tl149256149357%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl149254149352%_))))
                                                      (if ((lambda (_%g149359149361%_)
                                                             (eq? _%g149359149361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id149336%_))
                   _%hd149255149355%_)
                  (if (pair? _%tl149256149357%_)
                      (let ((_%hd149257149364%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl149256149357%_)))
                            (_%tl149258149366%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl149256149357%_))))
                        (if ((lambda (_%g149368149370%_)
                               (eq? _%g149368149370%_ _%id149336%_))
                             _%hd149257149364%_)
                            (if (pair? _%tl149258149366%_)
                                (let ((_%hd149259149373%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl149258149366%_)))
                                      (_%tl149260149375%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl149258149366%_))))
                                  (let ((_%expr2149378%_ _%hd149259149373%_))
                                    (if (null? _%tl149260149375%_)
                                        (if (null? _%tl149252149347%_)
                                            (_%K149246149313%_
                                             _%expr2149378%_
                                             _%expr1149343%_
                                             _%id149336%_)
                                            (_%else149244149276%_))
                                        (_%else149244149276%_))))
                                (_%else149244149276%_))
                            (_%else149244149276%_)))
                      (_%else149244149276%_))
                  (_%else149244149276%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else149244149276%_))
                                                (_%else149244149276%_)))
                                          (_%else149244149276%_)))
                                    (_%else149244149276%_))
                                (_%else149244149276%_))
                            (_%else149244149276%_))))
                    (_%else149244149276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else149244149276%_)))
                                              (_%else149244149276%_)))
                                        (_%else149244149276%_))
                                    (_%else149244149276%_)))
                              (_%else149244149276%_)))
                        _%code149241%_)))
                 (_%simplify-let148638%_
                  (lambda (_%code148940%_)
                    (let* ((_%code148941149013%_ _%code148940%_)
                           (_%else148946149021%_ (lambda () _%code148940%_)))
                      (let ((_%K149005149221%_
                             (lambda (_%expr149219%_) _%expr149219%_))
                            (_%K148988149167%_
                             (lambda (_%body149163%_
                                      _%expr149164%_
                                      _%id149165%_)
                               (cons 'let
                                     (cons (cons (cons _%id149165%_
                                                       (cons _%expr149164%_
                                                             '()))
                                                 '())
                                           _%body149163%_))))
                            (_%K148965149091%_
                             (lambda (_%body149085%_
                                      _%expr2149086%_
                                      _%id2149087%_
                                      _%expr1149088%_
                                      _%id1149089%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1149089%_
                                                       (cons _%expr1149088%_
                                                             '()))
                                                 (cons (cons _%id2149087%_
                                                             (cons _%expr2149086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body149085%_))))
                            (_%K148948149030%_
                             (lambda (_%body149025%_
                                      _%bind149026%_
                                      _%expr1149027%_
                                      _%id1149028%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1149028%_
                                                       (cons _%expr1149027%_
                                                             '()))
                                                 _%bind149026%_)
                                           _%body149025%_)))))
                        (if (pair? _%code148941149013%_)
                            (let ((_%tl149007149226%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code148941149013%_)))
                                  (_%hd149006149224%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code148941149013%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd149006149224%_ 'let))
                                  (if (pair? _%tl149007149226%_)
                                      (let ((_%tl149009149231%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl149007149226%_)))
                                            (_%hd149008149229%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl149007149226%_))))
                                        (if (null? _%hd149008149229%_)
                                            (if (pair? _%tl149009149231%_)
                                                (let ((_%tl149011149236%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl149009149231%_)))
                                                      (_%hd149010149234%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl149009149231%_))))
                                                  (if (null? _%tl149011149236%_)
                                                      (let ((_%expr149239%_
                                                             _%hd149010149234%_))
                                                        (_%K149005149221%_
                                                         _%expr149239%_))
                                                      (_%else148946149021%_)))
                                                (_%else148946149021%_))
                                            (if (pair? _%hd149008149229%_)
                                                (let ((_%tl149000149182%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd149008149229%_)))
                                                      (_%hd148999149180%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd149008149229%_))))
                                                  (if (pair? _%hd148999149180%_)
                                                      (let ((_%tl149002149187%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd148999149180%_)))
                    (_%hd149001149185%_
                     (let () (declare (not safe)) (##car _%hd148999149180%_))))
                (if (pair? _%tl149002149187%_)
                    (let ((_%tl149004149194%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl149002149187%_)))
                          (_%hd149003149192%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl149002149187%_))))
                      (if (null? _%tl149004149194%_)
                          (if (null? _%tl149000149182%_)
                              (if (pair? _%tl149009149231%_)
                                  (let ((_%tl148994149201%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl149009149231%_)))
                                        (_%hd148993149199%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl149009149231%_))))
                                    (if (pair? _%hd148993149199%_)
                                        (let ((_%tl148996149206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd148993149199%_)))
                                              (_%hd148995149204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd148993149199%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd148995149204%_
                                                       'let))
                                              (if (pair? _%tl148996149206%_)
                                                  (let ((_%tl148998149211%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl148996149206%_)))
                                                        (_%hd148997149209%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl148996149206%_))))
                                                    (if (null? _%hd148997149209%_)
                                                        (if (null? _%tl148994149201%_)
                                                            (let ((_%id149190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd149001149185%_)
                          (_%expr149197%_ _%hd149003149192%_)
                          (_%body149214%_ _%tl148998149211%_))
                      (_%K148988149167%_
                       _%body149214%_
                       _%expr149197%_
                       _%id149190%_))
                    (_%else148946149021%_))
                (if (pair? _%hd148997149209%_)
                    (let ((_%tl148977149140%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd148997149209%_)))
                          (_%hd148976149138%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd148997149209%_))))
                      (if (pair? _%hd148976149138%_)
                          (let ((_%tl148979149145%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd148976149138%_)))
                                (_%hd148978149143%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd148976149138%_))))
                            (if (pair? _%tl148979149145%_)
                                (let ((_%tl148981149152%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl148979149145%_)))
                                      (_%hd148980149150%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl148979149145%_))))
                                  (if (null? _%tl148981149152%_)
                                      (if (null? _%tl148977149140%_)
                                          (if (null? _%tl148994149201%_)
                                              (let ((_%id1149114%_
                                                     _%hd149001149185%_)
                                                    (_%expr1149121%_
                                                     _%hd149003149192%_)
                                                    (_%id2149148%_
                                                     _%hd148978149143%_)
                                                    (_%expr2149155%_
                                                     _%hd148980149150%_)
                                                    (_%body149157%_
                                                     _%tl148998149211%_))
                                                (_%K148965149091%_
                                                 _%body149157%_
                                                 _%expr2149155%_
                                                 _%id2149148%_
                                                 _%expr1149121%_
                                                 _%id1149114%_))
                                              (_%else148946149021%_))
                                          (_%else148946149021%_))
                                      (_%else148946149021%_)))
                                (_%else148946149021%_)))
                          (_%else148946149021%_)))
                    (_%else148946149021%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else148946149021%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd148995149204%_
                                                           'let*))
                                                  (if (pair? _%tl148996149206%_)
                                                      (let ((_%tl148958149074%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl148996149206%_)))
                    (_%hd148957149072%_
                     (let () (declare (not safe)) (##car _%tl148996149206%_))))
                (if (null? _%tl148994149201%_)
                    (let ((_%id1149053%_ _%hd149001149185%_)
                          (_%expr1149060%_ _%hd149003149192%_)
                          (_%bind149077%_ _%hd148957149072%_)
                          (_%body149079%_ _%tl148958149074%_))
                      (_%K148948149030%_
                       _%body149079%_
                       _%bind149077%_
                       _%expr1149060%_
                       _%id1149053%_))
                    (_%else148946149021%_)))
              (_%else148946149021%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else148946149021%_))))
                                        (_%else148946149021%_)))
                                  (_%else148946149021%_))
                              (_%else148946149021%_))
                          (_%else148946149021%_)))
                    (_%else148946149021%_)))
              (_%else148946149021%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else148946149021%_))))
                                      (_%else148946149021%_))
                                  (_%else148946149021%_)))
                            (_%else148946149021%_))))))
                 (_%generate-values148639%_
                  (lambda (_%hd148753%_ _%body148754%_)
                    (let _%lp148756%_ ((_%rest148758%_ _%hd148753%_)
                                       (_%bind148759%_ '())
                                       (_%check148760%_ '())
                                       (_%post148761%_ '()))
                      (let* ((_%__stx152884152885%_ _%rest148758%_)
                             (_%g148764148775%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx152884152885%_)))))
                        (let ((_%__kont152886152887%_
                               (lambda (_%L148802%_ _%L148803%_)
                                 (let* ((_%__stx152840152841%_ _%L148803%_)
                                        (_%g148818148843%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx152840152841%_)))))
                                   (let ((_%__kont152842152843%_
                                          (lambda (_%L148916%_ _%L148917%_)
                                            (let ((_%eid148931%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L148917%_)))
                                                  (_%expr148932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self148632%_
                                                      _%L148916%_))))
                                              (_%lp148756%_
                                               _%L148802%_
                                               (cons (cons _%eid148931%_
                                                           (cons _%expr148932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind148759%_)
                                               _%check148760%_
                                               _%post148761%_))))
                                         (_%__kont152844152845%_
                                          (lambda (_%L148864%_ _%L148865%_)
                                            (let* ((_%vals148878%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values148880%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals148878%_
                                                     _%L148865%_
                                                     _%L148864%_))
                                                   (_%refs148882%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals148878%_
                                                     _%L148865%_))
                                                   (_%expr148884%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self148632%_
                                                       _%L148864%_))))
                                              (_%lp148756%_
                                               _%L148802%_
                                               (cons (cons _%vals148878%_
                                                           (cons _%expr148884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind148759%_)
                                               (cons _%check-values148880%_
                                                     _%check148760%_)
                                               (cons _%refs148882%_
                                                     _%post148761%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx152840152841%_))
                                         (let ((_%e148822148892%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx152840152841%_))))
                                           (let ((_%tl148824148897%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e148822148892%_)))
                                                 (_%hd148823148895%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e148822148892%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd148823148895%_))
                                                 (let ((_%e148825148900%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd148823148895%_))))
                                                   (let ((_%tl148827148905%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e148825148900%_)))
                                                         (_%hd148826148903%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e148825148900%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl148827148905%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl148824148897%_))
                     (let ((_%e148828148908%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl148824148897%_))))
                       (let ((_%tl148830148913%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e148828148908%_)))
                             (_%hd148829148911%_
                              (let ()
                                (declare (not safe))
                                (##car _%e148828148908%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl148830148913%_))
                             (_%__kont152842152843%_
                              _%hd148829148911%_
                              _%hd148826148903%_)
                             (let ()
                               (declare (not safe))
                               (_%g148818148843%_)))))
                     (let () (declare (not safe)) (_%g148818148843%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl148824148897%_))
                     (let ((_%e148836148856%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl148824148897%_))))
                       (let ((_%tl148838148861%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e148836148856%_)))
                             (_%hd148837148859%_
                              (let ()
                                (declare (not safe))
                                (##car _%e148836148856%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl148838148861%_))
                             (_%__kont152844152845%_
                              _%hd148837148859%_
                              _%hd148823148895%_)
                             (let ()
                               (declare (not safe))
                               (_%g148818148843%_)))))
                     (let () (declare (not safe)) (_%g148818148843%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl148824148897%_))
                                                     (let ((_%e148836148856%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl148824148897%_))))
                                                       (let ((_%tl148838148861%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e148836148856%_)))
                     (_%hd148837148859%_
                      (let () (declare (not safe)) (##car _%e148836148856%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl148838148861%_))
                     (_%__kont152844152845%_
                      _%hd148837148859%_
                      _%hd148823148895%_)
                     (let () (declare (not safe)) (_%g148818148843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g148818148843%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g148818148843%_)))))))
                              (_%__kont152888152889%_
                               (lambda ()
                                 (let* ((_%body148782%_
                                         (if _%compiled-body?148634%_
                                             _%body148754%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self148632%_
                                                _%body148754%_))))
                                        (_%body148784%_
                                         (_%generate-values-post148640%_
                                          _%post148761%_
                                          _%body148782%_))
                                        (_%body148786%_
                                         (_%generate-values-check148641%_
                                          _%check148760%_
                                          _%body148784%_)))
                                   (cons 'let
                                         (cons (reverse _%bind148759%_)
                                               (cons _%body148786%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx152884152885%_))
                              (let ((_%e148768148794%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx152884152885%_))))
                                (let ((_%tl148770148799%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148768148794%_)))
                                      (_%hd148769148797%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148768148794%_))))
                                  (_%__kont152886152887%_
                                   _%tl148770148799%_
                                   _%hd148769148797%_)))
                              (_%__kont152888152889%_)))))))
                 (_%generate-values-post148640%_
                  (lambda (_%post148712%_ _%body148713%_)
                    (let _%lp148715%_ ((_%rest148717%_ _%post148712%_)
                                       (_%body148718%_ _%body148713%_))
                      (let* ((_%rest148719148727%_ _%rest148717%_)
                             (_%else148721148735%_ (lambda () _%body148718%_))
                             (_%K148723148741%_
                              (lambda (_%rest148738%_ _%bind148739%_)
                                (_%lp148715%_
                                 _%rest148738%_
                                 (cons 'let
                                       (cons _%bind148739%_
                                             (cons _%body148718%_ '())))))))
                        (if (pair? _%rest148719148727%_)
                            (let ((_%hd148724148744%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest148719148727%_)))
                                  (_%tl148725148746%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest148719148727%_))))
                              (let* ((_%bind148749%_ _%hd148724148744%_)
                                     (_%rest148751%_ _%tl148725148746%_))
                                (_%K148723148741%_
                                 _%rest148751%_
                                 _%bind148749%_)))
                            (_%else148721148735%_))))))
                 (_%generate-values-check148641%_
                  (lambda (_%check148709%_ _%body148710%_)
                    (cons 'begin
                          (let ((__tmp153732 (cons _%body148710%_ '()))
                                (__tmp153731 (reverse _%check148709%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp153732 __tmp153731))))))
          (let* ((_%g148643148660%_
                  (lambda (_%g148644148657%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148644148657%_))))
                 (_%g148642148706%_
                  (lambda (_%g148644148663%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148644148663%_))
                        (let ((_%e148647148665%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148644148663%_))))
                          (let ((_%hd148648148668%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148647148665%_)))
                                (_%tl148649148670%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148647148665%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl148649148670%_))
                                (let ((_%e148650148673%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl148649148670%_))))
                                  (let ((_%hd148651148676%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148650148673%_)))
                                        (_%tl148652148678%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148650148673%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148652148678%_))
                                        (let ((_%e148653148681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148652148678%_))))
                                          (let ((_%hd148654148684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148653148681%_)))
                                                (_%tl148655148686%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148653148681%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148655148686%_))
                                                ((lambda (_%L148689%_
                                                          _%L148690%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L148690%_)
                                                       (_%generate-simple148636%_
                                                        _%L148690%_
                                                        _%L148689%_)
                                                       (_%generate-values148639%_
                                                        _%L148690%_
                                                        _%L148689%_)))
                                                 _%hd148654148684%_
                                                 _%hd148651148676%_)
                                                (_%g148643148660%_
                                                 _%g148644148663%_))))
                                        (_%g148643148660%_
                                         _%g148644148663%_))))
                                (_%g148643148660%_ _%g148644148663%_))))
                        (_%g148643148660%_ _%g148644148663%_)))))
            (_%g148642148706%_ _%stx148633%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self149386%_ _%stx149387%_)
        (let ((_%compiled-body?149389%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self149386%_
           _%stx149387%_
           _%compiled-body?149389%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g153733_
        (let ((_g153734_ (let () (declare (not safe)) (##length _g153733_))))
          (cond ((let () (declare (not safe)) (##fx= _g153734_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g153733_))
                ((let () (declare (not safe)) (##fx= _g153734_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g153733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g153733_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals148526%_ _%hd148527%_)
        (let _%lp148529%_ ((_%rest148531%_ _%hd148527%_)
                           (_%k148532%_ '0)
                           (_%r148533%_ '()))
          (let* ((_%__stx152898152899%_ _%rest148531%_)
                 (_%g148538148555%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx152898152899%_)))))
            (let ((_%__kont152900152901%_
                   (lambda (_%L148618%_)
                     (_%lp148529%_
                      _%L148618%_
                      (let () (declare (not safe)) (##fx+ _%k148532%_ '1))
                      _%r148533%_)))
                  (_%__kont152902152903%_
                   (lambda (_%L148591%_ _%L148592%_)
                     (_%lp148529%_
                      _%L148591%_
                      (let () (declare (not safe)) (##fx+ _%k148532%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L148592%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals148526%_
                                         _%k148532%_
                                         _%L148591%_)
                                        '()))
                            _%r148533%_))))
                  (_%__kont152904152905%_
                   (lambda (_%L148567%_)
                     (let ((__tmp153735
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L148567%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals148526%_
                                               _%k148532%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp153735 _%r148533%_))))
                  (_%__kont152906152907%_ (lambda () (reverse _%r148533%_))))
              (let ((_%g148536148578%_
                     (lambda ()
                       (let ((_%L148567%_ _%__stx152898152899%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L148567%_))
                             (_%__kont152904152905%_ _%L148567%_)
                             (_%__kont152906152907%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx152898152899%_))
                    (let ((_%e148541148607%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx152898152899%_))))
                      (let ((_%tl148543148612%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e148541148607%_)))
                            (_%hd148542148610%_
                             (let ()
                               (declare (not safe))
                               (##car _%e148541148607%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd148542148610%_))
                            (let ((_%e148544148615%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd148542148610%_))))
                              (if (equal? _%e148544148615%_ '#f)
                                  (_%__kont152900152901%_ _%tl148543148612%_)
                                  (_%__kont152902152903%_
                                   _%tl148543148612%_
                                   _%hd148542148610%_)))
                            (_%__kont152902152903%_
                             _%tl148543148612%_
                             _%hd148542148610%_))))
                    (let () (declare (not safe)) (_%g148536148578%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self148205%_ _%stx148206%_ _%compiled-body?148207%_)
        (letrec ((_%generate-simple148209%_
                  (lambda (_%hd148511%_ _%body148512%_)
                    (gxc#generate-runtime-simple-let
                     _%self148205%_
                     'letrec
                     _%hd148511%_
                     _%body148512%_
                     _%compiled-body?148207%_)))
                 (_%generate-values148210%_
                  (lambda (_%hd148290%_ _%body148291%_)
                    (let _%lp148293%_ ((_%rest148295%_ _%hd148290%_)
                                       (_%bind148296%_ '())
                                       (_%check148297%_ '())
                                       (_%post148298%_ '()))
                      (let* ((_%__stx152972152973%_ _%rest148295%_)
                             (_%g148301148312%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx152972152973%_)))))
                        (let ((_%__kont152974152975%_
                               (lambda (_%L148339%_ _%L148340%_)
                                 (let* ((_%__stx152928152929%_ _%L148340%_)
                                        (_%g148355148380%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx152928152929%_)))))
                                   (let ((_%__kont152930152931%_
                                          (lambda (_%L148487%_ _%L148488%_)
                                            (let ((_%eid148502%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L148488%_)))
                                                  (_%expr148503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self148205%_
                                                      _%L148487%_))))
                                              (_%lp148293%_
                                               _%L148339%_
                                               (cons (cons _%eid148502%_
                                                           (cons _%expr148503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind148296%_)
                                               _%check148297%_
                                               _%post148298%_))))
                                         (_%__kont152932152933%_
                                          (lambda (_%L148401%_ _%L148402%_)
                                            (let* ((_%vals148415%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values148417%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals148415%_
                                                     _%L148402%_
                                                     _%L148401%_))
                                                   (_%refs148419%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals148415%_
                                                     _%L148402%_))
                                                   (_%expr148421%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self148205%_
                                                       _%L148401%_))))
                                              (_%lp148293%_
                                               _%L148339%_
                                               (let ((__tmp153737
                                                      (cons (cons _%vals148415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr148421%_ '()))
                    _%bind148296%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153736
                                                      (map (lambda (_%e148423148425%_)
                                                             (let* ((_%g148427148436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e148423148425%_)
                            (_%E148429148440%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g148427148436%_
                                        '([eid _])))
                               '#!void))
                            (_%K148430148445%_
                             (lambda (_%eid148443%_)
                               (cons _%eid148443%_ (cons '#!void '())))))
                       (if (pair? _%g148427148436%_)
                           (let ((_%hd148431148448%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g148427148436%_)))
                                 (_%tl148432148450%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g148427148436%_))))
                             (let ((_%eid148453%_ _%hd148431148448%_))
                               (if (pair? _%tl148432148450%_)
                                   (let ((_%tl148434148455%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl148432148450%_))))
                                     (if (null? _%tl148434148455%_)
                                         (_%K148430148445%_ _%eid148453%_)
                                         (_%E148429148440%_)))
                                   (_%E148429148440%_))))
                           (_%E148429148440%_))))
                   _%refs148419%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp153737
                                                  __tmp153736))
                                               (cons _%check-values148417%_
                                                     _%check148297%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs148419%_
                                                  _%post148298%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx152928152929%_))
                                         (let ((_%e148359148463%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx152928152929%_))))
                                           (let ((_%tl148361148468%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e148359148463%_)))
                                                 (_%hd148360148466%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e148359148463%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd148360148466%_))
                                                 (let ((_%e148362148471%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd148360148466%_))))
                                                   (let ((_%tl148364148476%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e148362148471%_)))
                                                         (_%hd148363148474%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e148362148471%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl148364148476%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl148361148468%_))
                     (let ((_%e148365148479%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl148361148468%_))))
                       (let ((_%tl148367148484%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e148365148479%_)))
                             (_%hd148366148482%_
                              (let ()
                                (declare (not safe))
                                (##car _%e148365148479%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl148367148484%_))
                             (_%__kont152930152931%_
                              _%hd148366148482%_
                              _%hd148363148474%_)
                             (let ()
                               (declare (not safe))
                               (_%g148355148380%_)))))
                     (let () (declare (not safe)) (_%g148355148380%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl148361148468%_))
                     (let ((_%e148373148393%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl148361148468%_))))
                       (let ((_%tl148375148398%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e148373148393%_)))
                             (_%hd148374148396%_
                              (let ()
                                (declare (not safe))
                                (##car _%e148373148393%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl148375148398%_))
                             (_%__kont152932152933%_
                              _%hd148374148396%_
                              _%hd148360148466%_)
                             (let ()
                               (declare (not safe))
                               (_%g148355148380%_)))))
                     (let () (declare (not safe)) (_%g148355148380%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl148361148468%_))
                                                     (let ((_%e148373148393%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl148361148468%_))))
                                                       (let ((_%tl148375148398%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e148373148393%_)))
                     (_%hd148374148396%_
                      (let () (declare (not safe)) (##car _%e148373148393%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl148375148398%_))
                     (_%__kont152932152933%_
                      _%hd148374148396%_
                      _%hd148360148466%_)
                     (let () (declare (not safe)) (_%g148355148380%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g148355148380%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g148355148380%_)))))))
                              (_%__kont152976152977%_
                               (lambda ()
                                 (let* ((_%body148319%_
                                         (if _%compiled-body?148207%_
                                             _%body148291%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self148205%_
                                                _%body148291%_))))
                                        (_%body148321%_
                                         (_%generate-values-post148212%_
                                          _%post148298%_
                                          _%body148319%_))
                                        (_%body148323%_
                                         (_%generate-values-check148211%_
                                          _%check148297%_
                                          _%body148321%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind148296%_)
                                               (cons _%body148323%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx152972152973%_))
                              (let ((_%e148305148331%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx152972152973%_))))
                                (let ((_%tl148307148336%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148305148331%_)))
                                      (_%hd148306148334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148305148331%_))))
                                  (_%__kont152974152975%_
                                   _%tl148307148336%_
                                   _%hd148306148334%_)))
                              (_%__kont152976152977%_)))))))
                 (_%generate-values-check148211%_
                  (lambda (_%check148287%_ _%body148288%_)
                    (cons 'begin
                          (let ((__tmp153739 (cons _%body148288%_ '()))
                                (__tmp153738 (reverse _%check148287%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp153739 __tmp153738)))))
                 (_%generate-values-post148212%_
                  (lambda (_%post148280%_ _%body148281%_)
                    (cons 'begin
                          (let ((__tmp153743 (cons _%body148281%_ '()))
                                (__tmp153740
                                 (let ((__tmp153742
                                        (lambda (_%g148282148284%_)
                                          (cons 'set! _%g148282148284%_)))
                                       (__tmp153741 (reverse _%post148280%_)))
                                   (declare (not safe))
                                   (##map __tmp153742 __tmp153741))))
                            (declare (not safe))
                            (__foldr1 cons __tmp153743 __tmp153740))))))
          (let* ((_%g148214148231%_
                  (lambda (_%g148215148228%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148215148228%_))))
                 (_%g148213148277%_
                  (lambda (_%g148215148234%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148215148234%_))
                        (let ((_%e148218148236%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148215148234%_))))
                          (let ((_%hd148219148239%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148218148236%_)))
                                (_%tl148220148241%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148218148236%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl148220148241%_))
                                (let ((_%e148221148244%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl148220148241%_))))
                                  (let ((_%hd148222148247%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148221148244%_)))
                                        (_%tl148223148249%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148221148244%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148223148249%_))
                                        (let ((_%e148224148252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148223148249%_))))
                                          (let ((_%hd148225148255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148224148252%_)))
                                                (_%tl148226148257%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148224148252%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148226148257%_))
                                                ((lambda (_%L148260%_
                                                          _%L148261%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L148261%_)
                                                       (_%generate-simple148209%_
                                                        _%L148261%_
                                                        _%L148260%_)
                                                       (_%generate-values148210%_
                                                        _%L148261%_
                                                        _%L148260%_)))
                                                 _%hd148225148255%_
                                                 _%hd148222148247%_)
                                                (_%g148214148231%_
                                                 _%g148215148234%_))))
                                        (_%g148214148231%_
                                         _%g148215148234%_))))
                                (_%g148214148231%_ _%g148215148234%_))))
                        (_%g148214148231%_ _%g148215148234%_)))))
            (_%g148213148277%_ _%stx148206%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self148517%_ _%stx148518%_)
        (let ((_%compiled-body?148520%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self148517%_
           _%stx148518%_
           _%compiled-body?148520%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g153744_
        (let ((_g153745_ (let () (declare (not safe)) (##length _g153744_))))
          (cond ((let () (declare (not safe)) (##fx= _g153745_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g153744_))
                ((let () (declare (not safe)) (##fx= _g153745_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g153744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g153744_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self147786%_ _%stx147787%_)
        (letrec ((_%generate-values147789%_
                  (lambda (_%hd148032%_ _%body148033%_)
                    (let _%lp148035%_ ((_%rest148037%_ _%hd148032%_)
                                       (_%bind148038%_ '()))
                      (let* ((_%rest148039148047%_ _%rest148037%_)
                             (_%else148041148058%_
                              (lambda ()
                                (let ((_%bind148055%_ (reverse _%bind148038%_))
                                      (_%body148056%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self147786%_
                                          _%body148033%_))))
                                  (cons 'letrec*
                                        (cons _%bind148055%_
                                              (cons _%body148056%_ '()))))))
                             (_%K148043148192%_
                              (lambda (_%rest148061%_ _%hd-bind148062%_)
                                (let* ((_%__stx152986152987%_
                                        _%hd-bind148062%_)
                                       (_%g148065148090%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx152986152987%_)))))
                                  (let ((_%__kont152988152989%_
                                         (lambda (_%L148171%_ _%L148172%_)
                                           (let ((_%eid148186%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L148172%_)))
                                                 (_%expr148187%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self147786%_
                                                     _%L148171%_))))
                                             (_%lp148035%_
                                              _%rest148061%_
                                              (cons (cons _%eid148186%_
                                                          (cons _%expr148187%_
                                                                '()))
                                                    _%bind148038%_)))))
                                        (_%__kont152990152991%_
                                         (lambda (_%L148111%_ _%L148112%_)
                                           (let* ((_%vals148131%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp148133%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values148135%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp148133%_
                                                    _%L148112%_
                                                    _%L148111%_))
                                                  (_%refs148137%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals148131%_
                                                    _%L148112%_))
                                                  (_%expr148139%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self147786%_
                                                      _%L148111%_))))
                                             (_%lp148035%_
                                              _%rest148061%_
                                              (let ((__tmp153746
                                                     (cons (cons _%vals148131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp148133%_
                                                       (cons _%expr148139%_
                                                             '()))
                                                 '())
                                           (cons _%check-values148135%_
                                                 (cons _%tmp148133%_ '()))))
                               '()))
                   _%bind148038%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp153746
                                                 _%refs148137%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx152986152987%_))
                                        (let ((_%e148069148147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx152986152987%_))))
                                          (let ((_%tl148071148152%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148069148147%_)))
                                                (_%hd148070148150%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148069148147%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd148070148150%_))
                                                (let ((_%e148072148155%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd148070148150%_))))
                                                  (let ((_%tl148074148160%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e148072148155%_)))
                                                        (_%hd148073148158%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e148072148155%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl148074148160%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl148071148152%_))
                                                            (let ((_%e148075148163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl148071148152%_))))
                      (let ((_%tl148077148168%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e148075148163%_)))
                            (_%hd148076148166%_
                             (let ()
                               (declare (not safe))
                               (##car _%e148075148163%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl148077148168%_))
                            (_%__kont152988152989%_
                             _%hd148076148166%_
                             _%hd148073148158%_)
                            (let ()
                              (declare (not safe))
                              (_%g148065148090%_)))))
                    (let () (declare (not safe)) (_%g148065148090%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl148071148152%_))
                    (let ((_%e148083148103%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl148071148152%_))))
                      (let ((_%tl148085148108%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e148083148103%_)))
                            (_%hd148084148106%_
                             (let ()
                               (declare (not safe))
                               (##car _%e148083148103%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl148085148108%_))
                            (_%__kont152990152991%_
                             _%hd148084148106%_
                             _%hd148070148150%_)
                            (let ()
                              (declare (not safe))
                              (_%g148065148090%_)))))
                    (let () (declare (not safe)) (_%g148065148090%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl148071148152%_))
                                                    (let ((_%e148083148103%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl148071148152%_))))
                                                      (let ((_%tl148085148108%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e148083148103%_)))
                    (_%hd148084148106%_
                     (let () (declare (not safe)) (##car _%e148083148103%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl148085148108%_))
                    (_%__kont152990152991%_
                     _%hd148084148106%_
                     _%hd148070148150%_)
                    (let () (declare (not safe)) (_%g148065148090%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g148065148090%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g148065148090%_))))))))
                        (if (pair? _%rest148039148047%_)
                            (let ((_%hd148044148195%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest148039148047%_)))
                                  (_%tl148045148197%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest148039148047%_))))
                              (let* ((_%hd-bind148200%_ _%hd148044148195%_)
                                     (_%rest148202%_ _%tl148045148197%_))
                                (_%K148043148192%_
                                 _%rest148202%_
                                 _%hd-bind148200%_)))
                            (_%else148041148058%_))))))
                 (_%generate-letrec?147790%_
                  (lambda (_%hd147922%_)
                    (let _%lp147924%_ ((_%rest147926%_ _%hd147922%_))
                      (let* ((_%rest147927147935%_ _%rest147926%_)
                             (_%else147929147943%_ (lambda () '#t))
                             (_%K147931148020%_
                              (lambda (_%rest147946%_ _%hd-bind147947%_)
                                (let* ((_%g147949147966%_
                                        (lambda (_%g147950147963%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g147950147963%_))))
                                       (_%g147948148017%_
                                        (lambda (_%g147950147969%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g147950147969%_))
                                              (let ((_%e147953147971%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g147950147969%_))))
                                                (let ((_%hd147954147974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e147953147971%_)))
                                                      (_%tl147955147976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e147953147971%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd147954147974%_))
                                                      (let ((_%e147956147979%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd147954147974%_))))
                (let ((_%hd147957147982%_
                       (let () (declare (not safe)) (##car _%e147956147979%_)))
                      (_%tl147958147984%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e147956147979%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl147958147984%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl147955147976%_))
                          (let ((_%e147959147987%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl147955147976%_))))
                            (let ((_%hd147960147990%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e147959147987%_)))
                                  (_%tl147961147992%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e147959147987%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl147961147992%_))
                                  ((lambda (_%L147995%_ _%L147996%_)
                                     (if (_%is-lambda-expr?147791%_
                                          _%L147995%_)
                                         (_%lp147924%_ _%rest147946%_)
                                         '#f))
                                   _%hd147960147990%_
                                   _%hd147957147982%_)
                                  (_%g147949147966%_ _%g147950147969%_))))
                          (_%g147949147966%_ _%g147950147969%_))
                      (_%g147949147966%_ _%g147950147969%_))))
              (_%g147949147966%_ _%g147950147969%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g147949147966%_
                                               _%g147950147969%_)))))
                                  (_%g147948148017%_ _%hd-bind147947%_)))))
                        (if (pair? _%rest147927147935%_)
                            (let ((_%hd147932148023%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest147927147935%_)))
                                  (_%tl147933148025%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest147927147935%_))))
                              (let* ((_%hd-bind148028%_ _%hd147932148023%_)
                                     (_%rest148030%_ _%tl147933148025%_))
                                (_%K147931148020%_
                                 _%rest148030%_
                                 _%hd-bind148028%_)))
                            (_%else147929147943%_))))))
                 (_%is-lambda-expr?147791%_
                  (lambda (_%expr147859%_)
                    (let* ((_%__stx153030153031%_ _%expr147859%_)
                           (_%g147862147876%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx153030153031%_)))))
                      (let ((_%__kont153032153033%_
                             (lambda (_%L147904%_ _%L147905%_) '#t))
                            (_%__kont153034153035%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx153030153031%_))
                            (let ((_%e147866147888%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx153030153031%_))))
                              (let ((_%tl147868147893%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e147866147888%_)))
                                    (_%hd147867147891%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e147866147888%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd147867147891%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd147867147891%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl147868147893%_))
                                            (let ((_%e147869147896%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl147868147893%_))))
                                              (let ((_%tl147871147901%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e147869147896%_)))
                                                    (_%hd147870147899%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e147869147896%_))))
                                                (_%__kont153032153033%_
                                                 _%tl147871147901%_
                                                 _%hd147870147899%_)))
                                            (_%__kont153034153035%_))
                                        (_%__kont153034153035%_))
                                    (_%__kont153034153035%_))))
                            (_%__kont153034153035%_)))))))
          (let* ((_%g147793147810%_
                  (lambda (_%g147794147807%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g147794147807%_))))
                 (_%g147792147856%_
                  (lambda (_%g147794147813%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g147794147813%_))
                        (let ((_%e147797147815%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g147794147813%_))))
                          (let ((_%hd147798147818%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147797147815%_)))
                                (_%tl147799147820%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147797147815%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl147799147820%_))
                                (let ((_%e147800147823%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl147799147820%_))))
                                  (let ((_%hd147801147826%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147800147823%_)))
                                        (_%tl147802147828%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147800147823%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl147802147828%_))
                                        (let ((_%e147803147831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl147802147828%_))))
                                          (let ((_%hd147804147834%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e147803147831%_)))
                                                (_%tl147805147836%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e147803147831%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147805147836%_))
                                                ((lambda (_%L147839%_
                                                          _%L147840%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L147840%_)
                                                       (if (_%generate-letrec?147790%_
                                                            _%L147840%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self147786%_
                                                            'letrec
                                                            _%L147840%_
                                                            _%L147839%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self147786%_
                                                            'letrec*
                                                            _%L147840%_
                                                            _%L147839%_
                                                            '#f))
                                                       (_%generate-values147789%_
                                                        _%L147840%_
                                                        _%L147839%_)))
                                                 _%hd147804147834%_
                                                 _%hd147801147826%_)
                                                (_%g147793147810%_
                                                 _%g147794147813%_))))
                                        (_%g147793147810%_
                                         _%g147794147813%_))))
                                (_%g147793147810%_ _%g147794147813%_))))
                        (_%g147793147810%_ _%g147794147813%_)))))
            (_%g147792147856%_ _%stx147787%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd147723%_)
        (let _%lp147725%_ ((_%rest147727%_ _%hd147723%_))
          (let* ((_%rest147728147744%_ _%rest147727%_)
                 (_%else147731147752%_ (lambda () '#f)))
            (let ((_%K147734147765%_
                   (lambda (_%rest147763%_) (_%lp147725%_ _%rest147763%_)))
                  (_%K147733147757%_ (lambda () '#t)))
              (let ((_%try-match147730147760%_
                     (lambda ()
                       (if (null? _%rest147728147744%_)
                           (_%K147733147757%_)
                           (_%else147731147752%_)))))
                (if (pair? _%rest147728147744%_)
                    (let ((_%tl147736147770%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest147728147744%_)))
                          (_%hd147735147768%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest147728147744%_))))
                      (if (pair? _%hd147735147768%_)
                          (let ((_%tl147738147775%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd147735147768%_)))
                                (_%hd147737147773%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd147735147768%_))))
                            (if (pair? _%hd147737147773%_)
                                (let ((_%tl147742147778%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd147737147773%_))))
                                  (if (null? _%tl147742147778%_)
                                      (if (pair? _%tl147738147775%_)
                                          (let ((_%tl147740147781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl147738147775%_))))
                                            (if (null? _%tl147740147781%_)
                                                (let ((_%rest147784%_
                                                       _%tl147736147770%_))
                                                  (_%lp147725%_
                                                   _%rest147784%_))
                                                (_%else147731147752%_)))
                                          (_%else147731147752%_))
                                      (_%else147731147752%_)))
                                (_%else147731147752%_)))
                          (_%else147731147752%_)))
                    (_%try-match147730147760%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self147634%_
               _%form147635%_
               _%hd147636%_
               _%body147637%_
               _%compiled-body?147638%_)
        (letrec ((_%generate1147640%_
                  (lambda (_%bind147679%_)
                    (let* ((_%bind147680147691%_ _%bind147679%_)
                           (_%E147682147695%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind147680147691%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K147683147701%_
                            (lambda (_%expr147698%_ _%id147699%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id147699%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self147634%_
                                             _%expr147698%_))
                                          '())))))
                      (if (pair? _%bind147680147691%_)
                          (let ((_%hd147684147704%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind147680147691%_)))
                                (_%tl147685147706%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind147680147691%_))))
                            (if (pair? _%hd147684147704%_)
                                (let ((_%hd147688147709%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd147684147704%_)))
                                      (_%tl147689147711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd147684147704%_))))
                                  (let ((_%id147714%_ _%hd147688147709%_))
                                    (if (null? _%tl147689147711%_)
                                        (if (pair? _%tl147685147706%_)
                                            (let ((_%hd147686147716%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl147685147706%_)))
                                                  (_%tl147687147718%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl147685147706%_))))
                                              (let ((_%expr147721%_
                                                     _%hd147686147716%_))
                                                (if (null? _%tl147687147718%_)
                                                    (_%K147683147701%_
                                                     _%expr147721%_
                                                     _%id147714%_)
                                                    (_%E147682147695%_))))
                                            (_%E147682147695%_))
                                        (_%E147682147695%_))))
                                (_%E147682147695%_)))
                          (_%E147682147695%_))))))
          (let* ((_%bind147642%_ (map _%generate1147640%_ _%hd147636%_))
                 (_%body147644%_
                  (if _%compiled-body?147638%_
                      _%body147637%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self147634%_ _%body147637%_))))
                 (_%body147676%_
                  (let* ((_%body147645147653%_ _%body147644%_)
                         (_%else147647147661%_
                          (lambda () (cons _%body147644%_ '())))
                         (_%K147649147666%_
                          (lambda (_%exprs147664%_) _%exprs147664%_)))
                    (if (pair? _%body147645147653%_)
                        (let ((_%hd147650147669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body147645147653%_)))
                              (_%tl147651147671%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body147645147653%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd147650147669%_ 'begin))
                              (let ((_%exprs147674%_ _%tl147651147671%_))
                                (_%K147649147666%_ _%exprs147674%_))
                              (_%else147647147661%_)))
                        (_%else147647147661%_)))))
            (cons _%form147635%_ (cons _%bind147642%_ _%body147676%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self147534%_ _%stx147535%_)
        (letrec ((_%generate1147537%_
                  (lambda (_%datum147589%_)
                    (if (or (null? _%datum147589%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum147589%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum147589%_))
                            (eof-object? _%datum147589%_))
                        _%datum147589%_
                        (if (uninterned-symbol? _%datum147589%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum147589%_
                               '#t))
                            (if (pair? _%datum147589%_)
                                (cons (_%generate1147537%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum147589%_)))
                                      (_%generate1147537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum147589%_))))
                                (if (box? _%datum147589%_)
                                    (box (_%generate1147537%_
                                          (unbox _%datum147589%_)))
                                    (if (vector? _%datum147589%_)
                                        (vector-map
                                         _%generate1147537%_
                                         _%datum147589%_)
                                        (if (or (s8vector? _%datum147589%_)
                                                (u8vector? _%datum147589%_)
                                                (s16vector? _%datum147589%_)
                                                (u16vector? _%datum147589%_)
                                                (s32vector? _%datum147589%_)
                                                (u32vector? _%datum147589%_)
                                                (s64vector? _%datum147589%_)
                                                (u64vector? _%datum147589%_)
                                                (f32vector? _%datum147589%_)
                                                (f64vector? _%datum147589%_))
                                            _%datum147589%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx147535%_)))))))))))
          (let* ((_%g147539147552%_
                  (lambda (_%g147540147549%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g147540147549%_))))
                 (_%g147538147586%_
                  (lambda (_%g147540147555%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g147540147555%_))
                        (let ((_%e147542147557%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g147540147555%_))))
                          (let ((_%hd147543147560%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147542147557%_)))
                                (_%tl147544147562%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147542147557%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl147544147562%_))
                                (let ((_%e147545147565%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl147544147562%_))))
                                  (let ((_%hd147546147568%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147545147565%_)))
                                        (_%tl147547147570%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147545147565%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl147547147570%_))
                                        ((lambda (_%L147573%_)
                                           (cons 'quote
                                                 (cons (_%generate1147537%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L147573%_)))
                                                       '())))
                                         _%hd147546147568%_)
                                        (_%g147539147552%_
                                         _%g147540147555%_))))
                                (_%g147539147552%_ _%g147540147555%_))))
                        (_%g147539147552%_ _%g147540147555%_)))))
            (_%g147538147586%_ _%stx147535%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self146975%_ _%stx146976%_)
        (letrec ((_%compile-call146978%_
                  (lambda (_%rator147267%_ _%rands147268%_)
                    (let ((_%rator147274%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self146975%_
                              _%rator147267%_)))
                          (_%rands147275%_
                           (map (lambda (_%g147269147271%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self146975%_
                                     _%g147269147271%_)))
                                _%rands147268%_)))
                      (let* ((_%__stx153077153078%_ _%rator147274%_)
                             (_%g147278147330%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx153077153078%_)))))
                        (let ((_%__kont153079153080%_
                               (lambda (_%L147454%_
                                        _%L147455%_
                                        _%L147456%_
                                        _%L147457%_)
                                 (if (let ((__tmp153749
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands147275%_)))
                                           (__tmp153747
                                            (length (let ((__tmp153748
                                                           (lambda (_%g147493147496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g147494147498%_)
                     (cons _%g147493147496%_ _%g147494147498%_))))
              (declare (not safe))
              (__foldr1 __tmp153748 '() _%L147456%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp153749 __tmp153747))
                                     (let* ((_%id147501%_ _%L147457%_)
                                            (_%args147510%_
                                             (let ((__tmp153750
                                                    (lambda (_%g147502147505%_
                                                             _%g147503147507%_)
                                                      (cons _%g147502147505%_
                                                            _%g147503147507%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp153750
                                                '()
                                                _%L147456%_)))
                                            (_%body147519%_
                                             (let ((__tmp153751
                                                    (lambda (_%g147511147514%_
                                                             _%g147512147516%_)
                                                      (cons _%g147511147514%_
                                                            _%g147512147516%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp153751
                                                '()
                                                _%L147455%_)))
                                            (_%init147521%_
                                             (map list
                                                  _%args147510%_
                                                  _%rands147275%_)))
                                       (cons 'let
                                             (cons _%id147501%_
                                                   (cons _%init147521%_
                                                         _%body147519%_))))
                                     (let ((__tmp153752
                                            (let ((__tmp153753
                                                   (lambda (_%g147523147526%_
                                                            _%g147524147528%_)
                                                     (cons _%g147523147526%_
                                                           _%g147524147528%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp153753
                                               '()
                                               _%L147456%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx146976%_
                                        __tmp153752
                                        _%rands147275%_)))))
                              (_%__kont153085153086%_
                               (lambda ()
                                 (cons _%rator147274%_ _%rands147275%_))))
                          (let ((_%__match153144153145%_
                                 (lambda (_%e147284147342%_
                                          _%hd147285147345%_
                                          _%tl147286147347%_
                                          _%e147287147350%_
                                          _%hd147288147353%_
                                          _%tl147289147355%_
                                          _%e147290147358%_
                                          _%hd147291147361%_
                                          _%tl147292147363%_
                                          _%e147293147366%_
                                          _%hd147294147369%_
                                          _%tl147295147371%_
                                          _%e147296147374%_
                                          _%hd147297147377%_
                                          _%tl147298147379%_
                                          _%e147299147382%_
                                          _%hd147300147385%_
                                          _%tl147301147387%_
                                          _%e147302147390%_
                                          _%hd147303147393%_
                                          _%tl147304147395%_
                                          _%__splice153081153082%_
                                          _%target147305147398%_
                                          _%tl147307147400%_)
                                   (letrec ((_%loop147308147403%_
                                             (lambda (_%hd147306147406%_
                                                      _%arg147312147408%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd147306147406%_))
                                                   (let ((_%e147309147411%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd147306147406%_))))
                                                     (let ((_%lp-tl147311147416%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e147309147411%_)))
                                                           (_%lp-hd147310147414%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e147309147411%_))))
                                                       (_%loop147308147403%_
                                                        _%lp-tl147311147416%_
                                                        (cons _%lp-hd147310147414%_
                                                              _%arg147312147408%_))))
                                                   (let ((_%arg147313147419%_
                                                          (reverse _%arg147312147408%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl147304147395%_))
                                                         (let ((_%__splice153083153084%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl147304147395%_
                           '0))))
                   (let ((_%tl147316147424%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice153083153084%_ '1)))
                         (_%target147314147422%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice153083153084%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl147316147424%_))
                         (letrec ((_%loop147317147427%_
                                   (lambda (_%hd147315147430%_
                                            _%body147321147432%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd147315147430%_))
                                         (let ((_%e147318147435%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd147315147430%_))))
                                           (let ((_%lp-tl147320147440%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e147318147435%_)))
                                                 (_%lp-hd147319147438%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e147318147435%_))))
                                             (_%loop147317147427%_
                                              _%lp-tl147320147440%_
                                              (cons _%lp-hd147319147438%_
                                                    _%body147321147432%_))))
                                         (let ((_%body147322147443%_
                                                (reverse _%body147321147432%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl147298147379%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl147292147363%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl147289147355%_))
                                                       (let ((_%e147323147446%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl147289147355%_))))
                 (let ((_%tl147325147451%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e147323147446%_)))
                       (_%hd147324147449%_
                        (let ()
                          (declare (not safe))
                          (##car _%e147323147446%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl147325147451%_))
                       (let ((_%L147454%_ _%hd147324147449%_)
                             (_%L147455%_ _%body147322147443%_)
                             (_%L147456%_ _%arg147313147419%_)
                             (_%L147457%_ _%hd147294147369%_))
                         (if (eq? _%L147457%_ _%L147454%_)
                             (_%__kont153079153080%_
                              _%L147454%_
                              _%L147455%_
                              _%L147456%_
                              _%L147457%_)
                             (_%__kont153085153086%_)))
                       (_%__kont153085153086%_))))
               (_%__kont153085153086%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont153085153086%_))
                                               (_%__kont153085153086%_)))))))
                           (_%loop147317147427%_ _%target147314147422%_ '()))
                         (_%__kont153085153086%_))))
                 (_%__kont153085153086%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop147308147403%_
                                      _%target147305147398%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx153077153078%_))
                                (let ((_%e147284147342%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx153077153078%_))))
                                  (let ((_%tl147286147347%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147284147342%_)))
                                        (_%hd147285147345%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147284147342%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd147285147345%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd147285147345%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl147286147347%_))
                                                (let ((_%e147287147350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl147286147347%_))))
                                                  (let ((_%tl147289147355%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e147287147350%_)))
                                                        (_%hd147288147353%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e147287147350%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd147288147353%_))
                                                        (let ((_%e147290147358%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd147288147353%_))))
                  (let ((_%tl147292147363%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e147290147358%_)))
                        (_%hd147291147361%_
                         (let ()
                           (declare (not safe))
                           (##car _%e147290147358%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd147291147361%_))
                        (let ((_%e147293147366%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd147291147361%_))))
                          (let ((_%tl147295147371%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147293147366%_)))
                                (_%hd147294147369%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147293147366%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl147295147371%_))
                                (let ((_%e147296147374%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl147295147371%_))))
                                  (let ((_%tl147298147379%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147296147374%_)))
                                        (_%hd147297147377%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147296147374%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd147297147377%_))
                                        (let ((_%e147299147382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd147297147377%_))))
                                          (let ((_%tl147301147387%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e147299147382%_)))
                                                (_%hd147300147385%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e147299147382%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd147300147385%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd147300147385%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl147301147387%_))
                                                        (let ((_%e147302147390%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl147301147387%_))))
                  (let ((_%tl147304147395%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e147302147390%_)))
                        (_%hd147303147393%_
                         (let ()
                           (declare (not safe))
                           (##car _%e147302147390%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd147303147393%_))
                        (let ((_%__splice153081153082%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd147303147393%_
                                  '0))))
                          (let ((_%tl147307147400%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice153081153082%_ '1)))
                                (_%target147305147398%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice153081153082%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl147307147400%_))
                                (_%__match153144153145%_
                                 _%e147284147342%_
                                 _%hd147285147345%_
                                 _%tl147286147347%_
                                 _%e147287147350%_
                                 _%hd147288147353%_
                                 _%tl147289147355%_
                                 _%e147290147358%_
                                 _%hd147291147361%_
                                 _%tl147292147363%_
                                 _%e147293147366%_
                                 _%hd147294147369%_
                                 _%tl147295147371%_
                                 _%e147296147374%_
                                 _%hd147297147377%_
                                 _%tl147298147379%_
                                 _%e147299147382%_
                                 _%hd147300147385%_
                                 _%tl147301147387%_
                                 _%e147302147390%_
                                 _%hd147303147393%_
                                 _%tl147304147395%_
                                 _%__splice153081153082%_
                                 _%target147305147398%_
                                 _%tl147307147400%_)
                                (_%__kont153085153086%_))))
                        (_%__kont153085153086%_))))
                (_%__kont153085153086%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont153085153086%_))
                                                (_%__kont153085153086%_))))
                                        (_%__kont153085153086%_))))
                                (_%__kont153085153086%_))))
                        (_%__kont153085153086%_))))
                (_%__kont153085153086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont153085153086%_))
                                            (_%__kont153085153086%_))
                                        (_%__kont153085153086%_))))
                                (_%__kont153085153086%_)))))))))
          (let* ((_%g146980147003%_
                  (lambda (_%g146981147000%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g146981147000%_))))
                 (_%g146979147264%_
                  (lambda (_%g146981147006%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g146981147006%_))
                        (let ((_%e146984147008%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g146981147006%_))))
                          (let ((_%hd146985147011%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146984147008%_)))
                                (_%tl146986147013%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146984147008%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl146986147013%_))
                                (let ((_%e146987147016%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl146986147013%_))))
                                  (let ((_%hd146988147019%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e146987147016%_)))
                                        (_%tl146989147021%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e146987147016%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl146989147021%_))
                                        (let ((_g153754_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl146989147021%_
                                                  '0))))
                                          (begin
                                            (let ((_g153755_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g153754_)
                                                         (##values-length
                                                          _g153754_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g153755_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g153755_)))
                                            (let ((_%target146990147024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g153754_
                                                      0)))
                                                  (_%tl146992147026%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g153754_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl146992147026%_))
                                                  (letrec ((_%loop146993147029%_
                                                            (lambda (_%hd146991147032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand146997147034%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd146991147032%_))
                          (let ((_%e146994147037%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd146991147032%_))))
                            (let ((_%lp-hd146995147040%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146994147037%_)))
                                  (_%lp-tl146996147042%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146994147037%_))))
                              (_%loop146993147029%_
                               _%lp-tl146996147042%_
                               (cons _%lp-hd146995147040%_
                                     _%rand146997147034%_))))
                          (let ((_%rand146998147045%_
                                 (reverse _%rand146997147034%_)))
                            ((lambda (_%L147048%_ _%L147049%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call146978%_
                                    _%L147049%_
                                    (let ((__tmp153756
                                           (lambda (_%g147066147069%_
                                                    _%g147067147071%_)
                                             (cons _%g147066147069%_
                                                   _%g147067147071%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp153756 '() _%L147048%_)))
                                   (let* ((_%__stx153193153194%_ _%L147049%_)
                                          (_%g147075147087%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx153193153194%_)))))
                                     (let ((_%__kont153195153196%_
                                            (lambda ()
                                              (let ((_%f147124%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self146975%_
                                                        _%L147049%_))))
                                                (if (and (let ((__tmp153757
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f147124%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp153757))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f147124%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp147126%_ ((_%rest147129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp153759
                                                (lambda (_%g147246147249%_
                                                         _%g147247147251%_)
                                                  (cons _%g147246147249%_
                                                        _%g147247147251%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp153759
                                            '()
                                            _%L147048%_))))
                               (_%bind147131%_ '())
                               (_%args147132%_ '()))
              (let* ((_%rest147133147141%_ _%rest147129%_)
                     (_%else147135147149%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind147131%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f147124%_
                                                      _%args147132%_)
                                                '()))))))
                     (_%K147137147235%_
                      (lambda (_%rest147152%_ _%e147153%_)
                        (let* ((_%__stx153147153148%_ _%e147153%_)
                               (_%g147158147176%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx153147153148%_)))))
                          (let ((_%__kont153149153150%_
                                 (lambda ()
                                   (_%lp147126%_
                                    _%rest147152%_
                                    _%bind147131%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e147153%_))
                                          _%args147132%_))))
                                (_%__kont153151153152%_
                                 (lambda ()
                                   (_%lp147126%_
                                    _%rest147152%_
                                    _%bind147131%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e147153%_))
                                          _%args147132%_))))
                                (_%__kont153153153154%_
                                 (lambda ()
                                   (let ((_%tmp147183%_
                                          (let ((__tmp153758
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp153758))))
                                     (_%lp147126%_
                                      _%rest147152%_
                                      (cons (cons _%tmp147183%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e147153%_))
                                                        '()))
                                            _%bind147131%_)
                                      (cons _%tmp147183%_ _%args147132%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx153147153148%_))
                                (let ((_%e147160147214%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx153147153148%_))))
                                  (let ((_%tl147162147219%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147160147214%_)))
                                        (_%hd147161147217%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147160147214%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd147161147217%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd147161147217%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl147162147219%_))
                                                (let ((_%e147163147222%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl147162147219%_))))
                                                  (let ((_%tl147165147227%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e147163147222%_)))
                                                        (_%hd147164147225%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e147163147222%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl147165147227%_))
                                                        (_%__kont153149153150%_)
                                                        (_%__kont153153153154%_))))
                                                (_%__kont153153153154%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd147161147217%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl147162147219%_))
                                                    (let ((_%e147169147199%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl147162147219%_))))
                                                      (let ((_%tl147171147204%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e147169147199%_)))
                    (_%hd147170147202%_
                     (let () (declare (not safe)) (##car _%e147169147199%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl147171147204%_))
                    (_%__kont153151153152%_)
                    (_%__kont153153153154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont153153153154%_))
                                                (_%__kont153153153154%_)))
                                        (_%__kont153153153154%_))))
                                (_%__kont153153153154%_)))))))
                (if (pair? _%rest147133147141%_)
                    (let ((_%hd147138147238%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest147133147141%_)))
                          (_%tl147139147240%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest147133147141%_))))
                      (let* ((_%e147243%_ _%hd147138147238%_)
                             (_%rest147245%_ _%tl147139147240%_))
                        (_%K147137147235%_ _%rest147245%_ _%e147243%_)))
                    (_%else147135147149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call146978%_
                                                     _%L147049%_
                                                     (let ((__tmp153760
                                                            (lambda (_%g147253147256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g147254147258%_)
                      (cons _%g147253147256%_ _%g147254147258%_))))
               (declare (not safe))
               (__foldr1 __tmp153760 '() _%L147048%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont153197153198%_
                                            (lambda ()
                                              (_%compile-call146978%_
                                               _%L147049%_
                                               (let ((__tmp153761
                                                      (lambda (_%g147093147096%_
                                                               _%g147094147098%_)
                                                        (cons _%g147093147096%_
                                                              _%g147094147098%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp153761
                                                  '()
                                                  _%L147048%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx153193153194%_))
                                           (let ((_%e147077147106%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx153193153194%_))))
                                             (let ((_%tl147079147111%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e147077147106%_)))
                                                   (_%hd147078147109%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e147077147106%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd147078147109%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd147078147109%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl147079147111%_))
                                                           (let ((_%e147080147114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl147079147111%_))))
                     (let ((_%tl147082147119%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e147080147114%_)))
                           (_%hd147081147117%_
                            (let ()
                              (declare (not safe))
                              (##car _%e147080147114%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl147082147119%_))
                           (_%__kont153195153196%_)
                           (_%__kont153197153198%_))))
                   (_%__kont153197153198%_))
               (_%__kont153197153198%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont153197153198%_))))
                                           (_%__kont153197153198%_))))))
                             _%rand146998147045%_
                             _%hd146988147019%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop146993147029%_
                                                     _%target146990147024%_
                                                     '()))
                                                  (_%g146980147003%_
                                                   _%g146981147006%_)))))
                                        (_%g146980147003%_
                                         _%g146981147006%_))))
                                (_%g146980147003%_ _%g146981147006%_))))
                        (_%g146980147003%_ _%g146981147006%_)))))
            (_%g146979147264%_ _%stx146976%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self146718%_ _%stx146719%_)
        (let* ((_%__stx153265153266%_ _%stx146719%_)
               (_%g146722146751%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx153265153266%_)))))
          (let ((_%__kont153267153268%_
                 (lambda (_%L146819%_ _%L146820%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self146718%_
                        _%stx146719%_)
                       (let ((_%f146842%_
                              (let ((__tmp153762
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L146820%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self146718%_
                                 __tmp153762))))
                         (let _%lp146844%_ ((_%rest146847%_
                                             (reverse (let ((__tmp153764
                                                             (lambda (_%g146964146967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g146965146969%_)
                       (cons _%g146964146967%_ _%g146965146969%_))))
                (declare (not safe))
                (__foldr1 __tmp153764 '() _%L146819%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind146849%_ '())
                                            (_%args146850%_ '()))
                           (let* ((_%rest146851146859%_ _%rest146847%_)
                                  (_%else146853146867%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind146849%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f146842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args146850%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K146855146953%_
                                   (lambda (_%rest146870%_ _%e146871%_)
                                     (let* ((_%__stx153219153220%_ _%e146871%_)
                                            (_%g146876146894%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx153219153220%_)))))
                                       (let ((_%__kont153221153222%_
                                              (lambda ()
                                                (_%lp146844%_
                                                 _%rest146870%_
                                                 _%bind146849%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e146871%_))
                                                       _%args146850%_))))
                                             (_%__kont153223153224%_
                                              (lambda ()
                                                (_%lp146844%_
                                                 _%rest146870%_
                                                 _%bind146849%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e146871%_))
                                                       _%args146850%_))))
                                             (_%__kont153225153226%_
                                              (lambda ()
                                                (let ((_%tmp146901%_
                                                       (let ((__tmp153763
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp153763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp146844%_
                                                   _%rest146870%_
                                                   (cons (cons _%tmp146901%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e146871%_))
                             '()))
                 _%bind146849%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp146901%_
                                                         _%args146850%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx153219153220%_))
                                             (let ((_%e146878146932%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx153219153220%_))))
                                               (let ((_%tl146880146937%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e146878146932%_)))
                                                     (_%hd146879146935%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e146878146932%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd146879146935%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd146879146935%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl146880146937%_))
                     (let ((_%e146881146940%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl146880146937%_))))
                       (let ((_%tl146883146945%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e146881146940%_)))
                             (_%hd146882146943%_
                              (let ()
                                (declare (not safe))
                                (##car _%e146881146940%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl146883146945%_))
                             (_%__kont153221153222%_)
                             (_%__kont153225153226%_))))
                     (_%__kont153225153226%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd146879146935%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl146880146937%_))
                         (let ((_%e146887146917%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl146880146937%_))))
                           (let ((_%tl146889146922%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e146887146917%_)))
                                 (_%hd146888146920%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e146887146917%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl146889146922%_))
                                 (_%__kont153223153224%_)
                                 (_%__kont153225153226%_))))
                         (_%__kont153225153226%_))
                     (_%__kont153225153226%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont153225153226%_))))
                                             (_%__kont153225153226%_)))))))
                             (if (pair? _%rest146851146859%_)
                                 (let ((_%hd146856146956%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest146851146859%_)))
                                       (_%tl146857146958%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest146851146859%_))))
                                   (let* ((_%e146961%_ _%hd146856146956%_)
                                          (_%rest146963%_ _%tl146857146958%_))
                                     (_%K146855146953%_
                                      _%rest146963%_
                                      _%e146961%_)))
                                 (_%else146853146867%_))))))))
                (_%__kont153271153272%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self146718%_ _%stx146719%_))))
            (let ((_%__match153310153311%_
                   (lambda (_%e146726146763%_
                            _%hd146727146766%_
                            _%tl146728146768%_
                            _%e146729146771%_
                            _%hd146730146774%_
                            _%tl146731146776%_
                            _%e146732146779%_
                            _%hd146733146782%_
                            _%tl146734146784%_
                            _%e146735146787%_
                            _%hd146736146790%_
                            _%tl146737146792%_
                            _%__splice153269153270%_
                            _%target146738146795%_
                            _%tl146740146797%_)
                     (letrec ((_%loop146741146800%_
                               (lambda (_%hd146739146803%_
                                        _%rand146745146805%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd146739146803%_))
                                     (let ((_%e146742146808%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd146739146803%_))))
                                       (let ((_%lp-tl146744146813%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e146742146808%_)))
                                             (_%lp-hd146743146811%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e146742146808%_))))
                                         (_%loop146741146800%_
                                          _%lp-tl146744146813%_
                                          (cons _%lp-hd146743146811%_
                                                _%rand146745146805%_))))
                                     (let ((_%rand146746146816%_
                                            (reverse _%rand146745146805%_)))
                                       (_%__kont153267153268%_
                                        _%rand146746146816%_
                                        _%hd146736146790%_))))))
                       (_%loop146741146800%_ _%target146738146795%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx153265153266%_))
                  (let ((_%e146726146763%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx153265153266%_))))
                    (let ((_%tl146728146768%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146726146763%_)))
                          (_%hd146727146766%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146726146763%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146728146768%_))
                          (let ((_%e146729146771%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146728146768%_))))
                            (let ((_%tl146731146776%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146729146771%_)))
                                  (_%hd146730146774%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146729146771%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd146730146774%_))
                                  (let ((_%e146732146779%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd146730146774%_))))
                                    (let ((_%tl146734146784%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146732146779%_)))
                                          (_%hd146733146782%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146732146779%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd146733146782%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd146733146782%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl146734146784%_))
                                                  (let ((_%e146735146787%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl146734146784%_))))
                                                    (let ((_%tl146737146792%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146735146787%_)))
                                                          (_%hd146736146790%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146735146787%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146737146792%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl146731146776%_))
                      (let ((_%__splice153269153270%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl146731146776%_
                                '0))))
                        (let ((_%tl146740146797%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice153269153270%_ '1)))
                              (_%target146738146795%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice153269153270%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl146740146797%_))
                              (_%__match153310153311%_
                               _%e146726146763%_
                               _%hd146727146766%_
                               _%tl146728146768%_
                               _%e146729146771%_
                               _%hd146730146774%_
                               _%tl146731146776%_
                               _%e146732146779%_
                               _%hd146733146782%_
                               _%tl146734146784%_
                               _%e146735146787%_
                               _%hd146736146790%_
                               _%tl146737146792%_
                               _%__splice153269153270%_
                               _%target146738146795%_
                               _%tl146740146797%_)
                              (_%__kont153271153272%_))))
                      (_%__kont153271153272%_))
                  (_%__kont153271153272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont153271153272%_))
                                              (_%__kont153271153272%_))
                                          (_%__kont153271153272%_))))
                                  (_%__kont153271153272%_))))
                          (_%__kont153271153272%_))))
                  (_%__kont153271153272%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self146530%_ _%stx146531%_)
        (letrec ((_%simplify146533%_
                  (lambda (_%code146618%_)
                    (let* ((_%code146619146637%_ _%code146618%_)
                           (_%else146621146645%_ (lambda () _%code146618%_))
                           (_%K146623146681%_
                            (lambda (_%expr146648%_ _%test146649%_)
                              (let* ((_%expr146650146658%_ _%expr146648%_)
                                     (_%else146652146666%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test146649%_
                                                    (cons _%expr146648%_
                                                          '())))))
                                     (_%K146654146671%_
                                      (lambda (_%exprs146669%_)
                                        (cons 'and
                                              (cons _%test146649%_
                                                    _%exprs146669%_)))))
                                (if (pair? _%expr146650146658%_)
                                    (let ((_%hd146655146674%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr146650146658%_)))
                                          (_%tl146656146676%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr146650146658%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd146655146674%_ 'and))
                                          (let ((_%exprs146679%_
                                                 _%tl146656146676%_))
                                            (_%K146654146671%_
                                             _%exprs146679%_))
                                          (_%else146652146666%_)))
                                    (_%else146652146666%_))))))
                      (if (pair? _%code146619146637%_)
                          (let ((_%hd146624146684%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code146619146637%_)))
                                (_%tl146625146686%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code146619146637%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd146624146684%_ 'if))
                                (if (pair? _%tl146625146686%_)
                                    (let ((_%hd146626146689%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl146625146686%_)))
                                          (_%tl146627146691%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl146625146686%_))))
                                      (let ((_%test146694%_
                                             _%hd146626146689%_))
                                        (if (pair? _%tl146627146691%_)
                                            (let ((_%hd146628146696%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl146627146691%_)))
                                                  (_%tl146629146698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl146627146691%_))))
                                              (let ((_%expr146701%_
                                                     _%hd146628146696%_))
                                                (if (pair? _%tl146629146698%_)
                                                    (let ((_%hd146630146703%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl146629146698%_)))
                                                          (_%tl146631146705%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl146629146698%_))))
                                                      (if (pair? _%hd146630146703%_)
                                                          (let ((_%hd146632146708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd146630146703%_)))
                        (_%tl146633146710%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd146630146703%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd146632146708%_ 'quote))
                        (if (pair? _%tl146633146710%_)
                            (let ((_%hd146634146713%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl146633146710%_)))
                                  (_%tl146635146715%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl146633146710%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd146634146713%_ '#f))
                                  (if (null? _%tl146635146715%_)
                                      (if (null? _%tl146631146705%_)
                                          (_%K146623146681%_
                                           _%expr146701%_
                                           _%test146694%_)
                                          (_%else146621146645%_))
                                      (_%else146621146645%_))
                                  (_%else146621146645%_)))
                            (_%else146621146645%_))
                        (_%else146621146645%_)))
                  (_%else146621146645%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else146621146645%_))))
                                            (_%else146621146645%_))))
                                    (_%else146621146645%_))
                                (_%else146621146645%_)))
                          (_%else146621146645%_))))))
          (let* ((_%g146535146556%_
                  (lambda (_%g146536146553%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g146536146553%_))))
                 (_%g146534146615%_
                  (lambda (_%g146536146559%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g146536146559%_))
                        (let ((_%e146540146561%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g146536146559%_))))
                          (let ((_%hd146541146564%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146540146561%_)))
                                (_%tl146542146566%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146540146561%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl146542146566%_))
                                (let ((_%e146543146569%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl146542146566%_))))
                                  (let ((_%hd146544146572%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e146543146569%_)))
                                        (_%tl146545146574%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e146543146569%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146545146574%_))
                                        (let ((_%e146546146577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146545146574%_))))
                                          (let ((_%hd146547146580%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146546146577%_)))
                                                (_%tl146548146582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146546146577%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl146548146582%_))
                                                (let ((_%e146549146585%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl146548146582%_))))
                                                  (let ((_%hd146550146588%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146549146585%_)))
                                                        (_%tl146551146590%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146549146585%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl146551146590%_))
                                                        ((lambda (_%L146593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L146594%_
                          _%L146595%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify146533%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self146530%_
                                       _%L146595%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self146530%_
                                             _%L146594%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self146530%_
                                                   _%L146593%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp153765
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self146530%_
                                               _%L146595%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp153765
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self146530%_
                                            _%L146594%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self146530%_
                                                  _%L146593%_))
                                               '()))))))
                 _%hd146550146588%_
                 _%hd146547146580%_
                 _%hd146544146572%_)
                (_%g146535146556%_ _%g146536146559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g146535146556%_
                                                 _%g146536146559%_))))
                                        (_%g146535146556%_
                                         _%g146536146559%_))))
                                (_%g146535146556%_ _%g146536146559%_))))
                        (_%g146535146556%_ _%g146536146559%_)))))
            (_%g146534146615%_ _%stx146531%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self146478%_ _%stx146479%_)
        (let* ((_%g146481146494%_
                (lambda (_%g146482146491%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146482146491%_))))
               (_%g146480146527%_
                (lambda (_%g146482146497%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146482146497%_))
                      (let ((_%e146484146499%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146482146497%_))))
                        (let ((_%hd146485146502%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146484146499%_)))
                              (_%tl146486146504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146484146499%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146486146504%_))
                              (let ((_%e146487146507%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146486146504%_))))
                                (let ((_%hd146488146510%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146487146507%_)))
                                      (_%tl146489146512%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146487146507%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl146489146512%_))
                                      ((lambda (_%L146515%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L146515%_)))
                                       _%hd146488146510%_)
                                      (_%g146481146494%_ _%g146482146497%_))))
                              (_%g146481146494%_ _%g146482146497%_))))
                      (_%g146481146494%_ _%g146482146497%_)))))
          (_%g146480146527%_ _%stx146479%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self146410%_ _%stx146411%_)
        (let* ((_%g146413146430%_
                (lambda (_%g146414146427%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146414146427%_))))
               (_%g146412146475%_
                (lambda (_%g146414146433%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146414146433%_))
                      (let ((_%e146417146435%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146414146433%_))))
                        (let ((_%hd146418146438%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146417146435%_)))
                              (_%tl146419146440%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146417146435%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146419146440%_))
                              (let ((_%e146420146443%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146419146440%_))))
                                (let ((_%hd146421146446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146420146443%_)))
                                      (_%tl146422146448%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146420146443%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146422146448%_))
                                      (let ((_%e146423146451%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146422146448%_))))
                                        (let ((_%hd146424146454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146423146451%_)))
                                              (_%tl146425146456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146423146451%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146425146456%_))
                                              ((lambda (_%L146459%_
                                                        _%L146460%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L146460%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self146410%_ _%L146459%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd146424146454%_
                                               _%hd146421146446%_)
                                              (_%g146413146430%_
                                               _%g146414146433%_))))
                                      (_%g146413146430%_ _%g146414146433%_))))
                              (_%g146413146430%_ _%g146414146433%_))))
                      (_%g146413146430%_ _%g146414146433%_)))))
          (_%g146412146475%_ _%stx146411%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self146221%_ _%stx146222%_)
        (let* ((_%g146224146241%_
                (lambda (_%g146225146238%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146225146238%_))))
               (_%g146223146407%_
                (lambda (_%g146225146244%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146225146244%_))
                      (let ((_%e146228146246%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146225146244%_))))
                        (let ((_%hd146229146249%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146228146246%_)))
                              (_%tl146230146251%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146228146246%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146230146251%_))
                              (let ((_%e146231146254%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146230146251%_))))
                                (let ((_%hd146232146257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146231146254%_)))
                                      (_%tl146233146259%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146231146254%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146233146259%_))
                                      (let ((_%e146234146262%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146233146259%_))))
                                        (let ((_%hd146235146265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146234146262%_)))
                                              (_%tl146236146267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146234146262%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146236146267%_))
                                              ((lambda (_%L146270%_
                                                        _%L146271%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self146221%_ _%L146270%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self146221%_ _%L146271%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp146286%_ ((_%rest146289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L146271%_ (cons _%L146270%_ '())))
                                (_%bind146291%_ '())
                                (_%args146292%_ '()))
               (let* ((_%rest146293146301%_ _%rest146289%_)
                      (_%else146295146309%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind146291%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args146292%_)
                                                 '()))))))
                      (_%K146297146395%_
                       (lambda (_%rest146312%_ _%e146313%_)
                         (let* ((_%__stx153313153314%_ _%e146313%_)
                                (_%g146318146336%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx153313153314%_)))))
                           (let ((_%__kont153315153316%_
                                  (lambda ()
                                    (_%lp146286%_
                                     _%rest146312%_
                                     _%bind146291%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e146313%_))
                                           _%args146292%_))))
                                 (_%__kont153317153318%_
                                  (lambda ()
                                    (_%lp146286%_
                                     _%rest146312%_
                                     _%bind146291%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e146313%_))
                                           _%args146292%_))))
                                 (_%__kont153319153320%_
                                  (lambda ()
                                    (let ((_%tmp146343%_
                                           (let ((__tmp153766
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp153766))))
                                      (_%lp146286%_
                                       _%rest146312%_
                                       (cons (cons _%tmp146343%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e146313%_))
                                                         '()))
                                             _%bind146291%_)
                                       (cons _%tmp146343%_ _%args146292%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx153313153314%_))
                                 (let ((_%e146320146374%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx153313153314%_))))
                                   (let ((_%tl146322146379%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e146320146374%_)))
                                         (_%hd146321146377%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e146320146374%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd146321146377%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd146321146377%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl146322146379%_))
                                                 (let ((_%e146323146382%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl146322146379%_))))
                                                   (let ((_%tl146325146387%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e146323146382%_)))
                                                         (_%hd146324146385%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e146323146382%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl146325146387%_))
                                                         (_%__kont153315153316%_)
                                                         (_%__kont153319153320%_))))
                                                 (_%__kont153319153320%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd146321146377%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl146322146379%_))
                                                     (let ((_%e146329146359%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl146322146379%_))))
                                                       (let ((_%tl146331146364%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e146329146359%_)))
                     (_%hd146330146362%_
                      (let () (declare (not safe)) (##car _%e146329146359%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl146331146364%_))
                     (_%__kont153317153318%_)
                     (_%__kont153319153320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont153319153320%_))
                                                 (_%__kont153319153320%_)))
                                         (_%__kont153319153320%_))))
                                 (_%__kont153319153320%_)))))))
                 (if (pair? _%rest146293146301%_)
                     (let ((_%hd146298146398%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest146293146301%_)))
                           (_%tl146299146400%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest146293146301%_))))
                       (let* ((_%e146403%_ _%hd146298146398%_)
                              (_%rest146405%_ _%tl146299146400%_))
                         (_%K146297146395%_ _%rest146405%_ _%e146403%_)))
                     (_%else146295146309%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd146235146265%_
                                               _%hd146232146257%_)
                                              (_%g146224146241%_
                                               _%g146225146244%_))))
                                      (_%g146224146241%_ _%g146225146244%_))))
                              (_%g146224146241%_ _%g146225146244%_))))
                      (_%g146224146241%_ _%g146225146244%_)))))
          (_%g146223146407%_ _%stx146222%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self146032%_ _%stx146033%_)
        (let* ((_%g146035146052%_
                (lambda (_%g146036146049%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146036146049%_))))
               (_%g146034146218%_
                (lambda (_%g146036146055%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146036146055%_))
                      (let ((_%e146039146057%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146036146055%_))))
                        (let ((_%hd146040146060%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146039146057%_)))
                              (_%tl146041146062%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146039146057%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146041146062%_))
                              (let ((_%e146042146065%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146041146062%_))))
                                (let ((_%hd146043146068%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146042146065%_)))
                                      (_%tl146044146070%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146042146065%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146044146070%_))
                                      (let ((_%e146045146073%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146044146070%_))))
                                        (let ((_%hd146046146076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146045146073%_)))
                                              (_%tl146047146078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146045146073%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146047146078%_))
                                              ((lambda (_%L146081%_
                                                        _%L146082%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self146032%_ _%L146081%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self146032%_ _%L146082%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp146097%_ ((_%rest146100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L146082%_ (cons _%L146081%_ '())))
                                (_%bind146102%_ '())
                                (_%args146103%_ '()))
               (let* ((_%rest146104146112%_ _%rest146100%_)
                      (_%else146106146120%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind146102%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args146103%_)
                                                 '()))))))
                      (_%K146108146206%_
                       (lambda (_%rest146123%_ _%e146124%_)
                         (let* ((_%__stx153359153360%_ _%e146124%_)
                                (_%g146129146147%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx153359153360%_)))))
                           (let ((_%__kont153361153362%_
                                  (lambda ()
                                    (_%lp146097%_
                                     _%rest146123%_
                                     _%bind146102%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e146124%_))
                                           _%args146103%_))))
                                 (_%__kont153363153364%_
                                  (lambda ()
                                    (_%lp146097%_
                                     _%rest146123%_
                                     _%bind146102%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e146124%_))
                                           _%args146103%_))))
                                 (_%__kont153365153366%_
                                  (lambda ()
                                    (let ((_%tmp146154%_
                                           (let ((__tmp153767
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp153767))))
                                      (_%lp146097%_
                                       _%rest146123%_
                                       (cons (cons _%tmp146154%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e146124%_))
                                                         '()))
                                             _%bind146102%_)
                                       (cons _%tmp146154%_ _%args146103%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx153359153360%_))
                                 (let ((_%e146131146185%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx153359153360%_))))
                                   (let ((_%tl146133146190%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e146131146185%_)))
                                         (_%hd146132146188%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e146131146185%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd146132146188%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd146132146188%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl146133146190%_))
                                                 (let ((_%e146134146193%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl146133146190%_))))
                                                   (let ((_%tl146136146198%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e146134146193%_)))
                                                         (_%hd146135146196%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e146134146193%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl146136146198%_))
                                                         (_%__kont153361153362%_)
                                                         (_%__kont153365153366%_))))
                                                 (_%__kont153365153366%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd146132146188%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl146133146190%_))
                                                     (let ((_%e146140146170%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl146133146190%_))))
                                                       (let ((_%tl146142146175%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e146140146170%_)))
                     (_%hd146141146173%_
                      (let () (declare (not safe)) (##car _%e146140146170%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl146142146175%_))
                     (_%__kont153363153364%_)
                     (_%__kont153365153366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont153365153366%_))
                                                 (_%__kont153365153366%_)))
                                         (_%__kont153365153366%_))))
                                 (_%__kont153365153366%_)))))))
                 (if (pair? _%rest146104146112%_)
                     (let ((_%hd146109146209%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest146104146112%_)))
                           (_%tl146110146211%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest146104146112%_))))
                       (let* ((_%e146214%_ _%hd146109146209%_)
                              (_%rest146216%_ _%tl146110146211%_))
                         (_%K146108146206%_ _%rest146216%_ _%e146214%_)))
                     (_%else146106146120%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd146046146076%_
                                               _%hd146043146068%_)
                                              (_%g146035146052%_
                                               _%g146036146055%_))))
                                      (_%g146035146052%_ _%g146036146055%_))))
                              (_%g146035146052%_ _%g146036146055%_))))
                      (_%g146035146052%_ _%g146036146055%_)))))
          (_%g146034146218%_ _%stx146033%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self145948%_ _%stx145949%_)
        (let* ((_%g145951145972%_
                (lambda (_%g145952145969%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145952145969%_))))
               (_%g145950146029%_
                (lambda (_%g145952145975%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145952145975%_))
                      (let ((_%e145956145977%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145952145975%_))))
                        (let ((_%hd145957145980%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145956145977%_)))
                              (_%tl145958145982%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145956145977%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145958145982%_))
                              (let ((_%e145959145985%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145958145982%_))))
                                (let ((_%hd145960145988%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145959145985%_)))
                                      (_%tl145961145990%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145959145985%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145961145990%_))
                                      (let ((_%e145962145993%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145961145990%_))))
                                        (let ((_%hd145963145996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145962145993%_)))
                                              (_%tl145964145998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145962145993%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl145964145998%_))
                                              (let ((_%e145965146001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl145964145998%_))))
                                                (let ((_%hd145966146004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145965146001%_)))
                                                      (_%tl145967146006%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145965146001%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145967146006%_))
                                                      ((lambda (_%L146009%_
                                                                _%L146010%_
                                                                _%L146011%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self145948%_ _%L146009%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self145948%_
                                      _%L146010%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self145948%_
                                            _%L146011%_))
                                         (cons ''#f '()))))))
               _%hd145966146004%_
               _%hd145963145996%_
               _%hd145960145988%_)
              (_%g145951145972%_ _%g145952145975%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g145951145972%_
                                               _%g145952145975%_))))
                                      (_%g145951145972%_ _%g145952145975%_))))
                              (_%g145951145972%_ _%g145952145975%_))))
                      (_%g145951145972%_ _%g145952145975%_)))))
          (_%g145950146029%_ _%stx145949%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self145848%_ _%stx145849%_)
        (let* ((_%g145851145876%_
                (lambda (_%g145852145873%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145852145873%_))))
               (_%g145850145945%_
                (lambda (_%g145852145879%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145852145879%_))
                      (let ((_%e145857145881%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145852145879%_))))
                        (let ((_%hd145858145884%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145857145881%_)))
                              (_%tl145859145886%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145857145881%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145859145886%_))
                              (let ((_%e145860145889%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145859145886%_))))
                                (let ((_%hd145861145892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145860145889%_)))
                                      (_%tl145862145894%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145860145889%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145862145894%_))
                                      (let ((_%e145863145897%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145862145894%_))))
                                        (let ((_%hd145864145900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145863145897%_)))
                                              (_%tl145865145902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145863145897%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl145865145902%_))
                                              (let ((_%e145866145905%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl145865145902%_))))
                                                (let ((_%hd145867145908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145866145905%_)))
                                                      (_%tl145868145910%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145866145905%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl145868145910%_))
                                                      (let ((_%e145869145913%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl145868145910%_))))
                (let ((_%hd145870145916%_
                       (let () (declare (not safe)) (##car _%e145869145913%_)))
                      (_%tl145871145918%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e145869145913%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl145871145918%_))
                      ((lambda (_%L145921%_
                                _%L145922%_
                                _%L145923%_
                                _%L145924%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self145848%_
                                        _%L145922%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self145848%_
                                              _%L145921%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self145848%_
                                                    _%L145923%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self145848%_
                                                          _%L145924%_))
                                                       (cons ''#f '())))))))
                       _%hd145870145916%_
                       _%hd145867145908%_
                       _%hd145864145900%_
                       _%hd145861145892%_)
                      (_%g145851145876%_ _%g145852145879%_))))
              (_%g145851145876%_ _%g145852145879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g145851145876%_
                                               _%g145852145879%_))))
                                      (_%g145851145876%_ _%g145852145879%_))))
                              (_%g145851145876%_ _%g145852145879%_))))
                      (_%g145851145876%_ _%g145852145879%_)))))
          (_%g145850145945%_ _%stx145849%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self145764%_ _%stx145765%_)
        (let* ((_%g145767145788%_
                (lambda (_%g145768145785%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145768145785%_))))
               (_%g145766145845%_
                (lambda (_%g145768145791%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145768145791%_))
                      (let ((_%e145772145793%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145768145791%_))))
                        (let ((_%hd145773145796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145772145793%_)))
                              (_%tl145774145798%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145772145793%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145774145798%_))
                              (let ((_%e145775145801%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145774145798%_))))
                                (let ((_%hd145776145804%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145775145801%_)))
                                      (_%tl145777145806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145775145801%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145777145806%_))
                                      (let ((_%e145778145809%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145777145806%_))))
                                        (let ((_%hd145779145812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145778145809%_)))
                                              (_%tl145780145814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145778145809%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl145780145814%_))
                                              (let ((_%e145781145817%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl145780145814%_))))
                                                (let ((_%hd145782145820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145781145817%_)))
                                                      (_%tl145783145822%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145781145817%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145783145822%_))
                                                      ((lambda (_%L145825%_
                                                                _%L145826%_
                                                                _%L145827%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self145764%_ _%L145825%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self145764%_
                                      _%L145826%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self145764%_
                                            _%L145827%_))
                                         (cons ''#f '()))))))
               _%hd145782145820%_
               _%hd145779145812%_
               _%hd145776145804%_)
              (_%g145767145788%_ _%g145768145791%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g145767145788%_
                                               _%g145768145791%_))))
                                      (_%g145767145788%_ _%g145768145791%_))))
                              (_%g145767145788%_ _%g145768145791%_))))
                      (_%g145767145788%_ _%g145768145791%_)))))
          (_%g145766145845%_ _%stx145765%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self145664%_ _%stx145665%_)
        (let* ((_%g145667145692%_
                (lambda (_%g145668145689%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145668145689%_))))
               (_%g145666145761%_
                (lambda (_%g145668145695%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145668145695%_))
                      (let ((_%e145673145697%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145668145695%_))))
                        (let ((_%hd145674145700%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145673145697%_)))
                              (_%tl145675145702%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145673145697%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145675145702%_))
                              (let ((_%e145676145705%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145675145702%_))))
                                (let ((_%hd145677145708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145676145705%_)))
                                      (_%tl145678145710%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145676145705%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145678145710%_))
                                      (let ((_%e145679145713%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145678145710%_))))
                                        (let ((_%hd145680145716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145679145713%_)))
                                              (_%tl145681145718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145679145713%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl145681145718%_))
                                              (let ((_%e145682145721%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl145681145718%_))))
                                                (let ((_%hd145683145724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145682145721%_)))
                                                      (_%tl145684145726%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145682145721%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl145684145726%_))
                                                      (let ((_%e145685145729%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl145684145726%_))))
                (let ((_%hd145686145732%_
                       (let () (declare (not safe)) (##car _%e145685145729%_)))
                      (_%tl145687145734%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e145685145729%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl145687145734%_))
                      ((lambda (_%L145737%_
                                _%L145738%_
                                _%L145739%_
                                _%L145740%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self145664%_
                                        _%L145738%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self145664%_
                                              _%L145737%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self145664%_
                                                    _%L145739%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self145664%_
                                                          _%L145740%_))
                                                       (cons ''#f '())))))))
                       _%hd145686145732%_
                       _%hd145683145724%_
                       _%hd145680145716%_
                       _%hd145677145708%_)
                      (_%g145667145692%_ _%g145668145695%_))))
              (_%g145667145692%_ _%g145668145695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g145667145692%_
                                               _%g145668145695%_))))
                                      (_%g145667145692%_ _%g145668145695%_))))
                              (_%g145667145692%_ _%g145668145695%_))))
                      (_%g145667145692%_ _%g145668145695%_)))))
          (_%g145666145761%_ _%stx145665%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self145459%_ _%stx145460%_)
        (let* ((_%g145462145483%_
                (lambda (_%g145463145480%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145463145480%_))))
               (_%g145461145661%_
                (lambda (_%g145463145486%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145463145486%_))
                      (let ((_%e145467145488%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145463145486%_))))
                        (let ((_%hd145468145491%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145467145488%_)))
                              (_%tl145469145493%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145467145488%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145469145493%_))
                              (let ((_%e145470145496%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145469145493%_))))
                                (let ((_%hd145471145499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145470145496%_)))
                                      (_%tl145472145501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145470145496%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145472145501%_))
                                      (let ((_%e145473145504%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145472145501%_))))
                                        (let ((_%hd145474145507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145473145504%_)))
                                              (_%tl145475145509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145473145504%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl145475145509%_))
                                              (let ((_%e145476145512%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl145475145509%_))))
                                                (let ((_%hd145477145515%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145476145512%_)))
                                                      (_%tl145478145517%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145476145512%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145478145517%_))
                                                      ((lambda (_%L145520%_
                                                                _%L145521%_
                                                                _%L145522%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self145459%_
                                    _%L145520%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self145459%_
                                          _%L145521%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp145540%_ ((_%rest145543%_
                                         (cons _%L145521%_
                                               (cons _%L145520%_ '())))
                                        (_%bind145545%_ '())
                                        (_%args145546%_ '()))
                       (let* ((_%rest145547145555%_ _%rest145543%_)
                              (_%else145549145563%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind145545%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp153768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp153768 _%args145546%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K145551145649%_
                               (lambda (_%rest145566%_ _%e145567%_)
                                 (let* ((_%__stx153405153406%_ _%e145567%_)
                                        (_%g145572145590%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx153405153406%_)))))
                                   (let ((_%__kont153407153408%_
                                          (lambda ()
                                            (_%lp145540%_
                                             _%rest145566%_
                                             _%bind145545%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e145567%_))
                                                   _%args145546%_))))
                                         (_%__kont153409153410%_
                                          (lambda ()
                                            (_%lp145540%_
                                             _%rest145566%_
                                             _%bind145545%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e145567%_))
                                                   _%args145546%_))))
                                         (_%__kont153411153412%_
                                          (lambda ()
                                            (let ((_%tmp145597%_
                                                   (let ((__tmp153769
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp153769))))
                                              (_%lp145540%_
                                               _%rest145566%_
                                               (cons (cons _%tmp145597%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e145567%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind145545%_)
                                               (cons _%tmp145597%_
                                                     _%args145546%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx153405153406%_))
                                         (let ((_%e145574145628%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx153405153406%_))))
                                           (let ((_%tl145576145633%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e145574145628%_)))
                                                 (_%hd145575145631%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e145574145628%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd145575145631%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd145575145631%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl145576145633%_))
                                                         (let ((_%e145577145636%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl145576145633%_))))
                   (let ((_%tl145579145641%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e145577145636%_)))
                         (_%hd145578145639%_
                          (let ()
                            (declare (not safe))
                            (##car _%e145577145636%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl145579145641%_))
                         (_%__kont153407153408%_)
                         (_%__kont153411153412%_))))
                 (_%__kont153411153412%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd145575145631%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl145576145633%_))
                     (let ((_%e145583145613%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl145576145633%_))))
                       (let ((_%tl145585145618%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145583145613%_)))
                             (_%hd145584145616%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145583145613%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145585145618%_))
                             (_%__kont153409153410%_)
                             (_%__kont153411153412%_))))
                     (_%__kont153411153412%_))
                 (_%__kont153411153412%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont153411153412%_))))
                                         (_%__kont153411153412%_)))))))
                         (if (pair? _%rest145547145555%_)
                             (let ((_%hd145552145652%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest145547145555%_)))
                                   (_%tl145553145654%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest145547145555%_))))
                               (let* ((_%e145657%_ _%hd145552145652%_)
                                      (_%rest145659%_ _%tl145553145654%_))
                                 (_%K145551145649%_
                                  _%rest145659%_
                                  _%e145657%_)))
                             (_%else145549145563%_))))))
               _%hd145477145515%_
               _%hd145474145507%_
               _%hd145471145499%_)
              (_%g145462145483%_ _%g145463145486%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g145462145483%_
                                               _%g145463145486%_))))
                                      (_%g145462145483%_ _%g145463145486%_))))
                              (_%g145462145483%_ _%g145463145486%_))))
                      (_%g145462145483%_ _%g145463145486%_)))))
          (_%g145461145661%_ _%stx145460%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self145238%_ _%stx145239%_)
        (let* ((_%g145241145266%_
                (lambda (_%g145242145263%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145242145263%_))))
               (_%g145240145456%_
                (lambda (_%g145242145269%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145242145269%_))
                      (let ((_%e145247145271%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145242145269%_))))
                        (let ((_%hd145248145274%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145247145271%_)))
                              (_%tl145249145276%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145247145271%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145249145276%_))
                              (let ((_%e145250145279%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145249145276%_))))
                                (let ((_%hd145251145282%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145250145279%_)))
                                      (_%tl145252145284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145250145279%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145252145284%_))
                                      (let ((_%e145253145287%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145252145284%_))))
                                        (let ((_%hd145254145290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145253145287%_)))
                                              (_%tl145255145292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145253145287%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl145255145292%_))
                                              (let ((_%e145256145295%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl145255145292%_))))
                                                (let ((_%hd145257145298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145256145295%_)))
                                                      (_%tl145258145300%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145256145295%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl145258145300%_))
                                                      (let ((_%e145259145303%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl145258145300%_))))
                (let ((_%hd145260145306%_
                       (let () (declare (not safe)) (##car _%e145259145303%_)))
                      (_%tl145261145308%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e145259145303%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl145261145308%_))
                      ((lambda (_%L145311%_
                                _%L145312%_
                                _%L145313%_
                                _%L145314%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self145238%_
                                            _%L145312%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self145238%_
                                                  _%L145311%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self145238%_
                                                        _%L145313%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp145335%_ ((_%rest145338%_
                                                 (cons _%L145313%_
                                                       (cons _%L145311%_
                                                             (cons _%L145312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind145340%_ '())
                                                (_%args145341%_ '()))
                               (let* ((_%rest145342145350%_ _%rest145338%_)
                                      (_%else145344145358%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind145340%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153770 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp153770 _%args145341%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K145346145444%_
                                       (lambda (_%rest145361%_ _%e145362%_)
                                         (let* ((_%__stx153451153452%_
                                                 _%e145362%_)
                                                (_%g145367145385%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx153451153452%_)))))
                                           (let ((_%__kont153453153454%_
                                                  (lambda ()
                                                    (_%lp145335%_
                                                     _%rest145361%_
                                                     _%bind145340%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e145362%_))
                                                           _%args145341%_))))
                                                 (_%__kont153455153456%_
                                                  (lambda ()
                                                    (_%lp145335%_
                                                     _%rest145361%_
                                                     _%bind145340%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e145362%_))
                                                           _%args145341%_))))
                                                 (_%__kont153457153458%_
                                                  (lambda ()
                                                    (let ((_%tmp145392%_
                                                           (let ((__tmp153771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp153771))))
              (_%lp145335%_
               _%rest145361%_
               (cons (cons _%tmp145392%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e145362%_))
                                 '()))
                     _%bind145340%_)
               (cons _%tmp145392%_ _%args145341%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx153451153452%_))
                                                 (let ((_%e145369145423%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx153451153452%_))))
                                                   (let ((_%tl145371145428%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e145369145423%_)))
                                                         (_%hd145370145426%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e145369145423%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd145370145426%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd145370145426%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl145371145428%_))
                         (let ((_%e145372145431%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl145371145428%_))))
                           (let ((_%tl145374145436%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e145372145431%_)))
                                 (_%hd145373145434%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e145372145431%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl145374145436%_))
                                 (_%__kont153453153454%_)
                                 (_%__kont153457153458%_))))
                         (_%__kont153457153458%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd145370145426%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl145371145428%_))
                             (let ((_%e145378145408%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl145371145428%_))))
                               (let ((_%tl145380145413%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e145378145408%_)))
                                     (_%hd145379145411%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e145378145408%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl145380145413%_))
                                     (_%__kont153455153456%_)
                                     (_%__kont153457153458%_))))
                             (_%__kont153457153458%_))
                         (_%__kont153457153458%_)))
                 (_%__kont153457153458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont153457153458%_)))))))
                                 (if (pair? _%rest145342145350%_)
                                     (let ((_%hd145347145447%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest145342145350%_)))
                                           (_%tl145348145449%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest145342145350%_))))
                                       (let* ((_%e145452%_ _%hd145347145447%_)
                                              (_%rest145454%_
                                               _%tl145348145449%_))
                                         (_%K145346145444%_
                                          _%rest145454%_
                                          _%e145452%_)))
                                     (_%else145344145358%_))))))
                       _%hd145260145306%_
                       _%hd145257145298%_
                       _%hd145254145290%_
                       _%hd145251145282%_)
                      (_%g145241145266%_ _%g145242145269%_))))
              (_%g145241145266%_ _%g145242145269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g145241145266%_
                                               _%g145242145269%_))))
                                      (_%g145241145266%_ _%g145242145269%_))))
                              (_%g145241145266%_ _%g145242145269%_))))
                      (_%g145241145266%_ _%g145242145269%_)))))
          (_%g145240145456%_ _%stx145239%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self145077%_ _%stx145078%_)
        (letrec ((_%import-set-template145080%_
                  (lambda (_%in145183%_ _%phi145184%_)
                    (let ((_%iphi145186%_
                           (fx+ _%phi145184%_
                                (##direct-structure-ref
                                 _%in145183%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports145187%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in145183%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp145189%_ ((_%rest145191%_ _%imports145187%_)
                                         (_%r145192%_ '()))
                        (let* ((_%rest145193145201%_ _%rest145191%_)
                               (_%else145195145209%_ (lambda () _%r145192%_))
                               (_%K145197145226%_
                                (lambda (_%rest145212%_ _%in145213%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in145213%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi145186%_))
                                          (_%lp145189%_
                                           _%rest145212%_
                                           (cons _%in145213%_ _%r145192%_))
                                          (_%lp145189%_
                                           _%rest145212%_
                                           _%r145192%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in145213%_
                                             'gx#module-import::t))
                                          (let ((_%iphi145217%_
                                                 (fx+ _%phi145184%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in145213%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi145217%_))
                                                (_%lp145189%_
                                                 _%rest145212%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in145213%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r145192%_))
                                                (_%lp145189%_
                                                 _%rest145212%_
                                                 _%r145192%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in145213%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi145220%_
                                                     (fx+ _%iphi145186%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in145213%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi145220%_))
                                                    (_%lp145189%_
                                                     _%rest145212%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in145213%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r145192%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi145220%_))
                                                        (_%lp145189%_
                                                         _%rest145212%_
                                                         (let ((__tmp153772
                                                                (_%import-set-template145080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in145213%_
                         _%iphi145186%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r145192%_ __tmp153772)))
                (_%lp145189%_ _%rest145212%_ _%r145192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp145189%_
                                               _%rest145212%_
                                               _%r145192%_)))))))
                          (if (pair? _%rest145193145201%_)
                              (let ((_%hd145198145229%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest145193145201%_)))
                                    (_%tl145199145231%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest145193145201%_))))
                                (let* ((_%in145234%_ _%hd145198145229%_)
                                       (_%rest145236%_ _%tl145199145231%_))
                                  (_%K145197145226%_
                                   _%rest145236%_
                                   _%in145234%_)))
                              (_%else145195145209%_))))))))
          (let* ((_%g145082145092%_
                  (lambda (_%g145083145089%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g145083145089%_))))
                 (_%g145081145180%_
                  (lambda (_%g145083145095%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g145083145095%_))
                        (let ((_%e145085145097%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g145083145095%_))))
                          (let ((_%hd145086145100%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145085145097%_)))
                                (_%tl145087145102%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145085145097%_))))
                            ((lambda (_%L145105%_)
                               (let ((_%ht145116%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp145118%_ ((_%rest145120%_
                                                     _%L145105%_)
                                                    (_%loads145121%_ '()))
                                   (letrec ((_%K145123%_
                                             (lambda (_%ctx145173%_
                                                      _%rest145174%_)
                                               (let ((_%id145176%_
                                                      (##structure-ref
                                                       _%ctx145173%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht145116%_
                                                        _%id145176%_))
                                                     (_%lp145118%_
                                                      _%rest145174%_
                                                      _%loads145121%_)
                                                     (let ((_%rt145178%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id145176%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht145116%_
                                                          _%id145176%_
                                                          _%rt145178%_))
                                                       (_%lp145118%_
                                                        _%rest145174%_
                                                        (cons _%rt145178%_
                                                              _%loads145121%_))))))))
                                     (let* ((_%rest145124145132%_
                                             _%rest145120%_)
                                            (_%else145126145144%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp153774
                                                            (lambda (_%g145139145141%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g145139145141%_)))
                   (__tmp153773 (reverse _%loads145121%_)))
               (declare (not safe))
               (##map __tmp153774 __tmp153773)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K145128145161%_
                                             (lambda (_%rest145147%_
                                                      _%in145148%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in145148%_
                                                      'gx#module-context::t))
                                                   (_%K145123%_
                                                    _%in145148%_
                                                    _%rest145147%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in145148%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in145148%_
                               '3
                               '#f
                               '#f)))
                   (_%K145123%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in145148%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest145147%_)
                   (_%lp145118%_ _%rest145147%_ _%loads145121%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in145148%_
                      'gx#import-set::t))
                   (let ((_%phi145153%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in145148%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi145153%_)
                         (_%K145123%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in145148%_
                             '1
                             '#f
                             '#f))
                          _%rest145147%_)
                         (if (fxpositive? _%phi145153%_)
                             (let ((_%deps145157%_
                                    (_%import-set-template145080%_
                                     _%in145148%_
                                     '0)))
                               (_%lp145118%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest145147%_
                                   _%deps145157%_))
                                _%loads145121%_))
                             (_%lp145118%_ _%rest145147%_ _%loads145121%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx145078%_
                      _%in145148%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest145124145132%_)
                                           (let ((_%hd145129145164%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest145124145132%_)))
                                                 (_%tl145130145166%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest145124145132%_))))
                                             (let* ((_%in145169%_
                                                     _%hd145129145164%_)
                                                    (_%rest145171%_
                                                     _%tl145130145166%_))
                                               (_%K145128145161%_
                                                _%rest145171%_
                                                _%in145169%_)))
                                           (_%else145126145144%_)))))))
                             _%tl145087145102%_)))
                        (_%g145082145092%_ _%g145083145095%_)))))
            (_%g145081145180%_ _%stx145078%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self144890%_ _%stx144891%_)
        (letrec ((_%add-lift!144893%_
                  (lambda (_%expr145075%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr145075%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote144894%_
                  (lambda (_%id145072%_ _%marks145073%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id145072%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks145073%_
                                                        '()))))))))
                 (_%generate-simple144895%_
                  (lambda (_%stxq145067%_)
                    (let ((_%gid145069%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid145070%_
                           (gxc#generate-runtime-identifier _%stxq145067%_)))
                      (_%add-lift!144893%_
                       (cons 'define
                             (cons _%gid145069%_
                                   (cons (_%generate-syntax-quote144894%_
                                          _%qid145070%_
                                          ''())
                                         '()))))
                      (let ((__tmp153775
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp153775 _%stxq145067%_ _%gid145069%_))
                      _%gid145069%_)))
                 (_%generate-serialized144896%_
                  (lambda (_%stxq145057%_ _%marks145058%_)
                    (let* ((_%mark-refs145060%_
                            (map _%generate-mark144897%_ _%marks145058%_))
                           (_%gid145062%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid145064%_
                            (gxc#generate-runtime-identifier _%stxq145057%_)))
                      (_%add-lift!144893%_
                       (cons 'define
                             (cons _%gid145062%_
                                   (cons (_%generate-syntax-quote144894%_
                                          _%qid145064%_
                                          (cons 'list _%mark-refs145060%_))
                                         '()))))
                      (let ((__tmp153776
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp153776 _%stxq145057%_ _%gid145062%_))
                      _%gid145062%_)))
                 (_%generate-mark144897%_
                  (lambda (_%mark145042%_)
                    (let ((_%$e145044%_
                           (let ((__tmp153777
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp153777 _%mark145042%_))))
                      (if _%$e145044%_
                          _%$e145044%_
                          (let* ((_%gid145048%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr145050%_
                                  (_%serialize-mark144898%_ _%mark145042%_))
                                 (_%ctx145052%_
                                  (let ((__tmp153778
                                         (##structure-ref
                                          _%mark145042%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp153778)))
                                 (_%ctx-ref145054%_
                                  (if (eq? _%ctx145052%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref144899%_
                                                               _%ctx145052%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp153779
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp153779
                               _%mark145042%_
                               _%gid145048%_))
                            (_%add-lift!144893%_
                             (cons 'define
                                   (cons _%gid145048%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr145050%_ '()))
                   (cons _%ctx-ref145054%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid145048%_)))))
                 (_%serialize-mark144898%_
                  (lambda (_%mark144989%_)
                    (letrec ((_%quote-e144991%_
                              (lambda (_%sym145040%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym145040%_))
                                    _%sym145040%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym145040%_))))))
                      (let* ((_%mark144992145001%_ _%mark144989%_)
                             (_%E144994145005%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark144992145001%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K144995145017%_
                              (lambda (_%trace145008%_
                                       _%phi145009%_
                                       _%ctx145010%_
                                       _%subst145011%_)
                                (let ((_%subs145013%_
                                       (if _%subst145011%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst145011%_))
                                           '())))
                                  (cons _%phi145009%_
                                        (map (lambda (_%pair145015%_)
                                               (cons (_%quote-e144991%_
                                                      (car _%pair145015%_))
                                                     (_%quote-e144991%_
                                                      (cdr _%pair145015%_))))
                                             _%subs145013%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark144992145001%_
                               'gx#expander-mark::t))
                            (let* ((_%e144996145020%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark144992145001%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst145023%_ _%e144996145020%_)
                                   (_%e144997145025%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark144992145001%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx145028%_ _%e144997145025%_)
                                   (_%e144998145030%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark144992145001%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi145033%_ _%e144998145030%_)
                                   (_%e144999145035%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark144992145001%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace145038%_ _%e144999145035%_))
                              (_%K144995145017%_
                               _%trace145038%_
                               _%phi145033%_
                               _%ctx145028%_
                               _%subst145023%_))
                            (_%E144994145005%_))))))
                 (_%context-ref144899%_
                  (lambda (_%ctx144976%_)
                    (if (let ((__tmp153780
                               (##structure-ref
                                _%ctx144976%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp153780
                           'gx#module-context::t))
                        (let ((_%ctx-ref144978%_
                               (_%context-ref-nested144901%_ _%ctx144976%_))
                              (_%ctx-origin144979%_
                               (_%context-ref-origin144900%_ _%ctx144976%_))
                              (_%origin144980%_
                               (_%context-ref-origin144900%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin144980%_ _%ctx-origin144979%_)
                              (let ((_%ref144982%_
                                     (_%context-ref-nested144901%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp144984%_ ((_%ref144986%_
                                                    (cdr _%ref144982%_))
                                                   (_%ctx-ref144987%_
                                                    (cdr _%ctx-ref144978%_)))
                                  (if (and (pair? _%ref144986%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref144986%_))
                                                (car _%ctx-ref144987%_)))
                                      (_%lp144984%_
                                       (cdr _%ref144986%_)
                                       (cdr _%ctx-ref144987%_))
                                      (cons '#f _%ctx-ref144987%_))))
                              _%ctx-ref144978%_))
                        (let ((__tmp153781
                               (##structure-ref
                                _%ctx144976%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp153781)))))
                 (_%context-ref-origin144900%_
                  (lambda (_%ctx144968%_)
                    (let _%lp144970%_ ((_%ctx144972%_ _%ctx144968%_))
                      (let ((_%super144974%_
                             (##structure-ref
                              _%ctx144972%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super144974%_
                               'gx#module-context::t))
                            (_%lp144970%_ _%super144974%_)
                            _%ctx144972%_)))))
                 (_%context-ref-nested144901%_
                  (lambda (_%ctx144959%_)
                    (let _%lp144961%_ ((_%ctx144963%_ _%ctx144959%_)
                                       (_%r144964%_ '()))
                      (let ((_%super144966%_
                             (##structure-ref
                              _%ctx144963%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super144966%_
                               'gx#module-context::t))
                            (_%lp144961%_
                             _%super144966%_
                             (cons (car (##structure-ref
                                         _%ctx144963%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r144964%_))
                            (cons (let ((__tmp153782
                                         (##structure-ref
                                          _%ctx144963%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp153782))
                                  _%r144964%_)))))))
          (let* ((_%g144903144916%_
                  (lambda (_%g144904144913%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144904144913%_))))
                 (_%g144902144956%_
                  (lambda (_%g144904144919%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144904144919%_))
                        (let ((_%e144906144921%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144904144919%_))))
                          (let ((_%hd144907144924%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144906144921%_)))
                                (_%tl144908144926%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144906144921%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144908144926%_))
                                (let ((_%e144909144929%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144908144926%_))))
                                  (let ((_%hd144910144932%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144909144929%_)))
                                        (_%tl144911144934%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144909144929%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl144911144934%_))
                                        ((lambda (_%L144937%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L144937%_))
                                               (let ((_%$e144950%_
                                                      (let ((__tmp153783
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp153783 _%L144937%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e144950%_
                                                     _%$e144950%_
                                                     (let ((_%marks144954%_
                                                            (##direct-structure-ref
                                                             _%L144937%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks144954%_)
                                                           (_%generate-simple144895%_
                                                            _%L144937%_)
                                                           (_%generate-serialized144896%_
                                                            _%L144937%_
                                                            _%marks144954%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L144937%_))))
                                         _%hd144910144932%_)
                                        (_%g144903144916%_
                                         _%g144904144919%_))))
                                (_%g144903144916%_ _%g144904144919%_))))
                        (_%g144903144916%_ _%g144904144919%_)))))
            (_%g144902144956%_ _%stx144891%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self144822%_ _%stx144823%_)
        (let* ((_%g144825144842%_
                (lambda (_%g144826144839%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144826144839%_))))
               (_%g144824144887%_
                (lambda (_%g144826144845%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144826144845%_))
                      (let ((_%e144829144847%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144826144845%_))))
                        (let ((_%hd144830144850%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144829144847%_)))
                              (_%tl144831144852%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144829144847%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144831144852%_))
                              (let ((_%e144832144855%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144831144852%_))))
                                (let ((_%hd144833144858%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144832144855%_)))
                                      (_%tl144834144860%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144832144855%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144834144860%_))
                                      (let ((_%e144835144863%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144834144860%_))))
                                        (let ((_%hd144836144866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144835144863%_)))
                                              (_%tl144837144868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144835144863%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144837144868%_))
                                              ((lambda (_%L144871%_
                                                        _%L144872%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L144872%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self144822%_ _%L144871%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd144836144866%_
                                               _%hd144833144858%_)
                                              (_%g144825144842%_
                                               _%g144826144845%_))))
                                      (_%g144825144842%_ _%g144826144845%_))))
                              (_%g144825144842%_ _%g144826144845%_))))
                      (_%g144825144842%_ _%g144826144845%_)))))
          (_%g144824144887%_ _%stx144823%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self144771%_ _%stx144772%_)
        (let* ((_%g144774144784%_
                (lambda (_%g144775144781%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144775144781%_))))
               (_%g144773144819%_
                (lambda (_%g144775144787%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144775144787%_))
                      (let ((_%e144777144789%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144775144787%_))))
                        (let ((_%hd144778144792%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144777144789%_)))
                              (_%tl144779144794%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144777144789%_))))
                          ((lambda (_%L144797%_)
                             (let* ((_%c-body144811%_
                                     (map (lambda (_%g144806144808%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self144771%_
                                               _%g144806144808%_)))
                                          _%L144797%_))
                                    (_%c-body144816%_
                                     (let ((__tmp153784
                                            (lambda (_%$obj144813%_)
                                              (not (eq? _%$obj144813%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp153784
                                        _%c-body144811%_))))
                               (cons '%#begin _%c-body144816%_)))
                           _%tl144779144794%_)))
                      (_%g144774144784%_ _%g144775144787%_)))))
          (_%g144773144819%_ _%stx144772%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self144676%_ _%stx144677%_)
        (let* ((_%g144679144689%_
                (lambda (_%g144680144686%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144680144686%_))))
               (_%g144678144768%_
                (lambda (_%g144680144692%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144680144692%_))
                      (let ((_%e144682144694%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144680144692%_))))
                        (let ((_%hd144683144697%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144682144694%_)))
                              (_%tl144684144699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144682144694%_))))
                          ((lambda (_%L144702%_)
                             (let* ((_%phi144712%_
                                     (let ((__tmp153785
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp153785 '1)))
                                    (_%block144714%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self144676%_ 'state))
                                      _%phi144712%_))
                                    (_%compiled144717%_
                                     (let ((__tmp153786
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self144676%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L144702%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp153786
                                        gx#current-expander-phi
                                        _%phi144712%_)))
                                    (_%g144720144730%_
                                     (lambda (_%g144721144727%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g144721144727%_))))
                                    (_%g144719144765%_
                                     (lambda (_%g144721144733%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g144721144733%_))
                                           (let ((_%e144723144735%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g144721144733%_))))
                                             (let ((_%hd144724144738%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e144723144735%_)))
                                                   (_%tl144725144740%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e144723144735%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd144724144738%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd144724144738%_))
                                                       ((lambda (_%L144743%_)
                                                          (let ((_%c-body144760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj144757%_)
                                   (not (eq? _%$obj144757%_ '#!void)))
                                 _%L144743%_)))
                    (if _%block144714%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block144714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body144760%_))
                        (if (null? _%c-body144760%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body144760%_)))))
                _%tl144725144740%_)
               (_%g144720144730%_ _%g144721144733%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g144720144730%_
                                                    _%g144721144733%_))))
                                           (_%g144720144730%_
                                            _%g144721144733%_)))))
                               (_%g144719144765%_ _%compiled144717%_)))
                           _%tl144684144699%_)))
                      (_%g144679144689%_ _%g144680144692%_)))))
          (_%g144678144768%_ _%stx144677%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self144607%_ _%stx144608%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self144607%_ 'state)))
        (let* ((_%g144610144624%_
                (lambda (_%g144611144621%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144611144621%_))))
               (_%g144609144673%_
                (lambda (_%g144611144627%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144611144627%_))
                      (let ((_%e144614144629%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144611144627%_))))
                        (let ((_%hd144615144632%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144614144629%_)))
                              (_%tl144616144634%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144614144629%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144616144634%_))
                              (let ((_%e144617144637%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144616144634%_))))
                                (let ((_%hd144618144640%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144617144637%_)))
                                      (_%tl144619144642%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144617144637%_))))
                                  ((lambda (_%L144645%_ _%L144646%_)
                                     (let ((_%key144659%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L144646%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key144659%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx144608%_
                                              _%L144646%_
                                              _%key144659%_)))
                                       (let* ((_%ctx144661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L144646%_)))
                                              (_%code144664%_
                                               (let ((__tmp153787
                                                      (lambda ()
                                                        (let ((__tmp153788
                                                               (##structure-ref
                                                                _%ctx144661%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self144607%_
                                                           __tmp153788)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp153787
                                                  gx#current-expander-context
                                                  _%ctx144661%_)))
                                              (_%rt144666%_
                                               (let ((__tmp153789
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp153789
                                                  _%ctx144661%_)))
                                              (_%loader144668%_
                                               (if _%rt144666%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt144666%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid144670%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L144646%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self144607%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid144670%_
                                                     (cons _%code144664%_
                                                           _%loader144668%_))))))
                                   _%tl144619144642%_
                                   _%hd144618144640%_)))
                              (_%g144610144624%_ _%g144611144627%_))))
                      (_%g144610144624%_ _%g144611144627%_)))))
          (_%g144609144673%_ _%stx144608%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx144594%_ _%context-chain144595%_)
        (let _%lp144597%_ ((_%ctx144599%_ _%ctx144594%_) (_%path144600%_ '()))
          (let ((_%super144602%_
                 (##structure-ref _%ctx144599%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super144602%_ _%context-chain144595%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx144599%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path144600%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super144602%_
                       'gx#module-context::t))
                    (_%lp144597%_
                     _%super144602%_
                     (cons (car (##structure-ref
                                 _%ctx144599%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path144600%_))
                    (cons (let ((__tmp153790
                                 (##structure-ref
                                  _%ctx144599%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp153790))
                          _%path144600%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp144587%_ ((_%ctx144589%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r144590%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx144589%_ 'gx#module-context::t))
              (_%lp144587%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx144589%_ '3 '#f '#f))
               (cons _%ctx144589%_ _%r144590%_))
              _%r144590%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self144350%_ _%stx144351%_)
        (letrec* ((_%context-chain144353%_ (gxc#current-context-chain))
                  (_%make-import-spec144354%_
                   (lambda (_%in144523%_)
                     (let* ((_%in144524144536%_ _%in144523%_)
                            (_%E144526144540%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in144524144536%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K144527144550%_
                             (lambda (_%phi144543%_
                                      _%name144544%_
                                      _%src-name144545%_
                                      _%src-phi144546%_
                                      _%src-key144547%_
                                      _%src-ctx144548%_)
                               (cons _%phi144543%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name144544%_)
                                           (cons _%src-phi144546%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name144545%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in144524144536%_
                              'gx#module-import::t))
                           (let ((_%e144528144553%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in144524144536%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e144528144553%_
                                    'gx#module-export::t))
                                 (let* ((_%e144531144556%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e144528144553%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx144559%_ _%e144531144556%_)
                                        (_%e144532144561%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e144528144553%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key144564%_ _%e144532144561%_)
                                        (_%e144533144566%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e144528144553%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi144569%_ _%e144533144566%_)
                                        (_%e144534144571%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e144528144553%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name144574%_ _%e144534144571%_)
                                        (_%e144529144576%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in144524144536%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name144579%_ _%e144529144576%_)
                                        (_%e144530144581%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in144524144536%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi144584%_ _%e144530144581%_))
                                   (_%K144527144550%_
                                    _%phi144584%_
                                    _%name144579%_
                                    _%src-name144574%_
                                    _%src-phi144569%_
                                    _%src-key144564%_
                                    _%src-ctx144559%_))
                                 (_%E144526144540%_)))
                           (_%E144526144540%_)))))
                  (_%make-import-path144355%_
                   (lambda (_%ctx144521%_)
                     (gxc#generate-meta-import-path
                      _%ctx144521%_
                      _%context-chain144353%_)))
                  (_%make-import-spec-in144356%_
                   (lambda (_%ctx144518%_ _%in144519%_)
                     (cons 'spec:
                           (cons (_%make-import-path144355%_ _%ctx144518%_)
                                 (reverse _%in144519%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self144350%_ 'state)))
          (let* ((_%g144358144368%_
                  (lambda (_%g144359144365%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144359144365%_))))
                 (_%g144357144515%_
                  (lambda (_%g144359144371%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144359144371%_))
                        (let ((_%e144361144373%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144359144371%_))))
                          (let ((_%hd144362144376%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144361144373%_)))
                                (_%tl144363144378%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144361144373%_))))
                            ((lambda (_%L144381%_)
                               (let _%lp144392%_ ((_%rest144394%_ _%L144381%_)
                                                  (_%current-src144395%_ '#f)
                                                  (_%current-in144396%_ '())
                                                  (_%r144397%_ '()))
                                 (let* ((_%rest144398144406%_ _%rest144394%_)
                                        (_%else144400144416%_
                                         (lambda ()
                                           (let ((_%r144414%_
                                                  (if _%current-src144395%_
                                                      (cons (_%make-import-spec-in144356%_
                                                             _%current-src144395%_
                                                             _%current-in144396%_)
                                                            _%r144397%_)
                                                      _%r144397%_)))
                                             (cons '%#import
                                                   (reverse _%r144414%_)))))
                                        (_%K144402144503%_
                                         (lambda (_%rest144419%_ _%in144420%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in144420%_
                                                  'gx#module-import::t))
                                               (let* ((_%in144422144429%_
                                                       _%in144420%_)
                                                      (_%E144424144433%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in144422144429%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K144425144441%_
               (lambda (_%src-ctx144436%_)
                 (if (eq? _%current-src144395%_ _%src-ctx144436%_)
                     (_%lp144392%_
                      _%rest144419%_
                      _%current-src144395%_
                      (cons (_%make-import-spec144354%_ _%in144420%_)
                            _%current-in144396%_)
                      _%r144397%_)
                     (if _%current-src144395%_
                         (_%lp144392%_
                          _%rest144419%_
                          _%src-ctx144436%_
                          (cons (_%make-import-spec144354%_ _%in144420%_) '())
                          (cons (_%make-import-spec-in144356%_
                                 _%current-src144395%_
                                 _%current-in144396%_)
                                _%r144397%_))
                         (_%lp144392%_
                          _%rest144419%_
                          _%src-ctx144436%_
                          (cons (_%make-import-spec144354%_ _%in144420%_) '())
                          _%r144397%_)))))
              (_%e144426144444%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in144422144429%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e144426144444%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e144427144447%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e144426144444%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx144450%_ _%e144427144447%_))
               (_%K144425144441%_ _%src-ctx144450%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E144424144433%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in144420%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi144453%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in144420%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src144455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in144420%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in144495%_
                                                           (let* ((_%g144456144465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path144355%_ _%src144455%_))
                          (_%E144459144469%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g144456144465%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K144461144485%_
                            (lambda (_%path144483%_) _%path144483%_))
                           (_%K144460144475%_
                            (lambda (_%path144473%_)
                              (cons 'in: _%path144473%_))))
                       (if (pair? _%g144456144465%_)
                           (let ((_%tl144463144490%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g144456144465%_)))
                                 (_%hd144462144488%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g144456144465%_))))
                             (if (null? _%tl144463144490%_)
                                 (let ((_%path144493%_ _%hd144462144488%_))
                                   (_%K144461144485%_ _%path144493%_))
                                 (let ((_%path144478%_ _%g144456144465%_))
                                   (_%K144460144475%_ _%path144478%_))))
                           (let ((_%path144478%_ _%g144456144465%_))
                             (_%K144460144475%_ _%path144478%_))))))
                  (_%r144497%_
                   (if _%current-src144395%_
                       (cons (_%make-import-spec-in144356%_
                              _%current-src144395%_
                              _%current-in144396%_)
                             _%r144397%_)
                       _%r144397%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp144392%_
                                                      _%rest144419%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi144453%_)
                                                                _%src-in144495%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi144453%_
                                    (cons _%src-in144495%_ '()))))
                    _%r144497%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in144420%_
                                                          'gx#module-context::t))
                                                       (let ((_%r144501%_
                                                              (if _%current-src144395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in144356%_
                                 _%current-src144395%_
                                 _%current-in144396%_)
                                _%r144397%_)
                          _%r144397%_)))
                 (_%lp144392%_
                  _%rest144419%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path144355%_ _%in144420%_))
                        _%r144501%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest144398144406%_)
                                       (let ((_%hd144403144506%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest144398144406%_)))
                                             (_%tl144404144508%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest144398144406%_))))
                                         (let* ((_%in144511%_
                                                 _%hd144403144506%_)
                                                (_%rest144513%_
                                                 _%tl144404144508%_))
                                           (_%K144402144503%_
                                            _%rest144513%_
                                            _%in144511%_)))
                                       (_%else144400144416%_)))))
                             _%tl144363144378%_)))
                        (_%g144358144368%_ _%g144359144371%_)))))
            (_%g144357144515%_ _%stx144351%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self144160%_ _%stx144161%_)
        (letrec* ((_%context-chain144163%_ (gxc#current-context-chain))
                  (_%make-import-path144164%_
                   (lambda (_%ctx144348%_)
                     (gxc#generate-meta-import-path
                      _%ctx144348%_
                      _%context-chain144163%_))))
          (let* ((_%g144166144176%_
                  (lambda (_%g144167144173%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144167144173%_))))
                 (_%g144165144345%_
                  (lambda (_%g144167144179%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144167144179%_))
                        (let ((_%e144169144181%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144167144179%_))))
                          (let ((_%hd144170144184%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144169144181%_)))
                                (_%tl144171144186%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144169144181%_))))
                            ((lambda (_%L144189%_)
                               (let _%lp144200%_ ((_%rest144202%_ _%L144189%_)
                                                  (_%r144203%_ '()))
                                 (let* ((_%rest144204144212%_ _%rest144202%_)
                                        (_%else144206144220%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r144203%_))))
                                        (_%K144208144333%_
                                         (lambda (_%rest144223%_ _%out144224%_)
                                           (let* ((_%out144225144238%_
                                                   _%out144224%_)
                                                  (_%E144228144242%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out144225144238%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K144232144312%_
                                                    (lambda (_%name144308%_
                                                             _%phi144309%_
                                                             _%key144310%_)
                                                      (_%lp144200%_
                                                       _%rest144223%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi144309%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key144310%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name144308%_)
                                             '()))))
                     _%r144203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K144229144292%_
                                                    (lambda (_%phi144246%_
                                                             _%src144247%_)
                                                      (let* ((_%out144287%_
                                                              (if _%src144247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g144248144257%_
                                              (_%make-import-path144164%_
                                               _%src144247%_))
                                             (_%E144251144261%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g144248144257%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K144253144277%_
                                               (lambda (_%path144275%_)
                                                 _%path144275%_))
                                              (_%K144252144267%_
                                               (lambda (_%path144265%_)
                                                 (cons 'in: _%path144265%_))))
                                          (if (pair? _%g144248144257%_)
                                              (let ((_%tl144255144282%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g144248144257%_)))
                                                    (_%hd144254144280%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g144248144257%_))))
                                                (if (null? _%tl144255144282%_)
                                                    (let ((_%path144285%_
                                                           _%hd144254144280%_))
                                                      (_%K144253144277%_
                                                       _%path144285%_))
                                                    (let ((_%path144270%_
                                                           _%g144248144257%_))
                                                      (_%K144252144267%_
                                                       _%path144270%_))))
                                              (let ((_%path144270%_
                                                     _%g144248144257%_))
                                                (_%K144252144267%_
                                                 _%path144270%_)))))
                                      '()))
                          '#t))
                     (_%out144289%_
                      (if (fxzero? _%phi144246%_)
                          _%out144287%_
                          (cons 'phi:
                                (cons _%phi144246%_
                                      (cons _%out144287%_ '()))))))
                (_%lp144200%_
                 _%rest144223%_
                 (cons _%out144289%_ _%r144203%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match144227144305%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out144225144238%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e144230144295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out144225144238%_
                               '1
                               '#f
                               '#f)))
                           (_%e144231144300%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out144225144238%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src144298%_ _%e144230144295%_)
                            (_%phi144303%_ _%e144231144300%_))
                        (_%K144229144292%_ _%phi144303%_ _%src144298%_)))
                    (_%E144228144242%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out144225144238%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e144233144315%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out144225144238%_
                        '1
                        '#f
                        '#f)))
                    (_%e144234144318%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out144225144238%_
                        '2
                        '#f
                        '#f)))
                    (_%e144235144323%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out144225144238%_
                        '3
                        '#f
                        '#f)))
                    (_%e144236144328%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out144225144238%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key144321%_ _%e144234144318%_)
                     (_%phi144326%_ _%e144235144323%_)
                     (_%name144331%_ _%e144236144328%_))
                 (_%K144232144312%_
                  _%name144331%_
                  _%phi144326%_
                  _%key144321%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match144227144305%_))))))))
                                   (if (pair? _%rest144204144212%_)
                                       (let ((_%hd144209144336%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest144204144212%_)))
                                             (_%tl144210144338%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest144204144212%_))))
                                         (let* ((_%out144341%_
                                                 _%hd144209144336%_)
                                                (_%rest144343%_
                                                 _%tl144210144338%_))
                                           (_%K144208144333%_
                                            _%rest144343%_
                                            _%out144341%_)))
                                       (_%else144206144220%_)))))
                             _%tl144171144186%_)))
                        (_%g144166144176%_ _%g144167144179%_)))))
            (_%g144165144345%_ _%stx144161%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self144121%_ _%stx144122%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self144121%_ 'state)))
        (let* ((_%g144124144134%_
                (lambda (_%g144125144131%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144125144131%_))))
               (_%g144123144157%_
                (lambda (_%g144125144137%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144125144137%_))
                      (let ((_%e144127144139%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144125144137%_))))
                        (let ((_%hd144128144142%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144127144139%_)))
                              (_%tl144129144144%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144127144139%_))))
                          ((lambda (_%L144147%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L144147%_)))
                           _%tl144129144144%_)))
                      (_%g144124144134%_ _%g144125144137%_)))))
          (_%g144123144157%_ _%stx144122%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self143992%_ _%stx143993%_)
        (letrec ((_%generate1143995%_
                  (lambda (_%id144116%_ _%eid144117%_)
                    (let ((_%eid144119%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid144117%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid144119%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx143993%_
                             _%eid144119%_)))
                      (cons (gxc#generate-runtime-identifier _%id144116%_)
                            (cons _%eid144119%_ '()))))))
          (let* ((_%g143997144025%_
                  (lambda (_%g143998144022%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143998144022%_))))
                 (_%g143996144113%_
                  (lambda (_%g143998144028%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143998144028%_))
                        (let ((_%e144001144030%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143998144028%_))))
                          (let ((_%hd144002144033%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144001144030%_)))
                                (_%tl144003144035%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144001144030%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl144003144035%_))
                                (let ((_g153791_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl144003144035%_
                                          '0))))
                                  (begin
                                    (let ((_g153792_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g153791_)
                                                 (##values-length _g153791_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g153792_ 2)))
                                          (error "Context expects 2 values"
                                                 _g153792_)))
                                    (let ((_%target144004144038%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g153791_ 0)))
                                          (_%tl144006144040%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g153791_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144006144040%_))
                                          (letrec ((_%loop144007144043%_
                                                    (lambda (_%hd144005144046%_
                                                             _%eid144011144048%_
                                                             _%id144012144050%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd144005144046%_))
                                                          (let ((_%e144008144053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd144005144046%_))))
                    (let ((_%lp-hd144009144056%_
                           (let ()
                             (declare (not safe))
                             (##car _%e144008144053%_)))
                          (_%lp-tl144010144058%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e144008144053%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd144009144056%_))
                          (let ((_%e144015144061%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd144009144056%_))))
                            (let ((_%hd144016144064%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144015144061%_)))
                                  (_%tl144017144066%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144015144061%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl144017144066%_))
                                  (let ((_%e144018144069%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl144017144066%_))))
                                    (let ((_%hd144019144072%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144018144069%_)))
                                          (_%tl144020144074%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144018144069%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144020144074%_))
                                          (_%loop144007144043%_
                                           _%lp-tl144010144058%_
                                           (cons _%hd144019144072%_
                                                 _%eid144011144048%_)
                                           (cons _%hd144016144064%_
                                                 _%id144012144050%_))
                                          (_%g143997144025%_
                                           _%g143998144028%_))))
                                  (_%g143997144025%_ _%g143998144028%_))))
                          (_%g143997144025%_ _%g143998144028%_))))
                  (let ((_%eid144013144077%_ (reverse _%eid144011144048%_))
                        (_%id144014144079%_ (reverse _%id144012144050%_)))
                    ((lambda (_%L144082%_ _%L144083%_)
                       (cons '%#extern
                             (map _%generate1143995%_
                                  (let ((__tmp153793
                                         (lambda (_%g144098144101%_
                                                  _%g144099144103%_)
                                           (cons _%g144098144101%_
                                                 _%g144099144103%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp153793 '() _%L144083%_))
                                  (let ((__tmp153794
                                         (lambda (_%g144105144108%_
                                                  _%g144106144110%_)
                                           (cons _%g144105144108%_
                                                 _%g144106144110%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp153794 '() _%L144082%_)))))
                     _%eid144013144077%_
                     _%id144014144079%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop144007144043%_
                                             _%target144004144038%_
                                             '()
                                             '()))
                                          (_%g143997144025%_
                                           _%g143998144028%_)))))
                                (_%g143997144025%_ _%g143998144028%_))))
                        (_%g143997144025%_ _%g143998144028%_)))))
            (_%g143996144113%_ _%stx143993%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self143782%_ _%stx143783%_)
        (letrec ((_%generate1143785%_
                  (lambda (_%id143987%_)
                    (let ((_%eid143989%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id143987%_)))
                          (_%ident143990%_
                           (gxc#generate-runtime-identifier _%id143987%_)))
                      (cons '%#define-runtime
                            (cons _%ident143990%_ (cons _%eid143989%_ '()))))))
                 (_%generate*143786%_
                  (lambda (_%all143955%_)
                    (let* ((_%all143956143964%_ _%all143955%_)
                           (_%else143958143972%_
                            (lambda () (cons '%#begin _%all143955%_)))
                           (_%K143960143977%_
                            (lambda (_%one143975%_) _%one143975%_)))
                      (if (pair? _%all143956143964%_)
                          (let ((_%hd143961143980%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all143956143964%_)))
                                (_%tl143962143982%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all143956143964%_))))
                            (let ((_%one143985%_ _%hd143961143980%_))
                              (if (null? _%tl143962143982%_)
                                  (_%K143960143977%_ _%one143985%_)
                                  (_%else143958143972%_))))
                          (_%else143958143972%_))))))
          (let* ((_%g143788143805%_
                  (lambda (_%g143789143802%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143789143802%_))))
                 (_%g143787143952%_
                  (lambda (_%g143789143808%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143789143808%_))
                        (let ((_%e143792143810%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143789143808%_))))
                          (let ((_%hd143793143813%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143792143810%_)))
                                (_%tl143794143815%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143792143810%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143794143815%_))
                                (let ((_%e143795143818%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143794143815%_))))
                                  (let ((_%hd143796143821%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143795143818%_)))
                                        (_%tl143797143823%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143795143818%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143797143823%_))
                                        (let ((_%e143798143826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143797143823%_))))
                                          (let ((_%hd143799143829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143798143826%_)))
                                                (_%tl143800143831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143798143826%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143800143831%_))
                                                ((lambda (_%L143834%_
                                                          _%L143835%_)
                                                   (let _%lp143851%_ ((_%rest143853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L143835%_)
                              (_%r143854%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx153530153531%_
                                                             _%rest143853%_)
                                                            (_%g143859143876%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx153530153531%_)))))
               (let ((_%__kont153532153533%_
                      (lambda (_%L143939%_)
                        (_%lp143851%_ _%L143939%_ _%r143854%_)))
                     (_%__kont153534153535%_
                      (lambda (_%L143912%_ _%L143913%_)
                        (_%lp143851%_
                         _%L143912%_
                         (cons (_%generate1143785%_ _%L143913%_)
                               _%r143854%_))))
                     (_%__kont153536153537%_
                      (lambda (_%L143888%_)
                        (_%generate*143786%_
                         (let ((__tmp153795
                                (cons (_%generate1143785%_ _%L143888%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp153795 _%r143854%_)))))
                     (_%__kont153538153539%_
                      (lambda () (_%generate*143786%_ (reverse _%r143854%_)))))
                 (let ((_%g143857143899%_
                        (lambda ()
                          (let ((_%L143888%_ _%__stx153530153531%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L143888%_))
                                (_%__kont153536153537%_ _%L143888%_)
                                (_%__kont153538153539%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx153530153531%_))
                       (let ((_%e143862143928%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx153530153531%_))))
                         (let ((_%tl143864143933%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e143862143928%_)))
                               (_%hd143863143931%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e143862143928%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd143863143931%_))
                               (let ((_%e143865143936%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd143863143931%_))))
                                 (if (equal? _%e143865143936%_ '#f)
                                     (_%__kont153532153533%_
                                      _%tl143864143933%_)
                                     (_%__kont153534153535%_
                                      _%tl143864143933%_
                                      _%hd143863143931%_)))
                               (_%__kont153534153535%_
                                _%tl143864143933%_
                                _%hd143863143931%_))))
                       (let () (declare (not safe)) (_%g143857143899%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd143799143829%_
                                                 _%hd143796143821%_)
                                                (_%g143788143805%_
                                                 _%g143789143808%_))))
                                        (_%g143788143805%_
                                         _%g143789143808%_))))
                                (_%g143788143805%_ _%g143789143808%_))))
                        (_%g143788143805%_ _%g143789143808%_)))))
            (_%g143787143952%_ _%stx143783%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self143679%_ _%stx143680%_)
        (let* ((_%g143682143699%_
                (lambda (_%g143683143696%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143683143696%_))))
               (_%g143681143779%_
                (lambda (_%g143683143702%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143683143702%_))
                      (let ((_%e143686143704%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143683143702%_))))
                        (let ((_%hd143687143707%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143686143704%_)))
                              (_%tl143688143709%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143686143704%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143688143709%_))
                              (let ((_%e143689143712%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143688143709%_))))
                                (let ((_%hd143690143715%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143689143712%_)))
                                      (_%tl143691143717%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143689143712%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143691143717%_))
                                      (let ((_%e143692143720%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143691143717%_))))
                                        (let ((_%hd143693143723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143692143720%_)))
                                              (_%tl143694143725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143692143720%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143694143725%_))
                                              ((lambda (_%L143728%_
                                                        _%L143729%_)
                                                 (let* ((_%eid143744%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L143729%_)))
                                                        (_%phi143746%_
                                                         (let ((__tmp153796
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp153796 '1)))
                (_%block143748%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self143679%_ 'state))
                  _%phi143746%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g143751143758%_
                                                           (lambda (_%g143752143755%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g143752143755%_))))
                  (_%g143750143776%_
                   (lambda (_%g143752143761%_)
                     ((lambda (_%L143763%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self143679%_ 'state))
                         _%phi143746%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L143763%_ (cons _%L143728%_ '())))))
                      _%g143752143761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g143750143776%_
                                                      _%eid143744%_))
                                                   (if _%block143748%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block143748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L143729%_)
                                             (cons _%eid143744%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L143729%_)
                           (cons _%eid143744%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd143693143723%_
                                               _%hd143690143715%_)
                                              (_%g143682143699%_
                                               _%g143683143702%_))))
                                      (_%g143682143699%_ _%g143683143702%_))))
                              (_%g143682143699%_ _%g143683143702%_))))
                      (_%g143682143699%_ _%g143683143702%_)))))
          (_%g143681143779%_ _%stx143680%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self143611%_ _%stx143612%_)
        (let* ((_%g143614143631%_
                (lambda (_%g143615143628%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143615143628%_))))
               (_%g143613143676%_
                (lambda (_%g143615143634%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143615143634%_))
                      (let ((_%e143618143636%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143615143634%_))))
                        (let ((_%hd143619143639%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143618143636%_)))
                              (_%tl143620143641%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143618143636%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143620143641%_))
                              (let ((_%e143621143644%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143620143641%_))))
                                (let ((_%hd143622143647%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143621143644%_)))
                                      (_%tl143623143649%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143621143644%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143623143649%_))
                                      (let ((_%e143624143652%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143623143649%_))))
                                        (let ((_%hd143625143655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143624143652%_)))
                                              (_%tl143626143657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143624143652%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143626143657%_))
                                              ((lambda (_%L143660%_
                                                        _%L143661%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L143661%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L143660%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd143625143655%_
                                               _%hd143622143647%_)
                                              (_%g143614143631%_
                                               _%g143615143634%_))))
                                      (_%g143614143631%_ _%g143615143634%_))))
                              (_%g143614143631%_ _%g143615143634%_))))
                      (_%g143614143631%_ _%g143615143634%_)))))
          (_%g143613143676%_ _%stx143612%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self143608%_ _%stx143609%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self143608%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx143609%_)
        (gxc#generate-meta-define-values% _%self143608%_ _%stx143609%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self143605%_ _%stx143606%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self143605%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx143606%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp153798 (list)) (__tmp153797 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp153798
         '(src n open blocks)
         __tmp153797
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args143602%_
        (apply make-instance gxc#meta-state::t _%$args143602%_)))
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
      (lambda (_%self142947143586%_ _%ctx143588%_)
        (let* ((_%self143590%_ _%self142947143586%_)
               (_%self143592%_ _%self143590%_))
          (if (let ((__tmp153799
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self143592%_))))
                (declare (not safe))
                (##fx< '4 __tmp153799))
              (begin
                (let ((__tmp153800
                       (let ((__tmp153801
                              (##structure-ref
                               _%ctx143588%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp153801))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self143592%_
                   __tmp153800
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self143592%_ '1 '2 '#f '#f))
                (let ((__tmp153802
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self143592%_
                   __tmp153802
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self143592%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp153803
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self143592%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self143592%_
                       '4
                       __tmp153803))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp153805 (list)) (__tmp153804 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp153805
         '(ctx phi n code)
         __tmp153804
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args143461%_
        (apply make-instance gxc#meta-state-block::t _%$args143461%_)))
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
      (lambda (_%state143420%_ _%phi143421%_)
        (let* ((_%state143422143430%_ _%state143420%_)
               (_%E143424143434%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state143422143430%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K143425143443%_
                (lambda (_%open143437%_ _%n143438%_ _%src143439%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open143437%_ _%phi143421%_))
                      '#f
                      (let ((_%block-ref143441%_
                             (let ((__tmp153806 (number->string _%n143438%_)))
                               (declare (not safe))
                               (##string-append
                                _%src143439%_
                                '"~"
                                __tmp153806))))
                        (##structure-set!
                         _%state143420%_
                         (let () (declare (not safe)) (##fx+ _%n143438%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp153807
                               (let ((__tmp153808
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp153808
                                  _%phi143421%_
                                  _%n143438%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open143437%_ _%phi143421%_ __tmp153807))
                        _%block-ref143441%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state143422143430%_
                 'gxc#meta-state::t))
              (let* ((_%e143426143446%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state143422143430%_
                         '1
                         '#f
                         '#f)))
                     (_%src143449%_ _%e143426143446%_)
                     (_%e143427143451%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state143422143430%_
                         '2
                         '#f
                         '#f)))
                     (_%n143454%_ _%e143427143451%_)
                     (_%e143428143456%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state143422143430%_
                         '3
                         '#f
                         '#f)))
                     (_%open143459%_ _%e143428143456%_))
                (_%K143425143443%_ _%open143459%_ _%n143454%_ _%src143449%_))
              (_%E143424143434%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state143414%_ _%phi143415%_ _%stx143416%_)
        (let ((_%block143418%_
               (let ((__tmp153809
                      (##structure-ref
                       _%state143414%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp153809 _%phi143415%_))))
          (##structure-set!
           _%block143418%_
           (cons _%stx143416%_
                 (##structure-ref
                  _%block143418%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state143408%_)
        (##structure-set!
         _%state143408%_
         (let ((__tmp153812
                (lambda (_%_143410%_ _%block143411%_ _%r143412%_)
                  (cons _%block143411%_ _%r143412%_)))
               (__tmp153811
                (##structure-ref _%state143408%_ '4 gxc#meta-state::t '#f))
               (__tmp153810
                (##structure-ref _%state143408%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp153812 __tmp153811 __tmp153810))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state143408%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state143360%_)
        (gxc#meta-state-end-phi! _%state143360%_)
        (let ((__tmp153814
               (lambda (_%block143362%_ _%r143363%_)
                 (let* ((_%block143364143373%_ _%block143362%_)
                        (_%E143366143377%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block143364143373%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K143367143385%_
                         (lambda (_%code143380%_
                                  _%n143381%_
                                  _%phi143382%_
                                  _%ctx143383%_)
                           (if (null? _%code143380%_)
                               _%r143363%_
                               (cons (cons _%ctx143383%_
                                           (cons _%phi143382%_
                                                 (cons _%n143381%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code143380%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r143363%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block143364143373%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e143368143388%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block143364143373%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx143391%_ _%e143368143388%_)
                              (_%e143369143393%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block143364143373%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi143396%_ _%e143369143393%_)
                              (_%e143370143398%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block143364143373%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n143401%_ _%e143370143398%_)
                              (_%e143371143403%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block143364143373%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code143406%_ _%e143371143403%_))
                         (_%K143367143385%_
                          _%code143406%_
                          _%n143401%_
                          _%phi143396%_
                          _%ctx143391%_))
                       (_%E143366143377%_)))))
              (__tmp153813
               (##structure-ref _%state143360%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp153814 '() __tmp153813))))
    (define gxc#collect-expression-refs
      (lambda (_%stx143356%_)
        (let ((_%ht143358%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht143358%_ _%stx143356%_)
          _%ht143358%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self143299%_ _%stx143300%_)
        (let* ((_%g143302143315%_
                (lambda (_%g143303143312%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143303143312%_))))
               (_%g143301143353%_
                (lambda (_%g143303143318%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143303143318%_))
                      (let ((_%e143305143320%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143303143318%_))))
                        (let ((_%hd143306143323%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143305143320%_)))
                              (_%tl143307143325%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143305143320%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143307143325%_))
                              (let ((_%e143308143328%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143307143325%_))))
                                (let ((_%hd143309143331%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143308143328%_)))
                                      (_%tl143310143333%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143308143328%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl143310143333%_))
                                      ((lambda (_%L143336%_)
                                         (let* ((_%bind143348%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L143336%_)))
                                                (_%eid143350%_
                                                 (if _%bind143348%_
                                                     (##structure-ref
                                                      _%bind143348%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L143336%_))))
                                                (__tmp153815
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self143299%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp153815
                                            _%eid143350%_
                                            _%eid143350%_)))
                                       _%hd143309143331%_)
                                      (_%g143302143315%_ _%g143303143318%_))))
                              (_%g143302143315%_ _%g143303143318%_))))
                      (_%g143302143315%_ _%g143303143318%_)))))
          (_%g143301143353%_ _%stx143300%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self143226%_ _%stx143227%_)
        (let* ((_%g143229143246%_
                (lambda (_%g143230143243%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143230143243%_))))
               (_%g143228143296%_
                (lambda (_%g143230143249%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143230143249%_))
                      (let ((_%e143233143251%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143230143249%_))))
                        (let ((_%hd143234143254%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143233143251%_)))
                              (_%tl143235143256%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143233143251%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143235143256%_))
                              (let ((_%e143236143259%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143235143256%_))))
                                (let ((_%hd143237143262%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143236143259%_)))
                                      (_%tl143238143264%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143236143259%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143238143264%_))
                                      (let ((_%e143239143267%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143238143264%_))))
                                        (let ((_%hd143240143270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143239143267%_)))
                                              (_%tl143241143272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143239143267%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143241143272%_))
                                              ((lambda (_%L143275%_
                                                        _%L143276%_)
                                                 (let* ((_%bind143291%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L143276%_)))
                                                        (_%eid143293%_
                                                         (if _%bind143291%_
                                                             (##structure-ref
                                                              _%bind143291%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L143276%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp153816
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self143226%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp153816
                                                      _%eid143293%_
                                                      _%eid143293%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self143226%_
                                                      _%L143275%_))))
                                               _%hd143240143270%_
                                               _%hd143237143262%_)
                                              (_%g143229143246%_
                                               _%g143230143249%_))))
                                      (_%g143229143246%_ _%g143230143249%_))))
                              (_%g143229143246%_ _%g143230143249%_))))
                      (_%g143229143246%_ _%g143230143249%_)))))
          (_%g143228143296%_ _%stx143227%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self143183%_ _%stx143184%_)
        (let* ((_%g143186143196%_
                (lambda (_%g143187143193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143187143193%_))))
               (_%g143185143223%_
                (lambda (_%g143187143199%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143187143199%_))
                      (let ((_%e143189143201%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143187143199%_))))
                        (let ((_%hd143190143204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143189143201%_)))
                              (_%tl143191143206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143189143201%_))))
                          ((lambda (_%L143209%_)
                             (let ((__tmp153817
                                    (lambda (_%g143218143220%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self143183%_
                                         _%g143218143220%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp153817 _%L143209%_)))
                           _%tl143191143206%_)))
                      (_%g143186143196%_ _%g143187143199%_)))))
          (_%g143185143223%_ _%stx143184%_))))
    (define gxc#count-values-single%
      (lambda (_%self143180%_ _%stx143181%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self143046%_ _%stx143047%_)
        (let* ((_%__stx153560153561%_ _%stx143047%_)
               (_%g143050143079%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx153560153561%_)))))
          (let ((_%__kont153562153563%_
                 (lambda (_%L143147%_ _%L143148%_)
                   (length (let ((__tmp153818
                                  (lambda (_%g143169143172%_ _%g143170143174%_)
                                    (cons _%g143169143172%_
                                          _%g143170143174%_))))
                             (declare (not safe))
                             (__foldr1 __tmp153818 '() _%L143147%_)))))
                (_%__kont153566153567%_ (lambda () '#f)))
            (let ((_%__match153605153606%_
                   (lambda (_%e143054143091%_
                            _%hd143055143094%_
                            _%tl143056143096%_
                            _%e143057143099%_
                            _%hd143058143102%_
                            _%tl143059143104%_
                            _%e143060143107%_
                            _%hd143061143110%_
                            _%tl143062143112%_
                            _%e143063143115%_
                            _%hd143064143118%_
                            _%tl143065143120%_
                            _%__splice153564153565%_
                            _%target143066143123%_
                            _%tl143068143125%_)
                     (letrec ((_%loop143069143128%_
                               (lambda (_%hd143067143131%_
                                        _%rand143073143133%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd143067143131%_))
                                     (let ((_%e143070143136%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd143067143131%_))))
                                       (let ((_%lp-tl143072143141%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e143070143136%_)))
                                             (_%lp-hd143071143139%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e143070143136%_))))
                                         (_%loop143069143128%_
                                          _%lp-tl143072143141%_
                                          (cons _%lp-hd143071143139%_
                                                _%rand143073143133%_))))
                                     (let ((_%rand143074143144%_
                                            (reverse _%rand143073143133%_)))
                                       (let ((_%L143147%_ _%rand143074143144%_)
                                             (_%L143148%_ _%hd143064143118%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L143148%_
                                                'values))
                                             (_%__kont153562153563%_
                                              _%L143147%_
                                              _%L143148%_)
                                             (_%__kont153566153567%_))))))))
                       (_%loop143069143128%_ _%target143066143123%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx153560153561%_))
                  (let ((_%e143054143091%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx153560153561%_))))
                    (let ((_%tl143056143096%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143054143091%_)))
                          (_%hd143055143094%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143054143091%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143056143096%_))
                          (let ((_%e143057143099%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143056143096%_))))
                            (let ((_%tl143059143104%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143057143099%_)))
                                  (_%hd143058143102%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143057143099%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143058143102%_))
                                  (let ((_%e143060143107%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143058143102%_))))
                                    (let ((_%tl143062143112%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143060143107%_)))
                                          (_%hd143061143110%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143060143107%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143061143110%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143061143110%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143062143112%_))
                                                  (let ((_%e143063143115%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143062143112%_))))
                                                    (let ((_%tl143065143120%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143063143115%_)))
                                                          (_%hd143064143118%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143063143115%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143065143120%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl143059143104%_))
                      (let ((_%__splice153564153565%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl143059143104%_
                                '0))))
                        (let ((_%tl143068143125%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice153564153565%_ '1)))
                              (_%target143066143123%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice153564153565%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143068143125%_))
                              (_%__match153605153606%_
                               _%e143054143091%_
                               _%hd143055143094%_
                               _%tl143056143096%_
                               _%e143057143099%_
                               _%hd143058143102%_
                               _%tl143059143104%_
                               _%e143060143107%_
                               _%hd143061143110%_
                               _%tl143062143112%_
                               _%e143063143115%_
                               _%hd143064143118%_
                               _%tl143065143120%_
                               _%__splice153564153565%_
                               _%target143066143123%_
                               _%tl143068143125%_)
                              (_%__kont153566153567%_))))
                      (_%__kont153566153567%_))
                  (_%__kont153566153567%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont153566153567%_))
                                              (_%__kont153566153567%_))
                                          (_%__kont153566153567%_))))
                                  (_%__kont153566153567%_))))
                          (_%__kont153566153567%_))))
                  (_%__kont153566153567%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self142949%_ _%stx142950%_)
        (let* ((_%g142952142973%_
                (lambda (_%g142953142970%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142953142970%_))))
               (_%g142951143043%_
                (lambda (_%g142953142976%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142953142976%_))
                      (let ((_%e142957142978%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142953142976%_))))
                        (let ((_%hd142958142981%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142957142978%_)))
                              (_%tl142959142983%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142957142978%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142959142983%_))
                              (let ((_%e142960142986%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142959142983%_))))
                                (let ((_%hd142961142989%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142960142986%_)))
                                      (_%tl142962142991%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142960142986%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142962142991%_))
                                      (let ((_%e142963142994%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142962142991%_))))
                                        (let ((_%hd142964142997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142963142994%_)))
                                              (_%tl142965142999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142963142994%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142965142999%_))
                                              (let ((_%e142966143002%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142965142999%_))))
                                                (let ((_%hd142967143005%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142966143002%_)))
                                                      (_%tl142968143007%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142966143002%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142968143007%_))
                                                      ((lambda (_%L143010%_
                                                                _%L143011%_
                                                                _%L143012%_)
                                                         (let ((_%c1143029143031%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self142949%_ _%L143011%_))))
                   (if _%c1143029143031%_
                       (let* ((_%c1143034%_ _%c1143029143031%_)
                              (_%c2143035143037%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self142949%_
                                  _%L143010%_))))
                         (if _%c2143035143037%_
                             (let ((_%c2143040%_ _%c2143035143037%_))
                               (if (fx= _%c1143034%_ _%c2143040%_)
                                   _%c1143034%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd142967143005%_
               _%hd142964142997%_
               _%hd142961142989%_)
              (_%g142952142973%_ _%g142953142976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142952142973%_
                                               _%g142953142976%_))))
                                      (_%g142952142973%_ _%g142953142976%_))))
                              (_%g142952142973%_ _%g142953142976%_))))
                      (_%g142952142973%_ _%g142953142976%_)))))
          (_%g142951143043%_ _%stx142950%_))))))
