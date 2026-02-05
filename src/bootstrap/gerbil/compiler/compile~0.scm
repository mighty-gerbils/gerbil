(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1770326749)
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
        (letrec ((_%hash-e171406%_
                  (lambda (_%id171408%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id171408%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e171406%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp172793 (list gxc#::void::t))
            (__tmp172792 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp172793
         '()
         __tmp172792
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args171402%_
        (apply make-instance gxc#::collect-bindings::t _%$args171402%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp172794
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
        (__make-atomic-promise __tmp172794)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx171394%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self171397%_
                (let ((__obj172768
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj172768))
               (__tmp172795
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171397%_ _%stx171394%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172795
           gxc#current-compile-method
           _%self171397%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp172797 (list gxc#::void::t))
            (__tmp172796 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp172797
         '(modules)
         __tmp172796
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args171391%_
        (apply make-instance gxc#::lift-modules::t _%$args171391%_)))
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
      (let ((__tmp172798
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
        (__make-atomic-promise __tmp172798)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords171366%_ _%modules171363171367%_ _%stx171368%_)
        (let ((_%modules171371%_
               (if (eq? _%modules171363171367%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules171363171367%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self171373%_
                  (let ((__obj172770
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172770
                       _%modules171371%_
                       '1
                       '#f
                       '#f))
                    __obj172770))
                 (__tmp172799
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171373%_ _%stx171368%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172799
             gxc#current-compile-method
             _%self171373%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords171380%_ . _%args171381%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords171380%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171380%_
                  'modules:
                  absent-value))
               _%args171381%_)))
    (define gxc#apply-lift-modules
      (lambda _%args171364171387%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args171364171387%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp172801 (list)) (__tmp172800 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp172801
         '()
         __tmp172800
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args171359%_
        (apply make-instance gxc#::find-runtime-code::t _%$args171359%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp172802
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
        (__make-atomic-promise __tmp172802)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx171351%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self171354%_
                (let ((__obj172772
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj172772))
               (__tmp172803
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171354%_ _%stx171351%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172803
           gxc#current-compile-method
           _%self171354%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp172805 (list gxc#::false::t))
            (__tmp172804 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp172805
         '()
         __tmp172804
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args171348%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args171348%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp172806
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
        (__make-atomic-promise __tmp172806)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx171340%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self171343%_
                (let ((__obj172774
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj172774))
               (__tmp172807
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171343%_ _%stx171340%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172807
           gxc#current-compile-method
           _%self171343%_))))
    (define gxc#::count-values::t
      (let ((__tmp172809 (list gxc#::false-expression::t))
            (__tmp172808 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp172809
         '()
         __tmp172808
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args171337%_
        (apply make-instance gxc#::count-values::t _%$args171337%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp172810
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
        (__make-atomic-promise __tmp172810)))
    (define gxc#apply-count-values
      (lambda (_%stx171329%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self171332%_
                (let ((__obj172776
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj172776))
               (__tmp172811
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171332%_ _%stx171329%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172811
           gxc#current-compile-method
           _%self171332%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp172812 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp172812
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args171326%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args171326%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp172813
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
        (__make-atomic-promise __tmp172813)))
    (define gxc#::generate-loader::t
      (let ((__tmp172815 (list gxc#::generate-runtime-empty::t))
            (__tmp172814 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp172815
         '()
         __tmp172814
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args171322%_
        (apply make-instance gxc#::generate-loader::t _%$args171322%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp172816
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
        (__make-atomic-promise __tmp172816)))
    (define gxc#apply-generate-loader
      (lambda (_%stx171314%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self171317%_
                (let ((__obj172779
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj172779))
               (__tmp172817
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171317%_ _%stx171314%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172817
           gxc#current-compile-method
           _%self171317%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp172818 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp172818
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args171311%_
        (apply make-instance gxc#::generate-runtime::t _%$args171311%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp172819
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
        (__make-atomic-promise __tmp172819)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx171303%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self171306%_
                (let ((__obj172781
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj172781))
               (__tmp172820
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171306%_ _%stx171303%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172820
           gxc#current-compile-method
           _%self171306%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp172822 (list gxc#::generate-runtime::t))
            (__tmp172821 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp172822
         '()
         __tmp172821
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args171300%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args171300%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp172823
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
        (__make-atomic-promise __tmp172823)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx171292%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self171295%_
                (let ((__obj172783
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj172783))
               (__tmp172824
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171295%_ _%stx171292%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172824
           gxc#current-compile-method
           _%self171295%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp172825 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp172825
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args171289%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args171289%_)))
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
      (let ((__tmp172826
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
        (__make-atomic-promise __tmp172826)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords171264%_ _%table171261171265%_ _%stx171266%_)
        (let ((_%table171269%_
               (if (eq? _%table171261171265%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table171261171265%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self171271%_
                  (let ((__obj172785
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172785
                       _%table171269%_
                       '1
                       '#f
                       '#f))
                    __obj172785))
                 (__tmp172827
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171271%_ _%stx171266%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172827
             gxc#current-compile-method
             _%self171271%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords171278%_ . _%args171279%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords171278%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171278%_
                  'table:
                  absent-value))
               _%args171279%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args171262171285%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args171262171285%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp172829 (list gxc#::void-expression::t))
            (__tmp172828 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp172829
         '(state)
         __tmp172828
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args171257%_
        (apply make-instance gxc#::generate-meta::t _%$args171257%_)))
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
      (let ((__tmp172830
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
        (__make-atomic-promise __tmp172830)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords171232%_ _%state171229171233%_ _%stx171234%_)
        (let ((_%state171237%_
               (if (eq? _%state171229171233%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state171229171233%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self171239%_
                  (let ((__obj172787
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172787
                       _%state171237%_
                       '1
                       '#f
                       '#f))
                    __obj172787))
                 (__tmp172831
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171239%_ _%stx171234%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172831
             gxc#current-compile-method
             _%self171239%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords171246%_ . _%args171247%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords171246%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171246%_
                  'state:
                  absent-value))
               _%args171247%_)))
    (define gxc#apply-generate-meta
      (lambda _%args171230171253%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args171230171253%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp172833 (list)) (__tmp172832 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp172833
         '(state)
         __tmp172832
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args171225%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args171225%_)))
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
      (let ((__tmp172834
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
        (__make-atomic-promise __tmp172834)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords171200%_ _%state171197171201%_ _%stx171202%_)
        (let ((_%state171205%_
               (if (eq? _%state171197171201%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state171197171201%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self171207%_
                  (let ((__obj172789
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172789
                       _%state171205%_
                       '1
                       '#f
                       '#f))
                    __obj172789))
                 (__tmp172835
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171207%_ _%stx171202%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172835
             gxc#current-compile-method
             _%self171207%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords171214%_ . _%args171215%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords171214%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171214%_
                  'state:
                  absent-value))
               _%args171215%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args171198171221%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args171198171221%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self171126%_ _%stx171127%_)
        (let* ((_%g171129171146%_
                (lambda (_%g171130171143%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171130171143%_))))
               (_%g171128171193%_
                (lambda (_%g171130171149%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171130171149%_))
                      (let ((_%e171133171151%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171130171149%_))))
                        (let ((_%hd171134171154%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171133171151%_)))
                              (_%tl171135171156%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171133171151%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171135171156%_))
                              (let ((_%e171136171159%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171135171156%_))))
                                (let ((_%hd171137171162%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171136171159%_)))
                                      (_%tl171138171164%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171136171159%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171138171164%_))
                                      (let ((_%e171139171167%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171138171164%_))))
                                        (let ((_%hd171140171170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171139171167%_)))
                                              (_%tl171141171172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171139171167%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171141171172%_))
                                              ((lambda (_%g171131171175%_
                                                        _%g171132171176%_)
                                                 (let ((__tmp172836
                                                        (lambda (_%bind171191%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind171191%_))
                      (gxc#add-module-binding! _%bind171191%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp172836
                                                    _%g171132171176%_)))
                                               _%hd171140171170%_
                                               _%hd171137171162%_)
                                              (_%g171129171146%_
                                               _%g171130171149%_))))
                                      (_%g171129171146%_ _%g171130171149%_))))
                              (_%g171129171146%_ _%g171130171149%_))))
                      (_%g171129171146%_ _%g171130171149%_)))))
          (_%g171128171193%_ _%stx171127%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self171058%_ _%stx171059%_)
        (let* ((_%g171061171078%_
                (lambda (_%g171062171075%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171062171075%_))))
               (_%g171060171123%_
                (lambda (_%g171062171081%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171062171081%_))
                      (let ((_%e171065171083%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171062171081%_))))
                        (let ((_%hd171066171086%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171065171083%_)))
                              (_%tl171067171088%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171065171083%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171067171088%_))
                              (let ((_%e171068171091%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171067171088%_))))
                                (let ((_%hd171069171094%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171068171091%_)))
                                      (_%tl171070171096%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171068171091%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171070171096%_))
                                      (let ((_%e171071171099%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171070171096%_))))
                                        (let ((_%hd171072171102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171071171099%_)))
                                              (_%tl171073171104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171071171099%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171073171104%_))
                                              ((lambda (_%g171063171107%_
                                                        _%g171064171108%_)
                                                 (gxc#add-module-binding!
                                                  _%g171064171108%_
                                                  '#t))
                                               _%hd171072171102%_
                                               _%hd171069171094%_)
                                              (_%g171061171078%_
                                               _%g171062171081%_))))
                                      (_%g171061171078%_ _%g171062171081%_))))
                              (_%g171061171078%_ _%g171062171081%_))))
                      (_%g171061171078%_ _%g171062171081%_)))))
          (_%g171060171123%_ _%stx171059%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self171000%_ _%stx171001%_)
        (let* ((_%g171003171017%_
                (lambda (_%g171004171014%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171004171014%_))))
               (_%g171002171055%_
                (lambda (_%g171004171020%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171004171020%_))
                      (let ((_%e171007171022%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171004171020%_))))
                        (let ((_%hd171008171025%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171007171022%_)))
                              (_%tl171009171027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171007171022%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171009171027%_))
                              (let ((_%e171010171030%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171009171027%_))))
                                (let ((_%hd171011171033%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171010171030%_)))
                                      (_%tl171012171035%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171010171030%_))))
                                  ((lambda (_%g171005171038%_
                                            _%g171006171039%_)
                                     (let ((_%ctx171052%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g171006171039%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self171000%_
                                           'modules))
                                        (cons _%ctx171052%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self171000%_
                                                        'modules)))))
                                       (let ((__tmp172837
                                              (lambda ()
                                                (let ((__tmp172838
                                                       (##structure-ref
                                                        _%ctx171052%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self171000%_
                                                   __tmp172838)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp172837
                                          gx#current-expander-context
                                          _%ctx171052%_))))
                                   _%tl171012171035%_
                                   _%hd171011171033%_)))
                              (_%g171003171017%_ _%g171004171020%_))))
                      (_%g171003171017%_ _%g171004171020%_)))))
          (_%g171002171055%_ _%stx171001%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls170954170956%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls170954170956%_
              (let ((_%decls170958%_ _%decls170954170956%_))
                (let _%lp170960%_ ((_%rest170962%_ _%decls170958%_))
                  (let* ((_%rest170963170971%_ _%rest170962%_)
                         (_%else170965170979%_ (lambda () '#f))
                         (_%K170967170988%_
                          (lambda (_%decls170982%_ _%decl170983%_)
                            (if (equal? _%decl170983%_ '(not safe))
                                '#t
                                (if (equal? _%decl170983%_ '(safe))
                                    '#f
                                    (_%lp170960%_ _%decls170982%_))))))
                    (if (pair? _%rest170963170971%_)
                        (let ((_%hd170968170991%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest170963170971%_)))
                              (_%tl170969170993%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest170963170971%_))))
                          (let* ((_%decl170996%_ _%hd170968170991%_)
                                 (_%decls170998%_ _%tl170969170993%_))
                            (_%K170967170988%_
                             _%decls170998%_
                             _%decl170996%_)))
                        (_%else170965170979%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id170948%_ _%syntax?170949%_)
        (let ((_%eid170951%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id170948%_))
                '1
                gx#binding::t
                '#f))
              (_%ht170952%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid170951%_))
              '#!void
              (let ((__tmp172839
                     (let ((__tmp172840
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid170951%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp172840 _%syntax?170949%_))))
                (declare (not safe))
                (hash-put! _%ht170952%_ _%eid170951%_ __tmp172839))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id170946%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id170946%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key170901%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key170901%_))
            _%key170901%_
            (if (uninterned-symbol? _%key170901%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key170901%_))
                (let* ((_%key170905170912%_ _%key170901%_)
                       (_%E170907170916%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key170905170912%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K170908170934%_
                        (lambda (_%mark170919%_ _%eid170920%_)
                          (let ((_%$e170922%_
                                 (##structure-ref
                                  _%mark170919%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e170922%_
                                ((lambda (_%ht170925%_)
                                   (let ((_%$e170927%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht170925%_
                                             _%eid170920%_))))
                                     (if _%$e170927%_
                                         ((lambda (_%id170930%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id170930%_))
                                                _%id170930%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id170930%_))))
                                          _%$e170927%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid170920%_))))
                                 _%$e170922%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid170920%_))))))
                  (if (pair? _%key170905170912%_)
                      (let ((_%hd170909170937%_
                             (let ()
                               (declare (not safe))
                               (##car _%key170905170912%_)))
                            (_%tl170910170939%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key170905170912%_))))
                        (let* ((_%eid170942%_ _%hd170909170937%_)
                               (_%mark170944%_ _%tl170910170939%_))
                          (_%K170908170934%_ _%mark170944%_ _%eid170942%_)))
                      (_%E170907170916%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self170898%_ _%stx170899%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self170745%_ _%stx170746%_)
        (letrec ((_%simplify170748%_
                  (lambda (_%body170796%_)
                    (let _%lp170798%_ ((_%rest170800%_ _%body170796%_)
                                       (_%r170801%_ '()))
                      (let* ((_%rest170802170810%_ _%rest170800%_)
                             (_%else170804170818%_
                              (lambda () (reverse _%r170801%_)))
                             (_%K170806170886%_
                              (lambda (_%rest170821%_ _%hd170822%_)
                                (let* ((_%hd170823170839%_ _%hd170822%_)
                                       (_%else170827170847%_
                                        (lambda ()
                                          (_%lp170798%_
                                           _%rest170821%_
                                           (cons _%hd170822%_ _%r170801%_)))))
                                  (let ((_%K170835170876%_
                                         (lambda (_%exprs170874%_)
                                           (_%lp170798%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest170821%_
                                               _%exprs170874%_))
                                            _%r170801%_)))
                                        (_%K170830170860%_
                                         (lambda ()
                                           (if (null? _%rest170821%_)
                                               (_%lp170798%_
                                                _%rest170821%_
                                                (cons _%hd170822%_
                                                      _%r170801%_))
                                               (_%lp170798%_
                                                _%rest170821%_
                                                _%r170801%_))))
                                        (_%K170829170852%_
                                         (lambda ()
                                           (if (null? _%rest170821%_)
                                               (_%lp170798%_
                                                _%rest170821%_
                                                (cons _%hd170822%_
                                                      _%r170801%_))
                                               (_%lp170798%_
                                                _%rest170821%_
                                                _%r170801%_)))))
                                    (let ((_%try-match170826170855%_
                                           (lambda ()
                                             (if (symbol? _%hd170823170839%_)
                                                 (_%K170829170852%_)
                                                 (_%else170827170847%_)))))
                                      (if (pair? _%hd170823170839%_)
                                          (let ((_%tl170837170881%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd170823170839%_)))
                                                (_%hd170836170879%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd170823170839%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd170836170879%_
                                                         'begin))
                                                (let ((_%exprs170884%_
                                                       _%tl170837170881%_))
                                                  (_%K170835170876%_
                                                   _%exprs170884%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd170836170879%_
                                                             'quote))
                                                    (if (pair? _%tl170837170881%_)
                                                        (let ((_%tl170834170868%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl170837170881%_))))
                  (if (null? _%tl170834170868%_)
                      (_%K170830170860%_)
                      (_%try-match170826170855%_)))
                (_%try-match170826170855%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match170826170855%_))))
                                          (_%try-match170826170855%_))))))))
                        (if (pair? _%rest170802170810%_)
                            (let ((_%hd170807170889%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest170802170810%_)))
                                  (_%tl170808170891%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest170802170810%_))))
                              (let* ((_%hd170894%_ _%hd170807170889%_)
                                     (_%rest170896%_ _%tl170808170891%_))
                                (_%K170806170886%_
                                 _%rest170896%_
                                 _%hd170894%_)))
                            (_%else170804170818%_)))))))
          (let* ((_%g170750170760%_
                  (lambda (_%g170751170757%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g170751170757%_))))
                 (_%g170749170793%_
                  (lambda (_%g170751170763%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g170751170763%_))
                        (let ((_%e170753170765%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170751170763%_))))
                          (let ((_%hd170754170768%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170753170765%_)))
                                (_%tl170755170770%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170753170765%_))))
                            ((lambda (_%g170752170773%_)
                               (let* ((_%body170788%_
                                       (map (lambda (_%g170783170785%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self170745%_
                                                 _%g170783170785%_)))
                                            _%g170752170773%_))
                                      (_%body170790%_
                                       (_%simplify170748%_ _%body170788%_)))
                                 (if (let ((__tmp172841
                                            (length _%body170790%_)))
                                       (declare (not safe))
                                       (##fx= __tmp172841 '1))
                                     (car _%body170790%_)
                                     (cons 'begin _%body170790%_))))
                             _%tl170755170770%_)))
                        (_%g170750170760%_ _%g170751170763%_)))))
            (_%g170749170793%_ _%stx170746%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self170706%_ _%stx170707%_)
        (let* ((_%g170709170719%_
                (lambda (_%g170710170716%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170710170716%_))))
               (_%g170708170742%_
                (lambda (_%g170710170722%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170710170722%_))
                      (let ((_%e170712170724%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170710170722%_))))
                        (let ((_%hd170713170727%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170712170724%_)))
                              (_%tl170714170729%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170712170724%_))))
                          ((lambda (_%g170711170732%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g170711170732%_))))
                           _%tl170714170729%_)))
                      (_%g170709170719%_ _%g170710170722%_)))))
          (_%g170708170742%_ _%stx170707%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self170472%_ _%stx170473%_)
        (let* ((_%__stx171431171432%_ _%stx170473%_)
               (_%g170477170529%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171431171432%_)))))
          (let ((_%__kont171433171434%_
                 (lambda (_%g170479170688%_ _%g170480170689%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self170472%_ _%g170479170688%_))))
                (_%__kont171435171436%_
                 (lambda (_%g170490170636%_
                          _%g170491170637%_
                          _%g170492170638%_)
                   (if (let ((__tmp172842
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g170492170638%_))))
                         (declare (not safe))
                         (##memq __tmp172842 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self170472%_
                          _%g170490170636%_)))))
                (_%__kont171439171440%_
                 (lambda (_%g170514170558%_ _%g170515170559%_)
                   (let ((_%decls170574%_
                          (map gx#syntax->datum _%g170515170559%_)))
                     (let ((__tmp172845
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls170574%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self170472%_
                                                   _%g170514170558%_))
                                                '())))))
                           (__tmp172843
                            (let ((__tmp172844
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp172844 _%decls170574%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp172845
                        gxc#current-compile-decls
                        __tmp172843))))))
            (let* ((_%__match171486171487%_
                    (lambda (_%e170493170582%_
                             _%hd170494170585%_
                             _%tl170495170587%_
                             _%e170496170590%_
                             _%hd170497170593%_
                             _%tl170498170595%_
                             _%e170499170598%_
                             _%hd170500170601%_
                             _%tl170501170603%_
                             _%__splice171437171438%_
                             _%target170502170606%_
                             _%tl170504170608%_)
                      (letrec ((_%loop170505170611%_
                                (lambda (_%hd170503170614%_
                                         _%param170509170616%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170503170614%_))
                                      (let ((_%e170506170618%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170503170614%_))))
                                        (let ((_%lp-tl170508170623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170506170618%_)))
                                              (_%lp-hd170507170621%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170506170618%_))))
                                          (_%loop170505170611%_
                                           _%lp-tl170508170623%_
                                           (cons _%lp-hd170507170621%_
                                                 _%param170509170616%_))))
                                      (let ((_%param170510170626%_
                                             (reverse _%param170509170616%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170498170595%_))
                                            (let ((_%e170511170628%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170498170595%_))))
                                              (let ((_%tl170513170633%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170511170628%_)))
                                                    (_%hd170512170631%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170511170628%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl170513170633%_))
                                                    (let ((_%g170490170636%_
                                                           _%hd170512170631%_)
                                                          (_%g170491170637%_
                                                           _%param170510170626%_)
                                                          (_%g170492170638%_
                                                           _%hd170500170601%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g170492170638%_))
                       (not (let ((__tmp172846
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g170492170638%_))))
                              (declare (not safe))
                              (##memq __tmp172846 gxc#gambit-annotations))))
                  (_%__kont171435171436%_
                   _%g170490170636%_
                   _%g170491170637%_
                   _%g170492170638%_)
                  (_%__kont171439171440%_
                   _%hd170512170631%_
                   _%hd170497170593%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g170477170529%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g170477170529%_))))))))
                        (_%loop170505170611%_ _%target170502170606%_ '()))))
                   (_%__match171460171461%_
                    (lambda (_%e170481170664%_
                             _%hd170482170667%_
                             _%tl170483170669%_
                             _%e170484170672%_
                             _%hd170485170675%_
                             _%tl170486170677%_
                             _%e170487170680%_
                             _%hd170488170683%_
                             _%tl170489170685%_)
                      (let ((_%g170479170688%_ _%hd170488170683%_)
                            (_%g170480170689%_ _%hd170485170675%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g170480170689%_))
                            (_%__kont171433171434%_
                             _%g170479170688%_
                             _%g170480170689%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd170485170675%_))
                                (let ((_%e170499170598%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd170485170675%_))))
                                  (let ((_%tl170501170603%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170499170598%_)))
                                        (_%hd170500170601%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170499170598%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl170501170603%_))
                                        (let ((_%__splice171437171438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl170501170603%_
                                                  '0))))
                                          (let ((_%tl170504170608%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171437171438%_
                                                    '1)))
                                                (_%target170502170606%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171437171438%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170504170608%_))
                                                (_%__match171486171487%_
                                                 _%e170481170664%_
                                                 _%hd170482170667%_
                                                 _%tl170483170669%_
                                                 _%e170484170672%_
                                                 _%hd170485170675%_
                                                 _%tl170486170677%_
                                                 _%e170499170598%_
                                                 _%hd170500170601%_
                                                 _%tl170501170603%_
                                                 _%__splice171437171438%_
                                                 _%target170502170606%_
                                                 _%tl170504170608%_)
                                                (_%__kont171439171440%_
                                                 _%hd170488170683%_
                                                 _%hd170485170675%_))))
                                        (_%__kont171439171440%_
                                         _%hd170488170683%_
                                         _%hd170485170675%_))))
                                (_%__kont171439171440%_
                                 _%hd170488170683%_
                                 _%hd170485170675%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx171431171432%_))
                  (let ((_%e170481170664%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx171431171432%_))))
                    (let ((_%tl170483170669%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170481170664%_)))
                          (_%hd170482170667%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170481170664%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170483170669%_))
                          (let ((_%e170484170672%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170483170669%_))))
                            (let ((_%tl170486170677%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170484170672%_)))
                                  (_%hd170485170675%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170484170672%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl170486170677%_))
                                  (let ((_%e170487170680%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl170486170677%_))))
                                    (let ((_%tl170489170685%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170487170680%_)))
                                          (_%hd170488170683%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170487170680%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl170489170685%_))
                                          (_%__match171460171461%_
                                           _%e170481170664%_
                                           _%hd170482170667%_
                                           _%tl170483170669%_
                                           _%e170484170672%_
                                           _%hd170485170675%_
                                           _%tl170486170677%_
                                           _%e170487170680%_
                                           _%hd170488170683%_
                                           _%tl170489170685%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd170485170675%_))
                                              (let ((_%e170499170598%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd170485170675%_))))
                                                (let ((_%tl170501170603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170499170598%_)))
                                                      (_%hd170500170601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170499170598%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl170501170603%_))
                                                      (let ((_%__splice171437171438%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl170501170603%_
                        '0))))
                (let ((_%tl170504170608%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171437171438%_ '1)))
                      (_%target170502170606%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171437171438%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170504170608%_))
                      (_%__match171486171487%_
                       _%e170481170664%_
                       _%hd170482170667%_
                       _%tl170483170669%_
                       _%e170484170672%_
                       _%hd170485170675%_
                       _%tl170486170677%_
                       _%e170499170598%_
                       _%hd170500170601%_
                       _%tl170501170603%_
                       _%__splice171437171438%_
                       _%target170502170606%_
                       _%tl170504170608%_)
                      (let () (declare (not safe)) (_%g170477170529%_)))))
              (let () (declare (not safe)) (_%g170477170529%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170477170529%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170485170675%_))
                                      (let ((_%e170499170598%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170485170675%_))))
                                        (let ((_%tl170501170603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170499170598%_)))
                                              (_%hd170500170601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170499170598%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl170501170603%_))
                                              (let ((_%__splice171437171438%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl170501170603%_
                                                        '0))))
                                                (let ((_%tl170504170608%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice171437171438%_
                                                          '1)))
                                                      (_%target170502170606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice171437171438%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl170504170608%_))
                                                      (_%__match171486171487%_
                                                       _%e170481170664%_
                                                       _%hd170482170667%_
                                                       _%tl170483170669%_
                                                       _%e170484170672%_
                                                       _%hd170485170675%_
                                                       _%tl170486170677%_
                                                       _%e170499170598%_
                                                       _%hd170500170601%_
                                                       _%tl170501170603%_
                                                       _%__splice171437171438%_
                                                       _%target170502170606%_
                                                       _%tl170504170608%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g170477170529%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g170477170529%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170477170529%_))))))
                          (let () (declare (not safe)) (_%g170477170529%_)))))
                  (let () (declare (not safe)) (_%g170477170529%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self170431%_ _%stx170432%_)
        (let* ((_%g170434170444%_
                (lambda (_%g170435170441%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170435170441%_))))
               (_%g170433170469%_
                (lambda (_%g170435170447%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170435170447%_))
                      (let ((_%e170437170449%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170435170447%_))))
                        (let ((_%hd170438170452%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170437170449%_)))
                              (_%tl170439170454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170437170449%_))))
                          ((lambda (_%g170436170457%_)
                             (let ((_%decls170467%_
                                    (map gx#syntax->datum _%g170436170457%_)))
                               (let ((__tmp172847
                                      (let ((__tmp172848
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp172848
                                         _%decls170467%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp172847))
                               (cons 'declare _%decls170467%_)))
                           _%tl170439170454%_)))
                      (_%g170434170444%_ _%g170435170447%_)))))
          (_%g170433170469%_ _%stx170432%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self170178%_ _%stx170179%_)
        (let* ((_%g170181170198%_
                (lambda (_%g170182170195%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170182170195%_))))
               (_%g170180170428%_
                (lambda (_%g170182170201%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170182170201%_))
                      (let ((_%e170185170203%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170182170201%_))))
                        (let ((_%hd170186170206%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170185170203%_)))
                              (_%tl170187170208%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170185170203%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170187170208%_))
                              (let ((_%e170188170211%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170187170208%_))))
                                (let ((_%hd170189170214%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170188170211%_)))
                                      (_%tl170190170216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170188170211%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170190170216%_))
                                      (let ((_%e170191170219%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170190170216%_))))
                                        (let ((_%hd170192170222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170191170219%_)))
                                              (_%tl170193170224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170191170219%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170193170224%_))
                                              ((lambda (_%g170183170227%_
                                                        _%g170184170228%_)
                                                 (let* ((_%__stx171539171540%_
                                                         _%g170184170228%_)
                                                        (_%g170245170259%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx171539171540%_)))))
                                                   (let ((_%__kont171541171542%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self170178%_
                                                               _%g170183170227%_))))
                                                         (_%__kont171543171544%_
                                                          (lambda (_%g170251170391%_)
                                                            (let ((_%eid170400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g170251170391%_))))
                      (let ((_%lambda-expr170401170403%_
                             (gxc#apply-find-lambda-expression
                              _%g170183170227%_)))
                        (if _%lambda-expr170401170403%_
                            (let* ((_%lambda-expr170405%_
                                    _%lambda-expr170401170403%_)
                                   (__tmp172849
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp172849
                               _%lambda-expr170405%_
                               _%eid170400%_))
                            '#f))
                      (cons 'define
                            (cons _%eid170400%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self170178%_
                                           _%g170183170227%_))
                                        '()))))))
                 (_%__kont171545171546%_
                  (lambda ()
                    (let* ((_%tmp170266%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body170375%_
                            (let _%lp170268%_ ((_%rest170270%_
                                                _%g170184170228%_)
                                               (_%k170271%_ '0)
                                               (_%r170272%_ '()))
                              (let* ((_%__stx171509171510%_ _%rest170270%_)
                                     (_%g170277170294%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx171509171510%_)))))
                                (let ((_%__kont171511171512%_
                                       (lambda (_%g170279170362%_)
                                         (_%lp170268%_
                                          _%g170279170362%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k170271%_ '1))
                                          _%r170272%_)))
                                      (_%__kont171513171514%_
                                       (lambda (_%g170284170335%_
                                                _%g170285170336%_)
                                         (_%lp170268%_
                                          _%g170284170335%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k170271%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g170285170336%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp170266%_
                           _%k170271%_
                           _%g170284170335%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r170272%_))))
                                      (_%__kont171515171516%_
                                       (lambda (_%g170289170306%_)
                                         (let ((__tmp172850
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g170289170306%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp170266%_
                                 _%k170271%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp172850
                                            _%r170272%_))))
                                      (_%__kont171517171518%_
                                       (lambda () (reverse _%r170272%_))))
                                  (let ((_%g170275170322%_
                                         (lambda ()
                                           (let ((_%g170289170306%_
                                                  _%__stx171509171510%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g170289170306%_))
                                                 (_%__kont171515171516%_
                                                  _%g170289170306%_)
                                                 (_%__kont171517171518%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx171509171510%_))
                                        (let ((_%e170280170351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx171509171510%_))))
                                          (let ((_%tl170282170356%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170280170351%_)))
                                                (_%hd170281170354%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170280170351%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd170281170354%_))
                                                (let ((_%e170283170359%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd170281170354%_))))
                                                  (if (equal? _%e170283170359%_
                                                              '#f)
                                                      (_%__kont171511171512%_
                                                       _%tl170282170356%_)
                                                      (_%__kont171513171514%_
                                                       _%tl170282170356%_
                                                       _%hd170281170354%_)))
                                                (_%__kont171513171514%_
                                                 _%tl170282170356%_
                                                 _%hd170281170354%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g170275170322%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp170266%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self170178%_
                                                       _%g170183170227%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp170266%_
                                         _%g170184170228%_
                                         _%g170183170227%_)
                                        _%body170375%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx171539171540%_))
                                                         (let ((_%e170247170412%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx171539171540%_))))
                   (let ((_%tl170249170417%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170247170412%_)))
                         (_%hd170248170415%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170247170412%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd170248170415%_))
                         (let ((_%e170250170420%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd170248170415%_))))
                           (if (equal? _%e170250170420%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170249170417%_))
                                   (_%__kont171541171542%_)
                                   (_%__kont171545171546%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170249170417%_))
                                   (_%__kont171543171544%_ _%hd170248170415%_)
                                   (_%__kont171545171546%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl170249170417%_))
                             (_%__kont171543171544%_ _%hd170248170415%_)
                             (_%__kont171545171546%_)))))
                 (_%__kont171545171546%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd170192170222%_
                                               _%hd170189170214%_)
                                              (_%g170181170198%_
                                               _%g170182170201%_))))
                                      (_%g170181170198%_ _%g170182170201%_))))
                              (_%g170181170198%_ _%g170182170201%_))))
                      (_%g170181170198%_ _%g170182170201%_)))))
          (_%g170180170428%_ _%stx170179%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals170153%_ _%hd170154%_ _%expr170155%_)
        (let ((_%$e170157%_ (gxc#apply-count-values _%expr170155%_)))
          (if _%$e170157%_
              ((lambda (_%count170160%_)
                 (let ((_%len170162%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd170154%_)))
                       (_%cmp170163%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd170154%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len170162%_ '0))
                           (_%cmp170163%_ _%count170160%_ _%len170162%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr170155%_
                          _%hd170154%_)))))
               _%$e170157%_)
              (let* ((_%len170169%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd170154%_)))
                     (_%cmp170171%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd170154%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg170173%_
                      (let ((__tmp172852
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd170154%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp172851 (number->string _%len170169%_)))
                        (declare (not safe))
                        (##string-append __tmp172852 __tmp172851 '" values")))
                     (_%count170175%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd170154%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len170169%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count170175%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals170153%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp170171%_
                                (cons _%count170175%_
                                      (cons _%len170169%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp170171%_
                                                        (cons _%count170175%_
                                                              (cons _%len170169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg170173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count170175%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var170148%_)
        (letrec ((_%generate-inline170150%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var170148%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var170148%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline170150%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline170150%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var170141%_ _%i170142%_ _%rest170143%_)
        (letrec ((_%generate-inline170145%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i170142%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest170143%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var170141%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var170141%_
                                                      (cons '0 '())))
                                          (cons _%var170141%_ '()))))
                        (cons '##values-ref
                              (cons _%var170141%_ (cons _%i170142%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline170145%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline170145%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var170135%_ _%i170136%_)
        (if (let () (declare (not safe)) (##fx= _%i170136%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var170135%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var170135%_ '()))
                                  (cons (cons 'list (cons _%var170135%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var170135%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var170135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var170135%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i170136%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var170135%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var170135%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var170135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var170135%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var170135%_ '()))
                                (cons _%i170136%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var170135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i170136%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self170067%_ _%stx170068%_)
        (let* ((_%g170070170087%_
                (lambda (_%g170071170084%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170071170084%_))))
               (_%g170069170132%_
                (lambda (_%g170071170090%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170071170090%_))
                      (let ((_%e170074170092%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170071170090%_))))
                        (let ((_%hd170075170095%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170074170092%_)))
                              (_%tl170076170097%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170074170092%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170076170097%_))
                              (let ((_%e170077170100%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170076170097%_))))
                                (let ((_%hd170078170103%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170077170100%_)))
                                      (_%tl170079170105%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170077170100%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170079170105%_))
                                      (let ((_%e170080170108%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170079170105%_))))
                                        (let ((_%hd170081170111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170080170108%_)))
                                              (_%tl170082170113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170080170108%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170082170113%_))
                                              ((lambda (_%g170072170116%_
                                                        _%g170073170117%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self170067%_
                                                  _%g170073170117%_
                                                  _%g170072170116%_))
                                               _%hd170081170111%_
                                               _%hd170078170103%_)
                                              (_%g170070170087%_
                                               _%g170071170090%_))))
                                      (_%g170070170087%_ _%g170071170090%_))))
                              (_%g170070170087%_ _%g170071170090%_))))
                      (_%g170070170087%_ _%g170071170090%_)))))
          (_%g170069170132%_ _%stx170068%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self170026%_ _%hd170027%_ _%body170028%_)
        (let* ((_%hd170030%_ (gxc#generate-runtime-lambda-head _%hd170027%_))
               (_%body170032%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self170026%_ _%body170028%_)))
               (_%body170064%_
                (let* ((_%body170033170041%_ _%body170032%_)
                       (_%else170035170049%_
                        (lambda () (cons _%body170032%_ '())))
                       (_%K170037170054%_
                        (lambda (_%exprs170052%_) _%exprs170052%_)))
                  (if (pair? _%body170033170041%_)
                      (let ((_%hd170038170057%_
                             (let ()
                               (declare (not safe))
                               (##car _%body170033170041%_)))
                            (_%tl170039170059%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body170033170041%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd170038170057%_ 'begin))
                            (let ((_%exprs170062%_ _%tl170039170059%_))
                              (_%K170037170054%_ _%exprs170062%_))
                            (_%else170035170049%_)))
                      (_%else170035170049%_)))))
          (cons 'lambda (cons _%hd170030%_ _%body170064%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd170024%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd170024%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self168581%_ _%stx168582%_)
        (letrec ((_%dispatch-case?168584%_
                  (lambda (_%hd169262%_ _%body169263%_)
                    (let* ((_%form169265%_
                            (cons _%hd169262%_ (cons _%body169263%_ '())))
                           (_%__stx171571171572%_ _%form169265%_)
                           (_%g169270169427%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx171571171572%_)))))
                      (let ((_%__kont171573171574%_
                             (lambda (_%g169272169944%_
                                      _%g169273169945%_
                                      _%g169274169946%_)
                               '#t))
                            (_%__kont171579171580%_
                             (lambda (_%g169317169736%_
                                      _%g169318169737%_
                                      _%g169319169738%_
                                      _%g169320169739%_
                                      _%g169321169740%_
                                      _%g169322169741%_)
                               '#t))
                            (_%__kont171585171586%_
                             (lambda (_%g169383169535%_
                                      _%g169384169536%_
                                      _%g169385169537%_
                                      _%g169386169538%_)
                               '#t))
                            (_%__kont171587171588%_ (lambda () '#f)))
                        (let* ((_%__match171712171713%_
                                (lambda (_%e169387169439%_
                                         _%hd169388169442%_
                                         _%tl169389169444%_
                                         _%e169390169447%_
                                         _%hd169391169450%_
                                         _%tl169392169452%_
                                         _%e169393169455%_
                                         _%hd169394169458%_
                                         _%tl169395169460%_
                                         _%e169396169463%_
                                         _%hd169397169466%_
                                         _%tl169398169468%_
                                         _%e169399169471%_
                                         _%hd169400169474%_
                                         _%tl169401169476%_
                                         _%e169402169479%_
                                         _%hd169403169482%_
                                         _%tl169404169484%_
                                         _%e169405169487%_
                                         _%hd169406169490%_
                                         _%tl169407169492%_
                                         _%e169408169495%_
                                         _%hd169409169498%_
                                         _%tl169410169500%_
                                         _%e169411169503%_
                                         _%hd169412169506%_
                                         _%tl169413169508%_
                                         _%e169414169511%_
                                         _%hd169415169514%_
                                         _%tl169416169516%_
                                         _%e169417169519%_
                                         _%hd169418169522%_
                                         _%tl169419169524%_
                                         _%e169420169527%_
                                         _%hd169421169530%_
                                         _%tl169422169532%_)
                                  (let ((_%g169383169535%_ _%hd169421169530%_)
                                        (_%g169384169536%_ _%hd169412169506%_)
                                        (_%g169385169537%_ _%hd169403169482%_)
                                        (_%g169386169538%_ _%hd169388169442%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g169386169538%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g169385169537%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g169386169538%_
                                                _%g169383169535%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g169384169536%_
                                                     _%g169386169538%_))))
                                        (_%__kont171585171586%_
                                         _%g169383169535%_
                                         _%g169384169536%_
                                         _%g169385169537%_
                                         _%g169386169538%_)
                                        (_%__kont171587171588%_)))))
                               (_%__match171684171685%_
                                (lambda (_%e169387169439%_
                                         _%hd169388169442%_
                                         _%tl169389169444%_
                                         _%e169390169447%_
                                         _%hd169391169450%_
                                         _%tl169392169452%_
                                         _%e169393169455%_
                                         _%hd169394169458%_
                                         _%tl169395169460%_
                                         _%e169396169463%_
                                         _%hd169397169466%_
                                         _%tl169398169468%_
                                         _%e169399169471%_
                                         _%hd169400169474%_
                                         _%tl169401169476%_
                                         _%e169402169479%_
                                         _%hd169403169482%_
                                         _%tl169404169484%_
                                         _%e169405169487%_
                                         _%hd169406169490%_
                                         _%tl169407169492%_
                                         _%e169408169495%_
                                         _%hd169409169498%_
                                         _%tl169410169500%_
                                         _%e169411169503%_
                                         _%hd169412169506%_
                                         _%tl169413169508%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169407169492%_))
                                      (let ((_%e169414169511%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169407169492%_))))
                                        (let ((_%tl169416169516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169414169511%_)))
                                              (_%hd169415169514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169414169511%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd169415169514%_))
                                              (let ((_%e169417169519%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd169415169514%_))))
                                                (let ((_%tl169419169524%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169417169519%_)))
                                                      (_%hd169418169522%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169417169519%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd169418169522%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd169418169522%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169419169524%_))
                      (let ((_%e169420169527%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169419169524%_))))
                        (let ((_%tl169422169532%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169420169527%_)))
                              (_%hd169421169530%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169420169527%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl169422169532%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl169416169516%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl169392169452%_))
                                      (_%__match171712171713%_
                                       _%e169387169439%_
                                       _%hd169388169442%_
                                       _%tl169389169444%_
                                       _%e169390169447%_
                                       _%hd169391169450%_
                                       _%tl169392169452%_
                                       _%e169393169455%_
                                       _%hd169394169458%_
                                       _%tl169395169460%_
                                       _%e169396169463%_
                                       _%hd169397169466%_
                                       _%tl169398169468%_
                                       _%e169399169471%_
                                       _%hd169400169474%_
                                       _%tl169401169476%_
                                       _%e169402169479%_
                                       _%hd169403169482%_
                                       _%tl169404169484%_
                                       _%e169405169487%_
                                       _%hd169406169490%_
                                       _%tl169407169492%_
                                       _%e169408169495%_
                                       _%hd169409169498%_
                                       _%tl169410169500%_
                                       _%e169411169503%_
                                       _%hd169412169506%_
                                       _%tl169413169508%_
                                       _%e169414169511%_
                                       _%hd169415169514%_
                                       _%tl169416169516%_
                                       _%e169417169519%_
                                       _%hd169418169522%_
                                       _%tl169419169524%_
                                       _%e169420169527%_
                                       _%hd169421169530%_
                                       _%tl169422169532%_)
                                      (_%__kont171587171588%_))
                                  (_%__kont171587171588%_))
                              (_%__kont171587171588%_))))
                      (_%__kont171587171588%_))
                  (_%__kont171587171588%_))
              (_%__kont171587171588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171587171588%_))))
                                      (_%__kont171587171588%_))))
                               (_%__match171614171615%_
                                (lambda (_%e169323169580%_
                                         _%hd169324169583%_
                                         _%tl169325169585%_
                                         _%__splice171581171582%_
                                         _%target169326169588%_
                                         _%tl169328169590%_)
                                  (letrec ((_%loop169329169593%_
                                            (lambda (_%hd169327169596%_
                                                     _%arg169333169598%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169327169596%_))
                                                  (let ((_%e169330169600%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169327169596%_))))
                                                    (let ((_%lp-tl169332169605%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169330169600%_)))
                                                          (_%lp-hd169331169603%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169330169600%_))))
                                                      (_%loop169329169593%_
                                                       _%lp-tl169332169605%_
                                                       (cons _%lp-hd169331169603%_
                                                             _%arg169333169598%_))))
                                                  (let ((_%arg169334169608%_
                                                         (reverse _%arg169333169598%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169325169585%_))
                                                        (let ((_%e169335169610%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169325169585%_))))
                  (let ((_%tl169337169615%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169335169610%_)))
                        (_%hd169336169613%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169335169610%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169336169613%_))
                        (let ((_%e169338169618%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169336169613%_))))
                          (let ((_%tl169340169623%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169338169618%_)))
                                (_%hd169339169621%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169338169618%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169339169621%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd169339169621%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169340169623%_))
                                        (let ((_%e169341169626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169340169623%_))))
                                          (let ((_%tl169343169631%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169341169626%_)))
                                                (_%hd169342169629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169341169626%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd169342169629%_))
                                                (let ((_%e169344169634%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd169342169629%_))))
                                                  (let ((_%tl169346169639%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169344169634%_)))
                                                        (_%hd169345169637%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169344169634%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd169345169637%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd169345169637%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl169346169639%_))
                        (let ((_%e169347169642%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169346169639%_))))
                          (let ((_%tl169349169647%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169347169642%_)))
                                (_%hd169348169645%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169347169642%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169349169647%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169343169631%_))
                                    (let ((_%e169350169650%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169343169631%_))))
                                      (let ((_%tl169352169655%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169350169650%_)))
                                            (_%hd169351169653%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169350169650%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169351169653%_))
                                            (let ((_%e169353169658%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169351169653%_))))
                                              (let ((_%tl169355169663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169353169658%_)))
                                                    (_%hd169354169661%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169353169658%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd169354169661%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd169354169661%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169355169663%_))
                                                            (let ((_%e169356169666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169355169663%_))))
                      (let ((_%tl169358169671%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169356169666%_)))
                            (_%hd169357169669%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169356169666%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169358169671%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl169352169655%_))
                                (if (let ((__tmp172853
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl169352169655%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp172853 '1))
                                    (let ((_%__splice171583171584%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl169352169655%_
                                              '1))))
                                      (let ((_%tl169361169676%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171583171584%_
                                                '1)))
                                            (_%target169359169674%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171583171584%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169361169676%_))
                                            (let ((_%e169368169679%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169361169676%_))))
                                              (let ((_%tl169370169684%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169368169679%_)))
                                                    (_%hd169369169682%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169368169679%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169369169682%_))
                                                    (let ((_%e169371169687%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169369169682%_))))
                                                      (let ((_%tl169373169692%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169371169687%_)))
                    (_%hd169372169690%_
                     (let () (declare (not safe)) (##car _%e169371169687%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd169372169690%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd169372169690%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169373169692%_))
                            (let ((_%e169374169695%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169373169692%_))))
                              (let ((_%tl169376169700%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169374169695%_)))
                                    (_%hd169375169698%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169374169695%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169376169700%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl169370169684%_))
                                        (letrec ((_%loop169362169703%_
                                                  (lambda (_%hd169360169706%_
                                                           _%xarg169366169708%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd169360169706%_))
                                                        (let ((_%e169363169710%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd169360169706%_))))
                  (let ((_%lp-tl169365169715%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169363169710%_)))
                        (_%lp-hd169364169713%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169363169710%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd169364169713%_))
                        (let ((_%e169377169718%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd169364169713%_))))
                          (let ((_%tl169379169723%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169377169718%_)))
                                (_%hd169378169721%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169377169718%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169378169721%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd169378169721%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169379169723%_))
                                        (let ((_%e169380169726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169379169723%_))))
                                          (let ((_%tl169382169731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169380169726%_)))
                                                (_%hd169381169729%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169380169726%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169382169731%_))
                                                (_%loop169362169703%_
                                                 _%lp-tl169365169715%_
                                                 (cons _%hd169381169729%_
                                                       _%xarg169366169708%_))
                                                (_%__match171684171685%_
                                                 _%e169323169580%_
                                                 _%hd169324169583%_
                                                 _%tl169325169585%_
                                                 _%e169335169610%_
                                                 _%hd169336169613%_
                                                 _%tl169337169615%_
                                                 _%e169338169618%_
                                                 _%hd169339169621%_
                                                 _%tl169340169623%_
                                                 _%e169341169626%_
                                                 _%hd169342169629%_
                                                 _%tl169343169631%_
                                                 _%e169344169634%_
                                                 _%hd169345169637%_
                                                 _%tl169346169639%_
                                                 _%e169347169642%_
                                                 _%hd169348169645%_
                                                 _%tl169349169647%_
                                                 _%e169350169650%_
                                                 _%hd169351169653%_
                                                 _%tl169352169655%_
                                                 _%e169353169658%_
                                                 _%hd169354169661%_
                                                 _%tl169355169663%_
                                                 _%e169356169666%_
                                                 _%hd169357169669%_
                                                 _%tl169358169671%_))))
                                        (_%__match171684171685%_
                                         _%e169323169580%_
                                         _%hd169324169583%_
                                         _%tl169325169585%_
                                         _%e169335169610%_
                                         _%hd169336169613%_
                                         _%tl169337169615%_
                                         _%e169338169618%_
                                         _%hd169339169621%_
                                         _%tl169340169623%_
                                         _%e169341169626%_
                                         _%hd169342169629%_
                                         _%tl169343169631%_
                                         _%e169344169634%_
                                         _%hd169345169637%_
                                         _%tl169346169639%_
                                         _%e169347169642%_
                                         _%hd169348169645%_
                                         _%tl169349169647%_
                                         _%e169350169650%_
                                         _%hd169351169653%_
                                         _%tl169352169655%_
                                         _%e169353169658%_
                                         _%hd169354169661%_
                                         _%tl169355169663%_
                                         _%e169356169666%_
                                         _%hd169357169669%_
                                         _%tl169358169671%_))
                                    (_%__match171684171685%_
                                     _%e169323169580%_
                                     _%hd169324169583%_
                                     _%tl169325169585%_
                                     _%e169335169610%_
                                     _%hd169336169613%_
                                     _%tl169337169615%_
                                     _%e169338169618%_
                                     _%hd169339169621%_
                                     _%tl169340169623%_
                                     _%e169341169626%_
                                     _%hd169342169629%_
                                     _%tl169343169631%_
                                     _%e169344169634%_
                                     _%hd169345169637%_
                                     _%tl169346169639%_
                                     _%e169347169642%_
                                     _%hd169348169645%_
                                     _%tl169349169647%_
                                     _%e169350169650%_
                                     _%hd169351169653%_
                                     _%tl169352169655%_
                                     _%e169353169658%_
                                     _%hd169354169661%_
                                     _%tl169355169663%_
                                     _%e169356169666%_
                                     _%hd169357169669%_
                                     _%tl169358169671%_))
                                (_%__match171684171685%_
                                 _%e169323169580%_
                                 _%hd169324169583%_
                                 _%tl169325169585%_
                                 _%e169335169610%_
                                 _%hd169336169613%_
                                 _%tl169337169615%_
                                 _%e169338169618%_
                                 _%hd169339169621%_
                                 _%tl169340169623%_
                                 _%e169341169626%_
                                 _%hd169342169629%_
                                 _%tl169343169631%_
                                 _%e169344169634%_
                                 _%hd169345169637%_
                                 _%tl169346169639%_
                                 _%e169347169642%_
                                 _%hd169348169645%_
                                 _%tl169349169647%_
                                 _%e169350169650%_
                                 _%hd169351169653%_
                                 _%tl169352169655%_
                                 _%e169353169658%_
                                 _%hd169354169661%_
                                 _%tl169355169663%_
                                 _%e169356169666%_
                                 _%hd169357169669%_
                                 _%tl169358169671%_))))
                        (_%__match171684171685%_
                         _%e169323169580%_
                         _%hd169324169583%_
                         _%tl169325169585%_
                         _%e169335169610%_
                         _%hd169336169613%_
                         _%tl169337169615%_
                         _%e169338169618%_
                         _%hd169339169621%_
                         _%tl169340169623%_
                         _%e169341169626%_
                         _%hd169342169629%_
                         _%tl169343169631%_
                         _%e169344169634%_
                         _%hd169345169637%_
                         _%tl169346169639%_
                         _%e169347169642%_
                         _%hd169348169645%_
                         _%tl169349169647%_
                         _%e169350169650%_
                         _%hd169351169653%_
                         _%tl169352169655%_
                         _%e169353169658%_
                         _%hd169354169661%_
                         _%tl169355169663%_
                         _%e169356169666%_
                         _%hd169357169669%_
                         _%tl169358169671%_))))
                (let ((_%xarg169367169734%_ (reverse _%xarg169366169708%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl169337169615%_))
                      (let ((_%g169317169736%_ _%hd169375169698%_)
                            (_%g169318169737%_ _%xarg169367169734%_)
                            (_%g169319169738%_ _%hd169357169669%_)
                            (_%g169320169739%_ _%hd169348169645%_)
                            (_%g169321169740%_ _%tl169328169590%_)
                            (_%g169322169741%_ _%arg169334169608%_))
                        (if (and (let ((__tmp172854
                                        (let ((__tmp172855
                                               (lambda (_%g169784169787%_
                                                        _%g169785169789%_)
                                                 (cons _%g169784169787%_
                                                       _%g169785169789%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp172855
                                           '()
                                           _%g169322169741%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp172854))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g169321169740%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g169320169739%_
                                    'apply))
                                 (let ((__tmp172858
                                        (length (let ((__tmp172859
                                                       (lambda (_%g169791169794%_
                                                                _%g169792169796%_)
                                                         (cons _%g169791169794%_
                                                               _%g169792169796%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp172859
                                                   '()
                                                   _%g169322169741%_))))
                                       (__tmp172856
                                        (length (let ((__tmp172857
                                                       (lambda (_%g169798169801%_
                                                                _%g169799169803%_)
                                                         (cons _%g169798169801%_
                                                               _%g169799169803%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp172857
                                                   '()
                                                   _%g169318169737%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp172858 __tmp172856))
                                 (let ((__tmp172862
                                        (let ((__tmp172863
                                               (lambda (_%g169805169808%_
                                                        _%g169806169810%_)
                                                 (cons _%g169805169808%_
                                                       _%g169806169810%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp172863
                                           '()
                                           _%g169322169741%_)))
                                       (__tmp172860
                                        (let ((__tmp172861
                                               (lambda (_%g169812169815%_
                                                        _%g169813169817%_)
                                                 (cons _%g169812169815%_
                                                       _%g169813169817%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp172861
                                           '()
                                           _%g169318169737%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp172862
                                    __tmp172860))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g169321169740%_
                                    _%g169317169736%_))
                                 (not (let ((__tmp172867
                                             (lambda (_%g169819169821%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g169819169821%_
                                                  _%g169319169738%_))))
                                            (__tmp172864
                                             (let ((__tmp172866
                                                    (lambda (_%g169823169826%_
                                                             _%g169824169828%_)
                                                      (cons _%g169823169826%_
                                                            _%g169824169828%_)))
                                                   (__tmp172865
                                                    (cons _%g169321169740%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp172866
                                                __tmp172865
                                                _%g169322169741%_))))
                                        (declare (not safe))
                                        (__find __tmp172867 __tmp172864))))
                            (_%__kont171579171580%_
                             _%g169317169736%_
                             _%g169318169737%_
                             _%g169319169738%_
                             _%g169320169739%_
                             _%g169321169740%_
                             _%g169322169741%_)
                            (_%__match171684171685%_
                             _%e169323169580%_
                             _%hd169324169583%_
                             _%tl169325169585%_
                             _%e169335169610%_
                             _%hd169336169613%_
                             _%tl169337169615%_
                             _%e169338169618%_
                             _%hd169339169621%_
                             _%tl169340169623%_
                             _%e169341169626%_
                             _%hd169342169629%_
                             _%tl169343169631%_
                             _%e169344169634%_
                             _%hd169345169637%_
                             _%tl169346169639%_
                             _%e169347169642%_
                             _%hd169348169645%_
                             _%tl169349169647%_
                             _%e169350169650%_
                             _%hd169351169653%_
                             _%tl169352169655%_
                             _%e169353169658%_
                             _%hd169354169661%_
                             _%tl169355169663%_
                             _%e169356169666%_
                             _%hd169357169669%_
                             _%tl169358169671%_)))
                      (_%__match171684171685%_
                       _%e169323169580%_
                       _%hd169324169583%_
                       _%tl169325169585%_
                       _%e169335169610%_
                       _%hd169336169613%_
                       _%tl169337169615%_
                       _%e169338169618%_
                       _%hd169339169621%_
                       _%tl169340169623%_
                       _%e169341169626%_
                       _%hd169342169629%_
                       _%tl169343169631%_
                       _%e169344169634%_
                       _%hd169345169637%_
                       _%tl169346169639%_
                       _%e169347169642%_
                       _%hd169348169645%_
                       _%tl169349169647%_
                       _%e169350169650%_
                       _%hd169351169653%_
                       _%tl169352169655%_
                       _%e169353169658%_
                       _%hd169354169661%_
                       _%tl169355169663%_
                       _%e169356169666%_
                       _%hd169357169669%_
                       _%tl169358169671%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop169362169703%_
                                           _%target169359169674%_
                                           '()))
                                        (_%__match171684171685%_
                                         _%e169323169580%_
                                         _%hd169324169583%_
                                         _%tl169325169585%_
                                         _%e169335169610%_
                                         _%hd169336169613%_
                                         _%tl169337169615%_
                                         _%e169338169618%_
                                         _%hd169339169621%_
                                         _%tl169340169623%_
                                         _%e169341169626%_
                                         _%hd169342169629%_
                                         _%tl169343169631%_
                                         _%e169344169634%_
                                         _%hd169345169637%_
                                         _%tl169346169639%_
                                         _%e169347169642%_
                                         _%hd169348169645%_
                                         _%tl169349169647%_
                                         _%e169350169650%_
                                         _%hd169351169653%_
                                         _%tl169352169655%_
                                         _%e169353169658%_
                                         _%hd169354169661%_
                                         _%tl169355169663%_
                                         _%e169356169666%_
                                         _%hd169357169669%_
                                         _%tl169358169671%_))
                                    (_%__match171684171685%_
                                     _%e169323169580%_
                                     _%hd169324169583%_
                                     _%tl169325169585%_
                                     _%e169335169610%_
                                     _%hd169336169613%_
                                     _%tl169337169615%_
                                     _%e169338169618%_
                                     _%hd169339169621%_
                                     _%tl169340169623%_
                                     _%e169341169626%_
                                     _%hd169342169629%_
                                     _%tl169343169631%_
                                     _%e169344169634%_
                                     _%hd169345169637%_
                                     _%tl169346169639%_
                                     _%e169347169642%_
                                     _%hd169348169645%_
                                     _%tl169349169647%_
                                     _%e169350169650%_
                                     _%hd169351169653%_
                                     _%tl169352169655%_
                                     _%e169353169658%_
                                     _%hd169354169661%_
                                     _%tl169355169663%_
                                     _%e169356169666%_
                                     _%hd169357169669%_
                                     _%tl169358169671%_))))
                            (_%__match171684171685%_
                             _%e169323169580%_
                             _%hd169324169583%_
                             _%tl169325169585%_
                             _%e169335169610%_
                             _%hd169336169613%_
                             _%tl169337169615%_
                             _%e169338169618%_
                             _%hd169339169621%_
                             _%tl169340169623%_
                             _%e169341169626%_
                             _%hd169342169629%_
                             _%tl169343169631%_
                             _%e169344169634%_
                             _%hd169345169637%_
                             _%tl169346169639%_
                             _%e169347169642%_
                             _%hd169348169645%_
                             _%tl169349169647%_
                             _%e169350169650%_
                             _%hd169351169653%_
                             _%tl169352169655%_
                             _%e169353169658%_
                             _%hd169354169661%_
                             _%tl169355169663%_
                             _%e169356169666%_
                             _%hd169357169669%_
                             _%tl169358169671%_))
                        (_%__match171684171685%_
                         _%e169323169580%_
                         _%hd169324169583%_
                         _%tl169325169585%_
                         _%e169335169610%_
                         _%hd169336169613%_
                         _%tl169337169615%_
                         _%e169338169618%_
                         _%hd169339169621%_
                         _%tl169340169623%_
                         _%e169341169626%_
                         _%hd169342169629%_
                         _%tl169343169631%_
                         _%e169344169634%_
                         _%hd169345169637%_
                         _%tl169346169639%_
                         _%e169347169642%_
                         _%hd169348169645%_
                         _%tl169349169647%_
                         _%e169350169650%_
                         _%hd169351169653%_
                         _%tl169352169655%_
                         _%e169353169658%_
                         _%hd169354169661%_
                         _%tl169355169663%_
                         _%e169356169666%_
                         _%hd169357169669%_
                         _%tl169358169671%_))
                    (_%__match171684171685%_
                     _%e169323169580%_
                     _%hd169324169583%_
                     _%tl169325169585%_
                     _%e169335169610%_
                     _%hd169336169613%_
                     _%tl169337169615%_
                     _%e169338169618%_
                     _%hd169339169621%_
                     _%tl169340169623%_
                     _%e169341169626%_
                     _%hd169342169629%_
                     _%tl169343169631%_
                     _%e169344169634%_
                     _%hd169345169637%_
                     _%tl169346169639%_
                     _%e169347169642%_
                     _%hd169348169645%_
                     _%tl169349169647%_
                     _%e169350169650%_
                     _%hd169351169653%_
                     _%tl169352169655%_
                     _%e169353169658%_
                     _%hd169354169661%_
                     _%tl169355169663%_
                     _%e169356169666%_
                     _%hd169357169669%_
                     _%tl169358169671%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171684171685%_
                                                     _%e169323169580%_
                                                     _%hd169324169583%_
                                                     _%tl169325169585%_
                                                     _%e169335169610%_
                                                     _%hd169336169613%_
                                                     _%tl169337169615%_
                                                     _%e169338169618%_
                                                     _%hd169339169621%_
                                                     _%tl169340169623%_
                                                     _%e169341169626%_
                                                     _%hd169342169629%_
                                                     _%tl169343169631%_
                                                     _%e169344169634%_
                                                     _%hd169345169637%_
                                                     _%tl169346169639%_
                                                     _%e169347169642%_
                                                     _%hd169348169645%_
                                                     _%tl169349169647%_
                                                     _%e169350169650%_
                                                     _%hd169351169653%_
                                                     _%tl169352169655%_
                                                     _%e169353169658%_
                                                     _%hd169354169661%_
                                                     _%tl169355169663%_
                                                     _%e169356169666%_
                                                     _%hd169357169669%_
                                                     _%tl169358169671%_))))
                                            (_%__match171684171685%_
                                             _%e169323169580%_
                                             _%hd169324169583%_
                                             _%tl169325169585%_
                                             _%e169335169610%_
                                             _%hd169336169613%_
                                             _%tl169337169615%_
                                             _%e169338169618%_
                                             _%hd169339169621%_
                                             _%tl169340169623%_
                                             _%e169341169626%_
                                             _%hd169342169629%_
                                             _%tl169343169631%_
                                             _%e169344169634%_
                                             _%hd169345169637%_
                                             _%tl169346169639%_
                                             _%e169347169642%_
                                             _%hd169348169645%_
                                             _%tl169349169647%_
                                             _%e169350169650%_
                                             _%hd169351169653%_
                                             _%tl169352169655%_
                                             _%e169353169658%_
                                             _%hd169354169661%_
                                             _%tl169355169663%_
                                             _%e169356169666%_
                                             _%hd169357169669%_
                                             _%tl169358169671%_))))
                                    (_%__match171684171685%_
                                     _%e169323169580%_
                                     _%hd169324169583%_
                                     _%tl169325169585%_
                                     _%e169335169610%_
                                     _%hd169336169613%_
                                     _%tl169337169615%_
                                     _%e169338169618%_
                                     _%hd169339169621%_
                                     _%tl169340169623%_
                                     _%e169341169626%_
                                     _%hd169342169629%_
                                     _%tl169343169631%_
                                     _%e169344169634%_
                                     _%hd169345169637%_
                                     _%tl169346169639%_
                                     _%e169347169642%_
                                     _%hd169348169645%_
                                     _%tl169349169647%_
                                     _%e169350169650%_
                                     _%hd169351169653%_
                                     _%tl169352169655%_
                                     _%e169353169658%_
                                     _%hd169354169661%_
                                     _%tl169355169663%_
                                     _%e169356169666%_
                                     _%hd169357169669%_
                                     _%tl169358169671%_))
                                (_%__match171684171685%_
                                 _%e169323169580%_
                                 _%hd169324169583%_
                                 _%tl169325169585%_
                                 _%e169335169610%_
                                 _%hd169336169613%_
                                 _%tl169337169615%_
                                 _%e169338169618%_
                                 _%hd169339169621%_
                                 _%tl169340169623%_
                                 _%e169341169626%_
                                 _%hd169342169629%_
                                 _%tl169343169631%_
                                 _%e169344169634%_
                                 _%hd169345169637%_
                                 _%tl169346169639%_
                                 _%e169347169642%_
                                 _%hd169348169645%_
                                 _%tl169349169647%_
                                 _%e169350169650%_
                                 _%hd169351169653%_
                                 _%tl169352169655%_
                                 _%e169353169658%_
                                 _%hd169354169661%_
                                 _%tl169355169663%_
                                 _%e169356169666%_
                                 _%hd169357169669%_
                                 _%tl169358169671%_))
                            (_%__kont171587171588%_))))
                    (_%__kont171587171588%_))
                (_%__kont171587171588%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171587171588%_))))
                                            (_%__kont171587171588%_))))
                                    (_%__kont171587171588%_))
                                (_%__kont171587171588%_))))
                        (_%__kont171587171588%_))
                    (_%__kont171587171588%_))
                (_%__kont171587171588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171587171588%_))))
                                        (_%__kont171587171588%_))
                                    (_%__kont171587171588%_))
                                (_%__kont171587171588%_))))
                        (_%__kont171587171588%_))))
                (_%__kont171587171588%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop169329169593%_
                                     _%target169326169588%_
                                     '()))))
                               (_%__match171602171603%_
                                (lambda (_%e169275169836%_
                                         _%hd169276169839%_
                                         _%tl169277169841%_
                                         _%__splice171575171576%_
                                         _%target169278169844%_
                                         _%tl169280169846%_)
                                  (letrec ((_%loop169281169849%_
                                            (lambda (_%hd169279169852%_
                                                     _%arg169285169854%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169279169852%_))
                                                  (let ((_%e169282169856%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169279169852%_))))
                                                    (let ((_%lp-tl169284169861%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169282169856%_)))
                                                          (_%lp-hd169283169859%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169282169856%_))))
                                                      (_%loop169281169849%_
                                                       _%lp-tl169284169861%_
                                                       (cons _%lp-hd169283169859%_
                                                             _%arg169285169854%_))))
                                                  (let ((_%arg169286169864%_
                                                         (reverse _%arg169285169854%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169277169841%_))
                                                        (let ((_%e169287169866%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169277169841%_))))
                  (let ((_%tl169289169871%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169287169866%_)))
                        (_%hd169288169869%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169287169866%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169288169869%_))
                        (let ((_%e169290169874%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169288169869%_))))
                          (let ((_%tl169292169879%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169290169874%_)))
                                (_%hd169291169877%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169290169874%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169291169877%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd169291169877%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169292169879%_))
                                        (let ((_%e169293169882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169292169879%_))))
                                          (let ((_%tl169295169887%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169293169882%_)))
                                                (_%hd169294169885%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169293169882%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd169294169885%_))
                                                (let ((_%e169296169890%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd169294169885%_))))
                                                  (let ((_%tl169298169895%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169296169890%_)))
                                                        (_%hd169297169893%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169296169890%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd169297169893%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd169297169893%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl169298169895%_))
                        (let ((_%e169299169898%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169298169895%_))))
                          (let ((_%tl169301169903%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169299169898%_)))
                                (_%hd169300169901%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169299169898%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169301169903%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl169295169887%_))
                                    (let ((_%__splice171577171578%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl169295169887%_
                                              '0))))
                                      (let ((_%tl169304169908%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171577171578%_
                                                '1)))
                                            (_%target169302169906%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171577171578%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl169304169908%_))
                                            (letrec ((_%loop169305169911%_
                                                      (lambda (_%hd169303169914%_
                                                               _%xarg169309169916%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd169303169914%_))
                                                            (let ((_%e169306169918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd169303169914%_))))
                      (let ((_%lp-tl169308169923%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169306169918%_)))
                            (_%lp-hd169307169921%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169306169918%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd169307169921%_))
                            (let ((_%e169311169926%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd169307169921%_))))
                              (let ((_%tl169313169931%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169311169926%_)))
                                    (_%hd169312169929%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169311169926%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169312169929%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd169312169929%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169313169931%_))
                                            (let ((_%e169314169934%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169313169931%_))))
                                              (let ((_%tl169316169939%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169314169934%_)))
                                                    (_%hd169315169937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169314169934%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl169316169939%_))
                                                    (_%loop169305169911%_
                                                     _%lp-tl169308169923%_
                                                     (cons _%hd169315169937%_
                                                           _%xarg169309169916%_))
                                                    (_%__match171614171615%_
                                                     _%e169275169836%_
                                                     _%hd169276169839%_
                                                     _%tl169277169841%_
                                                     _%__splice171575171576%_
                                                     _%target169278169844%_
                                                     _%tl169280169846%_))))
                                            (_%__match171614171615%_
                                             _%e169275169836%_
                                             _%hd169276169839%_
                                             _%tl169277169841%_
                                             _%__splice171575171576%_
                                             _%target169278169844%_
                                             _%tl169280169846%_))
                                        (_%__match171614171615%_
                                         _%e169275169836%_
                                         _%hd169276169839%_
                                         _%tl169277169841%_
                                         _%__splice171575171576%_
                                         _%target169278169844%_
                                         _%tl169280169846%_))
                                    (_%__match171614171615%_
                                     _%e169275169836%_
                                     _%hd169276169839%_
                                     _%tl169277169841%_
                                     _%__splice171575171576%_
                                     _%target169278169844%_
                                     _%tl169280169846%_))))
                            (_%__match171614171615%_
                             _%e169275169836%_
                             _%hd169276169839%_
                             _%tl169277169841%_
                             _%__splice171575171576%_
                             _%target169278169844%_
                             _%tl169280169846%_))))
                    (let ((_%xarg169310169942%_
                           (reverse _%xarg169309169916%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169289169871%_))
                          (let ((_%g169272169944%_ _%xarg169310169942%_)
                                (_%g169273169945%_ _%hd169300169901%_)
                                (_%g169274169946%_ _%arg169286169864%_))
                            (if (and (let ((__tmp172868
                                            (let ((__tmp172869
                                                   (lambda (_%g169974169977%_
                                                            _%g169975169979%_)
                                                     (cons _%g169974169977%_
                                                           _%g169975169979%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp172869
                                               '()
                                               _%g169274169946%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp172868))
                                     (let ((__tmp172872
                                            (length (let ((__tmp172873
                                                           (lambda (_%g169981169984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169982169986%_)
                     (cons _%g169981169984%_ _%g169982169986%_))))
              (declare (not safe))
              (__foldr1 __tmp172873 '() _%g169274169946%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp172870
                                            (length (let ((__tmp172871
                                                           (lambda (_%g169988169991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169989169993%_)
                     (cons _%g169988169991%_ _%g169989169993%_))))
              (declare (not safe))
              (__foldr1 __tmp172871 '() _%g169272169944%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp172872 __tmp172870))
                                     (let ((__tmp172876
                                            (let ((__tmp172877
                                                   (lambda (_%g169995169998%_
                                                            _%g169996170000%_)
                                                     (cons _%g169995169998%_
                                                           _%g169996170000%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp172877
                                               '()
                                               _%g169274169946%_)))
                                           (__tmp172874
                                            (let ((__tmp172875
                                                   (lambda (_%g170002170005%_
                                                            _%g170003170007%_)
                                                     (cons _%g170002170005%_
                                                           _%g170003170007%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp172875
                                               '()
                                               _%g169272169944%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp172876
                                        __tmp172874))
                                     (not (let ((__tmp172880
                                                 (lambda (_%g170009170011%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g170009170011%_
                                                      _%g169273169945%_))))
                                                (__tmp172878
                                                 (let ((__tmp172879
                                                        (lambda (_%g170013170016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g170014170018%_)
                  (cons _%g170013170016%_ _%g170014170018%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp172879
                                                    '()
                                                    _%g169274169946%_))))
                                            (declare (not safe))
                                            (__find __tmp172880 __tmp172878))))
                                (_%__kont171573171574%_
                                 _%g169272169944%_
                                 _%g169273169945%_
                                 _%g169274169946%_)
                                (_%__match171614171615%_
                                 _%e169275169836%_
                                 _%hd169276169839%_
                                 _%tl169277169841%_
                                 _%__splice171575171576%_
                                 _%target169278169844%_
                                 _%tl169280169846%_)))
                          (_%__match171614171615%_
                           _%e169275169836%_
                           _%hd169276169839%_
                           _%tl169277169841%_
                           _%__splice171575171576%_
                           _%target169278169844%_
                           _%tl169280169846%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop169305169911%_
                                               _%target169302169906%_
                                               '()))
                                            (_%__match171614171615%_
                                             _%e169275169836%_
                                             _%hd169276169839%_
                                             _%tl169277169841%_
                                             _%__splice171575171576%_
                                             _%target169278169844%_
                                             _%tl169280169846%_))))
                                    (_%__match171614171615%_
                                     _%e169275169836%_
                                     _%hd169276169839%_
                                     _%tl169277169841%_
                                     _%__splice171575171576%_
                                     _%target169278169844%_
                                     _%tl169280169846%_))
                                (_%__match171614171615%_
                                 _%e169275169836%_
                                 _%hd169276169839%_
                                 _%tl169277169841%_
                                 _%__splice171575171576%_
                                 _%target169278169844%_
                                 _%tl169280169846%_))))
                        (_%__match171614171615%_
                         _%e169275169836%_
                         _%hd169276169839%_
                         _%tl169277169841%_
                         _%__splice171575171576%_
                         _%target169278169844%_
                         _%tl169280169846%_))
                    (_%__match171614171615%_
                     _%e169275169836%_
                     _%hd169276169839%_
                     _%tl169277169841%_
                     _%__splice171575171576%_
                     _%target169278169844%_
                     _%tl169280169846%_))
                (_%__match171614171615%_
                 _%e169275169836%_
                 _%hd169276169839%_
                 _%tl169277169841%_
                 _%__splice171575171576%_
                 _%target169278169844%_
                 _%tl169280169846%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match171614171615%_
                                                 _%e169275169836%_
                                                 _%hd169276169839%_
                                                 _%tl169277169841%_
                                                 _%__splice171575171576%_
                                                 _%target169278169844%_
                                                 _%tl169280169846%_))))
                                        (_%__match171614171615%_
                                         _%e169275169836%_
                                         _%hd169276169839%_
                                         _%tl169277169841%_
                                         _%__splice171575171576%_
                                         _%target169278169844%_
                                         _%tl169280169846%_))
                                    (_%__match171614171615%_
                                     _%e169275169836%_
                                     _%hd169276169839%_
                                     _%tl169277169841%_
                                     _%__splice171575171576%_
                                     _%target169278169844%_
                                     _%tl169280169846%_))
                                (_%__match171614171615%_
                                 _%e169275169836%_
                                 _%hd169276169839%_
                                 _%tl169277169841%_
                                 _%__splice171575171576%_
                                 _%target169278169844%_
                                 _%tl169280169846%_))))
                        (_%__match171614171615%_
                         _%e169275169836%_
                         _%hd169276169839%_
                         _%tl169277169841%_
                         _%__splice171575171576%_
                         _%target169278169844%_
                         _%tl169280169846%_))))
                (_%__match171614171615%_
                 _%e169275169836%_
                 _%hd169276169839%_
                 _%tl169277169841%_
                 _%__splice171575171576%_
                 _%target169278169844%_
                 _%tl169280169846%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop169281169849%_
                                     _%target169278169844%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx171571171572%_))
                              (let ((_%e169275169836%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx171571171572%_))))
                                (let ((_%tl169277169841%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169275169836%_)))
                                      (_%hd169276169839%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169275169836%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd169276169839%_))
                                      (let ((_%__splice171575171576%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd169276169839%_
                                                '0))))
                                        (let ((_%tl169280169846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171575171576%_
                                                  '1)))
                                              (_%target169278169844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171575171576%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169280169846%_))
                                              (_%__match171602171603%_
                                               _%e169275169836%_
                                               _%hd169276169839%_
                                               _%tl169277169841%_
                                               _%__splice171575171576%_
                                               _%target169278169844%_
                                               _%tl169280169846%_)
                                              (_%__match171614171615%_
                                               _%e169275169836%_
                                               _%hd169276169839%_
                                               _%tl169277169841%_
                                               _%__splice171575171576%_
                                               _%target169278169844%_
                                               _%tl169280169846%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169277169841%_))
                                          (let ((_%e169390169447%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169277169841%_))))
                                            (let ((_%tl169392169452%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169390169447%_)))
                                                  (_%hd169391169450%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169390169447%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169391169450%_))
                                                  (let ((_%e169393169455%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169391169450%_))))
                                                    (let ((_%tl169395169460%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169393169455%_)))
                                                          (_%hd169394169458%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169393169455%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd169394169458%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd169394169458%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169395169460%_))
                          (let ((_%e169396169463%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169395169460%_))))
                            (let ((_%tl169398169468%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169396169463%_)))
                                  (_%hd169397169466%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169396169463%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169397169466%_))
                                  (let ((_%e169399169471%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169397169466%_))))
                                    (let ((_%tl169401169476%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169399169471%_)))
                                          (_%hd169400169474%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169399169471%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd169400169474%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd169400169474%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl169401169476%_))
                                                  (let ((_%e169402169479%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl169401169476%_))))
                                                    (let ((_%tl169404169484%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169402169479%_)))
                                                          (_%hd169403169482%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169402169479%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169404169484%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169398169468%_))
                      (let ((_%e169405169487%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169398169468%_))))
                        (let ((_%tl169407169492%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169405169487%_)))
                              (_%hd169406169490%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169405169487%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169406169490%_))
                              (let ((_%e169408169495%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169406169490%_))))
                                (let ((_%tl169410169500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169408169495%_)))
                                      (_%hd169409169498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169408169495%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd169409169498%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd169409169498%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl169410169500%_))
                                              (let ((_%e169411169503%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl169410169500%_))))
                                                (let ((_%tl169413169508%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169411169503%_)))
                                                      (_%hd169412169506%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169411169503%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169413169508%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl169407169492%_))
                                                          (let ((_%e169414169511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl169407169492%_))))
                    (let ((_%tl169416169516%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169414169511%_)))
                          (_%hd169415169514%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169414169511%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd169415169514%_))
                          (let ((_%e169417169519%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd169415169514%_))))
                            (let ((_%tl169419169524%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169417169519%_)))
                                  (_%hd169418169522%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169417169519%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd169418169522%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd169418169522%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169419169524%_))
                                          (let ((_%e169420169527%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169419169524%_))))
                                            (let ((_%tl169422169532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169420169527%_)))
                                                  (_%hd169421169530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169420169527%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl169422169532%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169416169516%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169392169452%_))
                                                          (_%__match171712171713%_
                                                           _%e169275169836%_
                                                           _%hd169276169839%_
                                                           _%tl169277169841%_
                                                           _%e169390169447%_
                                                           _%hd169391169450%_
                                                           _%tl169392169452%_
                                                           _%e169393169455%_
                                                           _%hd169394169458%_
                                                           _%tl169395169460%_
                                                           _%e169396169463%_
                                                           _%hd169397169466%_
                                                           _%tl169398169468%_
                                                           _%e169399169471%_
                                                           _%hd169400169474%_
                                                           _%tl169401169476%_
                                                           _%e169402169479%_
                                                           _%hd169403169482%_
                                                           _%tl169404169484%_
                                                           _%e169405169487%_
                                                           _%hd169406169490%_
                                                           _%tl169407169492%_
                                                           _%e169408169495%_
                                                           _%hd169409169498%_
                                                           _%tl169410169500%_
                                                           _%e169411169503%_
                                                           _%hd169412169506%_
                                                           _%tl169413169508%_
                                                           _%e169414169511%_
                                                           _%hd169415169514%_
                                                           _%tl169416169516%_
                                                           _%e169417169519%_
                                                           _%hd169418169522%_
                                                           _%tl169419169524%_
                                                           _%e169420169527%_
                                                           _%hd169421169530%_
                                                           _%tl169422169532%_)
                                                          (_%__kont171587171588%_))
                                                      (_%__kont171587171588%_))
                                                  (_%__kont171587171588%_))))
                                          (_%__kont171587171588%_))
                                      (_%__kont171587171588%_))
                                  (_%__kont171587171588%_))))
                          (_%__kont171587171588%_))))
                  (_%__kont171587171588%_))
              (_%__kont171587171588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171587171588%_))
                                          (_%__kont171587171588%_))
                                      (_%__kont171587171588%_))))
                              (_%__kont171587171588%_))))
                      (_%__kont171587171588%_))
                  (_%__kont171587171588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171587171588%_))
                                              (_%__kont171587171588%_))
                                          (_%__kont171587171588%_))))
                                  (_%__kont171587171588%_))))
                          (_%__kont171587171588%_))
                      (_%__kont171587171588%_))
                  (_%__kont171587171588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171587171588%_))))
                                          (_%__kont171587171588%_)))))
                              (_%__kont171587171588%_)))))))
                 (_%dispatch-case-e168585%_
                  (lambda (_%hd168732%_ _%body168733%_)
                    (let* ((_%form168735%_
                            (cons _%hd168732%_ (cons _%body168733%_ '())))
                           (_%__stx171715171716%_ _%form168735%_)
                           (_%g168739168863%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx171715171716%_)))))
                      (let ((_%__kont171717171718%_
                             (lambda (_%g168741169228%_
                                      _%g168742169229%_
                                      _%g168743169230%_)
                               (let ((__tmp172881
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168742169229%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168581%_
                                  __tmp172881))))
                            (_%__kont171723171724%_
                             (lambda (_%g168786169080%_
                                      _%g168787169081%_
                                      _%g168788169082%_
                                      _%g168789169083%_)
                               (let ((__tmp172882
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168786169080%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168581%_
                                  __tmp172882))))
                            (_%__kont171727171728%_
                             (lambda (_%g168826168948%_
                                      _%g168827168949%_
                                      _%g168828168950%_)
                               (let ((__tmp172883
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168826168948%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168581%_
                                  __tmp172883)))))
                        (let* ((_%__match171824171825%_
                                (lambda (_%e168829168868%_
                                         _%hd168830168871%_
                                         _%tl168831168873%_
                                         _%e168832168876%_
                                         _%hd168833168879%_
                                         _%tl168834168881%_
                                         _%e168835168884%_
                                         _%hd168836168887%_
                                         _%tl168837168889%_
                                         _%e168838168892%_
                                         _%hd168839168895%_
                                         _%tl168840168897%_
                                         _%e168841168900%_
                                         _%hd168842168903%_
                                         _%tl168843168905%_
                                         _%e168844168908%_
                                         _%hd168845168911%_
                                         _%tl168846168913%_
                                         _%e168847168916%_
                                         _%hd168848168919%_
                                         _%tl168849168921%_
                                         _%e168850168924%_
                                         _%hd168851168927%_
                                         _%tl168852168929%_
                                         _%e168853168932%_
                                         _%hd168854168935%_
                                         _%tl168855168937%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168849168921%_))
                                      (let ((_%e168856168940%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168849168921%_))))
                                        (let ((_%tl168858168945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168856168940%_)))
                                              (_%hd168857168943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168856168940%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl168858168945%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl168834168881%_))
                                                  (_%__kont171727171728%_
                                                   _%hd168854168935%_
                                                   _%hd168845168911%_
                                                   _%hd168830168871%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168739168863%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168739168863%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168739168863%_)))))
                               (_%__match171754171755%_
                                (lambda (_%e168790168986%_
                                         _%hd168791168989%_
                                         _%tl168792168991%_
                                         _%__splice171725171726%_
                                         _%target168793168994%_
                                         _%tl168795168996%_)
                                  (letrec ((_%loop168796168999%_
                                            (lambda (_%hd168794169002%_
                                                     _%arg168800169004%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168794169002%_))
                                                  (let ((_%e168797169006%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168794169002%_))))
                                                    (let ((_%lp-tl168799169011%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168797169006%_)))
                                                          (_%lp-hd168798169009%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168797169006%_))))
                                                      (_%loop168796168999%_
                                                       _%lp-tl168799169011%_
                                                       (cons _%lp-hd168798169009%_
                                                             _%arg168800169004%_))))
                                                  (let ((_%arg168801169014%_
                                                         (reverse _%arg168800169004%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl168792168991%_))
                                                        (let ((_%e168802169016%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl168792168991%_))))
                  (let ((_%tl168804169021%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168802169016%_)))
                        (_%hd168803169019%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168802169016%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168803169019%_))
                        (let ((_%e168805169024%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168803169019%_))))
                          (let ((_%tl168807169029%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168805169024%_)))
                                (_%hd168806169027%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168805169024%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd168806169027%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd168806169027%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168807169029%_))
                                        (let ((_%e168808169032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168807169029%_))))
                                          (let ((_%tl168810169037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168808169032%_)))
                                                (_%hd168809169035%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168808169032%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd168809169035%_))
                                                (let ((_%e168811169040%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd168809169035%_))))
                                                  (let ((_%tl168813169045%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168811169040%_)))
                                                        (_%hd168812169043%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168811169040%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd168812169043%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd168812169043%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl168813169045%_))
                        (let ((_%e168814169048%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168813169045%_))))
                          (let ((_%tl168816169053%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168814169048%_)))
                                (_%hd168815169051%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168814169048%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl168816169053%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl168810169037%_))
                                    (let ((_%e168817169056%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl168810169037%_))))
                                      (let ((_%tl168819169061%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168817169056%_)))
                                            (_%hd168818169059%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168817169056%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd168818169059%_))
                                            (let ((_%e168820169064%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd168818169059%_))))
                                              (let ((_%tl168822169069%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168820169064%_)))
                                                    (_%hd168821169067%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168820169064%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd168821169067%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd168821169067%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl168822169069%_))
                                                            (let ((_%e168823169072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl168822169069%_))))
                      (let ((_%tl168825169077%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168823169072%_)))
                            (_%hd168824169075%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168823169072%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl168825169077%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl168804169021%_))
                                (_%__kont171723171724%_
                                 _%hd168824169075%_
                                 _%hd168815169051%_
                                 _%tl168795168996%_
                                 _%arg168801169014%_)
                                (_%__match171824171825%_
                                 _%e168790168986%_
                                 _%hd168791168989%_
                                 _%tl168792168991%_
                                 _%e168802169016%_
                                 _%hd168803169019%_
                                 _%tl168804169021%_
                                 _%e168805169024%_
                                 _%hd168806169027%_
                                 _%tl168807169029%_
                                 _%e168808169032%_
                                 _%hd168809169035%_
                                 _%tl168810169037%_
                                 _%e168811169040%_
                                 _%hd168812169043%_
                                 _%tl168813169045%_
                                 _%e168814169048%_
                                 _%hd168815169051%_
                                 _%tl168816169053%_
                                 _%e168817169056%_
                                 _%hd168818169059%_
                                 _%tl168819169061%_
                                 _%e168820169064%_
                                 _%hd168821169067%_
                                 _%tl168822169069%_
                                 _%e168823169072%_
                                 _%hd168824169075%_
                                 _%tl168825169077%_))
                            (let ()
                              (declare (not safe))
                              (_%g168739168863%_)))))
                    (let () (declare (not safe)) (_%g168739168863%_)))
                (let () (declare (not safe)) (_%g168739168863%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g168739168863%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g168739168863%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168739168863%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g168739168863%_)))))
                        (let () (declare (not safe)) (_%g168739168863%_)))
                    (let () (declare (not safe)) (_%g168739168863%_)))
                (let () (declare (not safe)) (_%g168739168863%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168739168863%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g168739168863%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168739168863%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g168739168863%_)))))
                        (let () (declare (not safe)) (_%g168739168863%_)))))
                (let () (declare (not safe)) (_%g168739168863%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop168796168999%_
                                     _%target168793168994%_
                                     '()))))
                               (_%__match171742171743%_
                                (lambda (_%e168744169120%_
                                         _%hd168745169123%_
                                         _%tl168746169125%_
                                         _%__splice171719171720%_
                                         _%target168747169128%_
                                         _%tl168749169130%_)
                                  (letrec ((_%loop168750169133%_
                                            (lambda (_%hd168748169136%_
                                                     _%arg168754169138%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168748169136%_))
                                                  (let ((_%e168751169140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168748169136%_))))
                                                    (let ((_%lp-tl168753169145%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168751169140%_)))
                                                          (_%lp-hd168752169143%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168751169140%_))))
                                                      (_%loop168750169133%_
                                                       _%lp-tl168753169145%_
                                                       (cons _%lp-hd168752169143%_
                                                             _%arg168754169138%_))))
                                                  (let ((_%arg168755169148%_
                                                         (reverse _%arg168754169138%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl168746169125%_))
                                                        (let ((_%e168756169150%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl168746169125%_))))
                  (let ((_%tl168758169155%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168756169150%_)))
                        (_%hd168757169153%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168756169150%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168757169153%_))
                        (let ((_%e168759169158%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168757169153%_))))
                          (let ((_%tl168761169163%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168759169158%_)))
                                (_%hd168760169161%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168759169158%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd168760169161%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd168760169161%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168761169163%_))
                                        (let ((_%e168762169166%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168761169163%_))))
                                          (let ((_%tl168764169171%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168762169166%_)))
                                                (_%hd168763169169%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168762169166%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd168763169169%_))
                                                (let ((_%e168765169174%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd168763169169%_))))
                                                  (let ((_%tl168767169179%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168765169174%_)))
                                                        (_%hd168766169177%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168765169174%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd168766169177%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd168766169177%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl168767169179%_))
                        (let ((_%e168768169182%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168767169179%_))))
                          (let ((_%tl168770169187%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168768169182%_)))
                                (_%hd168769169185%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168768169182%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl168770169187%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl168764169171%_))
                                    (let ((_%__splice171721171722%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl168764169171%_
                                              '0))))
                                      (let ((_%tl168773169192%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171721171722%_
                                                '1)))
                                            (_%target168771169190%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171721171722%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168773169192%_))
                                            (letrec ((_%loop168774169195%_
                                                      (lambda (_%hd168772169198%_
                                                               _%xarg168778169200%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd168772169198%_))
                                                            (let ((_%e168775169202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd168772169198%_))))
                      (let ((_%lp-tl168777169207%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168775169202%_)))
                            (_%lp-hd168776169205%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168775169202%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd168776169205%_))
                            (let ((_%e168780169210%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd168776169205%_))))
                              (let ((_%tl168782169215%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168780169210%_)))
                                    (_%hd168781169213%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168780169210%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd168781169213%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd168781169213%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl168782169215%_))
                                            (let ((_%e168783169218%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl168782169215%_))))
                                              (let ((_%tl168785169223%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168783169218%_)))
                                                    (_%hd168784169221%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168783169218%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl168785169223%_))
                                                    (_%loop168774169195%_
                                                     _%lp-tl168777169207%_
                                                     (cons _%hd168784169221%_
                                                           _%xarg168778169200%_))
                                                    (_%__match171754171755%_
                                                     _%e168744169120%_
                                                     _%hd168745169123%_
                                                     _%tl168746169125%_
                                                     _%__splice171719171720%_
                                                     _%target168747169128%_
                                                     _%tl168749169130%_))))
                                            (_%__match171754171755%_
                                             _%e168744169120%_
                                             _%hd168745169123%_
                                             _%tl168746169125%_
                                             _%__splice171719171720%_
                                             _%target168747169128%_
                                             _%tl168749169130%_))
                                        (_%__match171754171755%_
                                         _%e168744169120%_
                                         _%hd168745169123%_
                                         _%tl168746169125%_
                                         _%__splice171719171720%_
                                         _%target168747169128%_
                                         _%tl168749169130%_))
                                    (_%__match171754171755%_
                                     _%e168744169120%_
                                     _%hd168745169123%_
                                     _%tl168746169125%_
                                     _%__splice171719171720%_
                                     _%target168747169128%_
                                     _%tl168749169130%_))))
                            (_%__match171754171755%_
                             _%e168744169120%_
                             _%hd168745169123%_
                             _%tl168746169125%_
                             _%__splice171719171720%_
                             _%target168747169128%_
                             _%tl168749169130%_))))
                    (let ((_%xarg168779169226%_
                           (reverse _%xarg168778169200%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168758169155%_))
                          (_%__kont171717171718%_
                           _%xarg168779169226%_
                           _%hd168769169185%_
                           _%arg168755169148%_)
                          (_%__match171754171755%_
                           _%e168744169120%_
                           _%hd168745169123%_
                           _%tl168746169125%_
                           _%__splice171719171720%_
                           _%target168747169128%_
                           _%tl168749169130%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop168774169195%_
                                               _%target168771169190%_
                                               '()))
                                            (_%__match171754171755%_
                                             _%e168744169120%_
                                             _%hd168745169123%_
                                             _%tl168746169125%_
                                             _%__splice171719171720%_
                                             _%target168747169128%_
                                             _%tl168749169130%_))))
                                    (_%__match171754171755%_
                                     _%e168744169120%_
                                     _%hd168745169123%_
                                     _%tl168746169125%_
                                     _%__splice171719171720%_
                                     _%target168747169128%_
                                     _%tl168749169130%_))
                                (_%__match171754171755%_
                                 _%e168744169120%_
                                 _%hd168745169123%_
                                 _%tl168746169125%_
                                 _%__splice171719171720%_
                                 _%target168747169128%_
                                 _%tl168749169130%_))))
                        (_%__match171754171755%_
                         _%e168744169120%_
                         _%hd168745169123%_
                         _%tl168746169125%_
                         _%__splice171719171720%_
                         _%target168747169128%_
                         _%tl168749169130%_))
                    (_%__match171754171755%_
                     _%e168744169120%_
                     _%hd168745169123%_
                     _%tl168746169125%_
                     _%__splice171719171720%_
                     _%target168747169128%_
                     _%tl168749169130%_))
                (_%__match171754171755%_
                 _%e168744169120%_
                 _%hd168745169123%_
                 _%tl168746169125%_
                 _%__splice171719171720%_
                 _%target168747169128%_
                 _%tl168749169130%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match171754171755%_
                                                 _%e168744169120%_
                                                 _%hd168745169123%_
                                                 _%tl168746169125%_
                                                 _%__splice171719171720%_
                                                 _%target168747169128%_
                                                 _%tl168749169130%_))))
                                        (_%__match171754171755%_
                                         _%e168744169120%_
                                         _%hd168745169123%_
                                         _%tl168746169125%_
                                         _%__splice171719171720%_
                                         _%target168747169128%_
                                         _%tl168749169130%_))
                                    (_%__match171754171755%_
                                     _%e168744169120%_
                                     _%hd168745169123%_
                                     _%tl168746169125%_
                                     _%__splice171719171720%_
                                     _%target168747169128%_
                                     _%tl168749169130%_))
                                (_%__match171754171755%_
                                 _%e168744169120%_
                                 _%hd168745169123%_
                                 _%tl168746169125%_
                                 _%__splice171719171720%_
                                 _%target168747169128%_
                                 _%tl168749169130%_))))
                        (_%__match171754171755%_
                         _%e168744169120%_
                         _%hd168745169123%_
                         _%tl168746169125%_
                         _%__splice171719171720%_
                         _%target168747169128%_
                         _%tl168749169130%_))))
                (_%__match171754171755%_
                 _%e168744169120%_
                 _%hd168745169123%_
                 _%tl168746169125%_
                 _%__splice171719171720%_
                 _%target168747169128%_
                 _%tl168749169130%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop168750169133%_
                                     _%target168747169128%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx171715171716%_))
                              (let ((_%e168744169120%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx171715171716%_))))
                                (let ((_%tl168746169125%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168744169120%_)))
                                      (_%hd168745169123%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168744169120%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd168745169123%_))
                                      (let ((_%__splice171719171720%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd168745169123%_
                                                '0))))
                                        (let ((_%tl168749169130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171719171720%_
                                                  '1)))
                                              (_%target168747169128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171719171720%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl168749169130%_))
                                              (_%__match171742171743%_
                                               _%e168744169120%_
                                               _%hd168745169123%_
                                               _%tl168746169125%_
                                               _%__splice171719171720%_
                                               _%target168747169128%_
                                               _%tl168749169130%_)
                                              (_%__match171754171755%_
                                               _%e168744169120%_
                                               _%hd168745169123%_
                                               _%tl168746169125%_
                                               _%__splice171719171720%_
                                               _%target168747169128%_
                                               _%tl168749169130%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl168746169125%_))
                                          (let ((_%e168832168876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl168746169125%_))))
                                            (let ((_%tl168834168881%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168832168876%_)))
                                                  (_%hd168833168879%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168832168876%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168833168879%_))
                                                  (let ((_%e168835168884%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168833168879%_))))
                                                    (let ((_%tl168837168889%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168835168884%_)))
                                                          (_%hd168836168887%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168835168884%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd168836168887%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd168836168887%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168837168889%_))
                          (let ((_%e168838168892%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168837168889%_))))
                            (let ((_%tl168840168897%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168838168892%_)))
                                  (_%hd168839168895%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168838168892%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd168839168895%_))
                                  (let ((_%e168841168900%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd168839168895%_))))
                                    (let ((_%tl168843168905%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168841168900%_)))
                                          (_%hd168842168903%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168841168900%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd168842168903%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd168842168903%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl168843168905%_))
                                                  (let ((_%e168844168908%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl168843168905%_))))
                                                    (let ((_%tl168846168913%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168844168908%_)))
                                                          (_%hd168845168911%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168844168908%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl168846168913%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl168840168897%_))
                      (let ((_%e168847168916%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl168840168897%_))))
                        (let ((_%tl168849168921%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168847168916%_)))
                              (_%hd168848168919%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168847168916%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd168848168919%_))
                              (let ((_%e168850168924%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd168848168919%_))))
                                (let ((_%tl168852168929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168850168924%_)))
                                      (_%hd168851168927%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168850168924%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd168851168927%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd168851168927%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl168852168929%_))
                                              (let ((_%e168853168932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl168852168929%_))))
                                                (let ((_%tl168855168937%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168853168932%_)))
                                                      (_%hd168854168935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168853168932%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl168855168937%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl168849168921%_))
                                                          (let ((_%e168856168940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl168849168921%_))))
                    (let ((_%tl168858168945%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168856168940%_)))
                          (_%hd168857168943%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168856168940%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168858168945%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl168834168881%_))
                              (_%__kont171727171728%_
                               _%hd168854168935%_
                               _%hd168845168911%_
                               _%hd168745169123%_)
                              (let ()
                                (declare (not safe))
                                (_%g168739168863%_)))
                          (let () (declare (not safe)) (_%g168739168863%_)))))
                  (let () (declare (not safe)) (_%g168739168863%_)))
              (let () (declare (not safe)) (_%g168739168863%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g168739168863%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168739168863%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168739168863%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168739168863%_)))))
                      (let () (declare (not safe)) (_%g168739168863%_)))
                  (let () (declare (not safe)) (_%g168739168863%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168739168863%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168739168863%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168739168863%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168739168863%_)))))
                          (let () (declare (not safe)) (_%g168739168863%_)))
                      (let () (declare (not safe)) (_%g168739168863%_)))
                  (let () (declare (not safe)) (_%g168739168863%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168739168863%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168739168863%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g168739168863%_))))))))
                 (_%generate1168586%_
                  (lambda (_%args168717%_
                           _%arglen168718%_
                           _%hd168719%_
                           _%body168720%_)
                    (let* ((_%len168722%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd168719%_)))
                           (_%condition168727%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd168719%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen168718%_
                                                (cons _%len168722%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen168718%_ (cons _%len168722%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len168722%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen168718%_
                                                    (cons _%len168722%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen168718%_ (cons _%len168722%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch168729%_
                            (if (_%dispatch-case?168584%_
                                 _%hd168719%_
                                 _%body168720%_)
                                (_%dispatch-case-e168585%_
                                 _%hd168719%_
                                 _%body168720%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self168581%_
                                 _%hd168719%_
                                 _%body168720%_))))
                      (cons _%condition168727%_
                            (cons (cons 'apply
                                        (cons _%dispatch168729%_
                                              (cons _%args168717%_ '())))
                                  '()))))))
          (let* ((_%g168588168616%_
                  (lambda (_%g168589168613%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g168589168613%_))))
                 (_%g168587168714%_
                  (lambda (_%g168589168619%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g168589168619%_))
                        (let ((_%e168592168621%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g168589168619%_))))
                          (let ((_%hd168593168624%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168592168621%_)))
                                (_%tl168594168626%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168592168621%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl168594168626%_))
                                (let ((_g172884_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl168594168626%_
                                          '0))))
                                  (begin
                                    (let ((_g172885_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g172884_)
                                                 (##values-length _g172884_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g172885_ 2)))
                                          (error "Context expects 2 values"
                                                 _g172885_)))
                                    (let ((_%target168595168629%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g172884_ 0)))
                                          (_%tl168597168631%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g172884_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl168597168631%_))
                                          (letrec ((_%loop168598168634%_
                                                    (lambda (_%hd168596168637%_
                                                             _%body168602168639%_
                                                             _%hd168603168640%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd168596168637%_))
                                                          (let ((_%e168599168642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd168596168637%_))))
                    (let ((_%lp-hd168600168645%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168599168642%_)))
                          (_%lp-tl168601168647%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168599168642%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd168600168645%_))
                          (let ((_%e168606168650%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd168600168645%_))))
                            (let ((_%hd168607168653%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168606168650%_)))
                                  (_%tl168608168655%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168606168650%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl168608168655%_))
                                  (let ((_%e168609168658%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl168608168655%_))))
                                    (let ((_%hd168610168661%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168609168658%_)))
                                          (_%tl168611168663%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168609168658%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl168611168663%_))
                                          (_%loop168598168634%_
                                           _%lp-tl168601168647%_
                                           (cons _%hd168610168661%_
                                                 _%body168602168639%_)
                                           (cons _%hd168607168653%_
                                                 _%hd168603168640%_))
                                          (_%g168588168616%_
                                           _%g168589168619%_))))
                                  (_%g168588168616%_ _%g168589168619%_))))
                          (_%g168588168616%_ _%g168589168619%_))))
                  (let ((_%body168604168666%_ (reverse _%body168602168639%_))
                        (_%hd168605168667%_ (reverse _%hd168603168640%_)))
                    ((lambda (_%g168590168669%_ _%g168591168670%_)
                       (let ((_%args168689%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen168690%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name168691%_
                              (let ((_%$e168686%_
                                     (let ((__tmp172886
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp172886 _%stx168582%_))))
                                (if _%$e168686%_
                                    _%$e168686%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args168689%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen168690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args168689%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args168689%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp172890
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name168691%_
                                                                (cons _%args168689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp172887
                                  (map (lambda (_%g168692168695%_
                                                _%g168693168697%_)
                                         (_%generate1168586%_
                                          _%args168689%_
                                          _%arglen168690%_
                                          _%g168692168695%_
                                          _%g168693168697%_))
                                       (let ((__tmp172888
                                              (lambda (_%g168699168702%_
                                                       _%g168700168704%_)
                                                (cons _%g168699168702%_
                                                      _%g168700168704%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp172888
                                          '()
                                          _%g168591168670%_))
                                       (let ((__tmp172889
                                              (lambda (_%g168706168709%_
                                                       _%g168707168711%_)
                                                (cons _%g168706168709%_
                                                      _%g168707168711%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp172889
                                          '()
                                          _%g168590168669%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp172890 __tmp172887)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body168604168666%_
                     _%hd168605168667%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop168598168634%_
                                             _%target168595168629%_
                                             '()
                                             '()))
                                          (_%g168588168616%_
                                           _%g168589168619%_)))))
                                (_%g168588168616%_ _%g168589168619%_))))
                        (_%g168588168616%_ _%g168589168619%_)))))
            (_%g168587168714%_ _%stx168582%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self167818%_ _%stx167819%_ _%compiled-body?167820%_)
        (letrec ((_%generate-simple167822%_
                  (lambda (_%hd168566%_ _%body168567%_)
                    (_%coalesce-boolean167823%_
                     (_%simplify-let167824%_
                      (gxc#generate-runtime-simple-let
                       _%self167818%_
                       'let
                       _%hd168566%_
                       _%body168567%_
                       _%compiled-body?167820%_)))))
                 (_%coalesce-boolean167823%_
                  (lambda (_%code168427%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code168428168454%_ _%code168427%_)
                               (_%else168430168462%_
                                (lambda () _%code168427%_))
                               (_%K168432168499%_
                                (lambda (_%expr2168465%_
                                         _%expr1168466%_
                                         _%id168467%_)
                                  (let* ((_%expr2168468168476%_
                                          _%expr2168465%_)
                                         (_%else168470168484%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1168466%_
                                                        (cons _%expr2168465%_
                                                              '())))))
                                         (_%K168472168489%_
                                          (lambda (_%exprs168487%_)
                                            (cons 'or
                                                  (cons _%expr1168466%_
                                                        _%exprs168487%_)))))
                                    (if (pair? _%expr2168468168476%_)
                                        (let ((_%hd168473168492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2168468168476%_)))
                                              (_%tl168474168494%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2168468168476%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd168473168492%_ 'or))
                                              (let ((_%exprs168497%_
                                                     _%tl168474168494%_))
                                                (_%K168472168489%_
                                                 _%exprs168497%_))
                                              (_%else168470168484%_)))
                                        (_%else168470168484%_))))))
                          (if (pair? _%code168428168454%_)
                              (let ((_%hd168433168502%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code168428168454%_)))
                                    (_%tl168434168504%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code168428168454%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd168433168502%_ 'let))
                                    (if (pair? _%tl168434168504%_)
                                        (let ((_%hd168435168507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl168434168504%_)))
                                              (_%tl168436168509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl168434168504%_))))
                                          (if (pair? _%hd168435168507%_)
                                              (let ((_%hd168447168512%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd168435168507%_)))
                                                    (_%tl168448168514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd168435168507%_))))
                                                (if (pair? _%hd168447168512%_)
                                                    (let ((_%hd168449168517%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd168447168512%_)))
                                                          (_%tl168450168519%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd168447168512%_))))
                                                      (let ((_%id168522%_
                                                             _%hd168449168517%_))
                                                        (if (pair? _%tl168450168519%_)
                                                            (let ((_%hd168451168524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl168450168519%_)))
                          (_%tl168452168526%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl168450168519%_))))
                      (let ((_%expr1168529%_ _%hd168451168524%_))
                        (if (null? _%tl168452168526%_)
                            (if (null? _%tl168448168514%_)
                                (if (pair? _%tl168436168509%_)
                                    (let ((_%hd168437168531%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl168436168509%_)))
                                          (_%tl168438168533%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl168436168509%_))))
                                      (if (pair? _%hd168437168531%_)
                                          (let ((_%hd168439168536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd168437168531%_)))
                                                (_%tl168440168538%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd168437168531%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd168439168536%_
                                                         'if))
                                                (if (pair? _%tl168440168538%_)
                                                    (let ((_%hd168441168541%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl168440168538%_)))
                                                          (_%tl168442168543%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl168440168538%_))))
                                                      (if ((lambda (_%g168545168547%_)
                                                             (eq? _%g168545168547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id168522%_))
                   _%hd168441168541%_)
                  (if (pair? _%tl168442168543%_)
                      (let ((_%hd168443168550%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl168442168543%_)))
                            (_%tl168444168552%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl168442168543%_))))
                        (if ((lambda (_%g168554168556%_)
                               (eq? _%g168554168556%_ _%id168522%_))
                             _%hd168443168550%_)
                            (if (pair? _%tl168444168552%_)
                                (let ((_%hd168445168559%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl168444168552%_)))
                                      (_%tl168446168561%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl168444168552%_))))
                                  (let ((_%expr2168564%_ _%hd168445168559%_))
                                    (if (null? _%tl168446168561%_)
                                        (if (null? _%tl168438168533%_)
                                            (_%K168432168499%_
                                             _%expr2168564%_
                                             _%expr1168529%_
                                             _%id168522%_)
                                            (_%else168430168462%_))
                                        (_%else168430168462%_))))
                                (_%else168430168462%_))
                            (_%else168430168462%_)))
                      (_%else168430168462%_))
                  (_%else168430168462%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else168430168462%_))
                                                (_%else168430168462%_)))
                                          (_%else168430168462%_)))
                                    (_%else168430168462%_))
                                (_%else168430168462%_))
                            (_%else168430168462%_))))
                    (_%else168430168462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else168430168462%_)))
                                              (_%else168430168462%_)))
                                        (_%else168430168462%_))
                                    (_%else168430168462%_)))
                              (_%else168430168462%_)))
                        _%code168427%_)))
                 (_%simplify-let167824%_
                  (lambda (_%code168126%_)
                    (let* ((_%code168127168199%_ _%code168126%_)
                           (_%else168132168207%_ (lambda () _%code168126%_)))
                      (let ((_%K168191168407%_
                             (lambda (_%expr168405%_) _%expr168405%_))
                            (_%K168174168353%_
                             (lambda (_%body168349%_
                                      _%expr168350%_
                                      _%id168351%_)
                               (cons 'let
                                     (cons (cons (cons _%id168351%_
                                                       (cons _%expr168350%_
                                                             '()))
                                                 '())
                                           _%body168349%_))))
                            (_%K168151168277%_
                             (lambda (_%body168271%_
                                      _%expr2168272%_
                                      _%id2168273%_
                                      _%expr1168274%_
                                      _%id1168275%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1168275%_
                                                       (cons _%expr1168274%_
                                                             '()))
                                                 (cons (cons _%id2168273%_
                                                             (cons _%expr2168272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body168271%_))))
                            (_%K168134168216%_
                             (lambda (_%body168211%_
                                      _%bind168212%_
                                      _%expr1168213%_
                                      _%id1168214%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1168214%_
                                                       (cons _%expr1168213%_
                                                             '()))
                                                 _%bind168212%_)
                                           _%body168211%_)))))
                        (if (pair? _%code168127168199%_)
                            (let ((_%tl168193168412%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code168127168199%_)))
                                  (_%hd168192168410%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code168127168199%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd168192168410%_ 'let))
                                  (if (pair? _%tl168193168412%_)
                                      (let ((_%tl168195168417%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl168193168412%_)))
                                            (_%hd168194168415%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl168193168412%_))))
                                        (if (null? _%hd168194168415%_)
                                            (if (pair? _%tl168195168417%_)
                                                (let ((_%tl168197168422%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl168195168417%_)))
                                                      (_%hd168196168420%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl168195168417%_))))
                                                  (if (null? _%tl168197168422%_)
                                                      (let ((_%expr168425%_
                                                             _%hd168196168420%_))
                                                        (_%K168191168407%_
                                                         _%expr168425%_))
                                                      (_%else168132168207%_)))
                                                (_%else168132168207%_))
                                            (if (pair? _%hd168194168415%_)
                                                (let ((_%tl168186168368%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd168194168415%_)))
                                                      (_%hd168185168366%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd168194168415%_))))
                                                  (if (pair? _%hd168185168366%_)
                                                      (let ((_%tl168188168373%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd168185168366%_)))
                    (_%hd168187168371%_
                     (let () (declare (not safe)) (##car _%hd168185168366%_))))
                (if (pair? _%tl168188168373%_)
                    (let ((_%tl168190168380%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl168188168373%_)))
                          (_%hd168189168378%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl168188168373%_))))
                      (if (null? _%tl168190168380%_)
                          (if (null? _%tl168186168368%_)
                              (if (pair? _%tl168195168417%_)
                                  (let ((_%tl168180168387%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl168195168417%_)))
                                        (_%hd168179168385%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl168195168417%_))))
                                    (if (pair? _%hd168179168385%_)
                                        (let ((_%tl168182168392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd168179168385%_)))
                                              (_%hd168181168390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd168179168385%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd168181168390%_
                                                       'let))
                                              (if (pair? _%tl168182168392%_)
                                                  (let ((_%tl168184168397%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl168182168392%_)))
                                                        (_%hd168183168395%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl168182168392%_))))
                                                    (if (null? _%hd168183168395%_)
                                                        (if (null? _%tl168180168387%_)
                                                            (let ((_%id168376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd168187168371%_)
                          (_%expr168383%_ _%hd168189168378%_)
                          (_%body168400%_ _%tl168184168397%_))
                      (_%K168174168353%_
                       _%body168400%_
                       _%expr168383%_
                       _%id168376%_))
                    (_%else168132168207%_))
                (if (pair? _%hd168183168395%_)
                    (let ((_%tl168163168326%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd168183168395%_)))
                          (_%hd168162168324%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd168183168395%_))))
                      (if (pair? _%hd168162168324%_)
                          (let ((_%tl168165168331%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd168162168324%_)))
                                (_%hd168164168329%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd168162168324%_))))
                            (if (pair? _%tl168165168331%_)
                                (let ((_%tl168167168338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl168165168331%_)))
                                      (_%hd168166168336%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl168165168331%_))))
                                  (if (null? _%tl168167168338%_)
                                      (if (null? _%tl168163168326%_)
                                          (if (null? _%tl168180168387%_)
                                              (let ((_%id1168300%_
                                                     _%hd168187168371%_)
                                                    (_%expr1168307%_
                                                     _%hd168189168378%_)
                                                    (_%id2168334%_
                                                     _%hd168164168329%_)
                                                    (_%expr2168341%_
                                                     _%hd168166168336%_)
                                                    (_%body168343%_
                                                     _%tl168184168397%_))
                                                (_%K168151168277%_
                                                 _%body168343%_
                                                 _%expr2168341%_
                                                 _%id2168334%_
                                                 _%expr1168307%_
                                                 _%id1168300%_))
                                              (_%else168132168207%_))
                                          (_%else168132168207%_))
                                      (_%else168132168207%_)))
                                (_%else168132168207%_)))
                          (_%else168132168207%_)))
                    (_%else168132168207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else168132168207%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd168181168390%_
                                                           'let*))
                                                  (if (pair? _%tl168182168392%_)
                                                      (let ((_%tl168144168260%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl168182168392%_)))
                    (_%hd168143168258%_
                     (let () (declare (not safe)) (##car _%tl168182168392%_))))
                (if (null? _%tl168180168387%_)
                    (let ((_%id1168239%_ _%hd168187168371%_)
                          (_%expr1168246%_ _%hd168189168378%_)
                          (_%bind168263%_ _%hd168143168258%_)
                          (_%body168265%_ _%tl168144168260%_))
                      (_%K168134168216%_
                       _%body168265%_
                       _%bind168263%_
                       _%expr1168246%_
                       _%id1168239%_))
                    (_%else168132168207%_)))
              (_%else168132168207%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else168132168207%_))))
                                        (_%else168132168207%_)))
                                  (_%else168132168207%_))
                              (_%else168132168207%_))
                          (_%else168132168207%_)))
                    (_%else168132168207%_)))
              (_%else168132168207%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else168132168207%_))))
                                      (_%else168132168207%_))
                                  (_%else168132168207%_)))
                            (_%else168132168207%_))))))
                 (_%generate-values167825%_
                  (lambda (_%hd167939%_ _%body167940%_)
                    (let _%lp167942%_ ((_%rest167944%_ _%hd167939%_)
                                       (_%bind167945%_ '())
                                       (_%check167946%_ '())
                                       (_%post167947%_ '()))
                      (let* ((_%__stx172044172045%_ _%rest167944%_)
                             (_%g167950167961%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172044172045%_)))))
                        (let ((_%__kont172046172047%_
                               (lambda (_%g167952167988%_ _%g167953167989%_)
                                 (let* ((_%__stx172000172001%_
                                         _%g167953167989%_)
                                        (_%g168004168029%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172000172001%_)))))
                                   (let ((_%__kont172002172003%_
                                          (lambda (_%g168006168102%_
                                                   _%g168007168103%_)
                                            (let ((_%eid168117%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g168007168103%_)))
                                                  (_%expr168118%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self167818%_
                                                      _%g168006168102%_))))
                                              (_%lp167942%_
                                               _%g167952167988%_
                                               (cons (cons _%eid168117%_
                                                           (cons _%expr168118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind167945%_)
                                               _%check167946%_
                                               _%post167947%_))))
                                         (_%__kont172004172005%_
                                          (lambda (_%g168017168050%_
                                                   _%g168018168051%_)
                                            (let* ((_%vals168064%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values168066%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals168064%_
                                                     _%g168018168051%_
                                                     _%g168017168050%_))
                                                   (_%refs168068%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals168064%_
                                                     _%g168018168051%_))
                                                   (_%expr168070%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self167818%_
                                                       _%g168017168050%_))))
                                              (_%lp167942%_
                                               _%g167952167988%_
                                               (cons (cons _%vals168064%_
                                                           (cons _%expr168070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind167945%_)
                                               (cons _%check-values168066%_
                                                     _%check167946%_)
                                               (cons _%refs168068%_
                                                     _%post167947%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172000172001%_))
                                         (let ((_%e168008168078%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172000172001%_))))
                                           (let ((_%tl168010168083%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168008168078%_)))
                                                 (_%hd168009168081%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168008168078%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd168009168081%_))
                                                 (let ((_%e168011168086%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd168009168081%_))))
                                                   (let ((_%tl168013168091%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168011168086%_)))
                                                         (_%hd168012168089%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168011168086%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl168013168091%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl168010168083%_))
                     (let ((_%e168014168094%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl168010168083%_))))
                       (let ((_%tl168016168099%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168014168094%_)))
                             (_%hd168015168097%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168014168094%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl168016168099%_))
                             (_%__kont172002172003%_
                              _%hd168015168097%_
                              _%hd168012168089%_)
                             (let ()
                               (declare (not safe))
                               (_%g168004168029%_)))))
                     (let () (declare (not safe)) (_%g168004168029%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl168010168083%_))
                     (let ((_%e168022168042%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl168010168083%_))))
                       (let ((_%tl168024168047%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168022168042%_)))
                             (_%hd168023168045%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168022168042%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl168024168047%_))
                             (_%__kont172004172005%_
                              _%hd168023168045%_
                              _%hd168009168081%_)
                             (let ()
                               (declare (not safe))
                               (_%g168004168029%_)))))
                     (let () (declare (not safe)) (_%g168004168029%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl168010168083%_))
                                                     (let ((_%e168022168042%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl168010168083%_))))
                                                       (let ((_%tl168024168047%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e168022168042%_)))
                     (_%hd168023168045%_
                      (let () (declare (not safe)) (##car _%e168022168042%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl168024168047%_))
                     (_%__kont172004172005%_
                      _%hd168023168045%_
                      _%hd168009168081%_)
                     (let () (declare (not safe)) (_%g168004168029%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168004168029%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g168004168029%_)))))))
                              (_%__kont172048172049%_
                               (lambda ()
                                 (let* ((_%body167968%_
                                         (if _%compiled-body?167820%_
                                             _%body167940%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self167818%_
                                                _%body167940%_))))
                                        (_%body167970%_
                                         (_%generate-values-post167826%_
                                          _%post167947%_
                                          _%body167968%_))
                                        (_%body167972%_
                                         (_%generate-values-check167827%_
                                          _%check167946%_
                                          _%body167970%_)))
                                   (cons 'let
                                         (cons (reverse _%bind167945%_)
                                               (cons _%body167972%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx172044172045%_))
                              (let ((_%e167954167980%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx172044172045%_))))
                                (let ((_%tl167956167985%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167954167980%_)))
                                      (_%hd167955167983%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167954167980%_))))
                                  (_%__kont172046172047%_
                                   _%tl167956167985%_
                                   _%hd167955167983%_)))
                              (_%__kont172048172049%_)))))))
                 (_%generate-values-post167826%_
                  (lambda (_%post167898%_ _%body167899%_)
                    (let _%lp167901%_ ((_%rest167903%_ _%post167898%_)
                                       (_%body167904%_ _%body167899%_))
                      (let* ((_%rest167905167913%_ _%rest167903%_)
                             (_%else167907167921%_ (lambda () _%body167904%_))
                             (_%K167909167927%_
                              (lambda (_%rest167924%_ _%bind167925%_)
                                (_%lp167901%_
                                 _%rest167924%_
                                 (cons 'let
                                       (cons _%bind167925%_
                                             (cons _%body167904%_ '())))))))
                        (if (pair? _%rest167905167913%_)
                            (let ((_%hd167910167930%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167905167913%_)))
                                  (_%tl167911167932%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167905167913%_))))
                              (let* ((_%bind167935%_ _%hd167910167930%_)
                                     (_%rest167937%_ _%tl167911167932%_))
                                (_%K167909167927%_
                                 _%rest167937%_
                                 _%bind167935%_)))
                            (_%else167907167921%_))))))
                 (_%generate-values-check167827%_
                  (lambda (_%check167895%_ _%body167896%_)
                    (cons 'begin
                          (let ((__tmp172892 (cons _%body167896%_ '()))
                                (__tmp172891 (reverse _%check167895%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp172892 __tmp172891))))))
          (let* ((_%g167829167846%_
                  (lambda (_%g167830167843%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g167830167843%_))))
                 (_%g167828167892%_
                  (lambda (_%g167830167849%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g167830167849%_))
                        (let ((_%e167833167851%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g167830167849%_))))
                          (let ((_%hd167834167854%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167833167851%_)))
                                (_%tl167835167856%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167833167851%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167835167856%_))
                                (let ((_%e167836167859%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167835167856%_))))
                                  (let ((_%hd167837167862%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167836167859%_)))
                                        (_%tl167838167864%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167836167859%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167838167864%_))
                                        (let ((_%e167839167867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167838167864%_))))
                                          (let ((_%hd167840167870%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167839167867%_)))
                                                (_%tl167841167872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167839167867%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167841167872%_))
                                                ((lambda (_%g167831167875%_
                                                          _%g167832167876%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g167832167876%_)
                                                       (_%generate-simple167822%_
                                                        _%g167832167876%_
                                                        _%g167831167875%_)
                                                       (_%generate-values167825%_
                                                        _%g167832167876%_
                                                        _%g167831167875%_)))
                                                 _%hd167840167870%_
                                                 _%hd167837167862%_)
                                                (_%g167829167846%_
                                                 _%g167830167849%_))))
                                        (_%g167829167846%_
                                         _%g167830167849%_))))
                                (_%g167829167846%_ _%g167830167849%_))))
                        (_%g167829167846%_ _%g167830167849%_)))))
            (_%g167828167892%_ _%stx167819%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self168572%_ _%stx168573%_)
        (let ((_%compiled-body?168575%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self168572%_
           _%stx168573%_
           _%compiled-body?168575%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g172893_
        (let ((_g172894_ (let () (declare (not safe)) (##length _g172893_))))
          (cond ((let () (declare (not safe)) (##fx= _g172894_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g172893_))
                ((let () (declare (not safe)) (##fx= _g172894_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g172893_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g172893_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals167712%_ _%hd167713%_)
        (let _%lp167715%_ ((_%rest167717%_ _%hd167713%_)
                           (_%k167718%_ '0)
                           (_%r167719%_ '()))
          (let* ((_%__stx172058172059%_ _%rest167717%_)
                 (_%g167724167741%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx172058172059%_)))))
            (let ((_%__kont172060172061%_
                   (lambda (_%g167726167804%_)
                     (_%lp167715%_
                      _%g167726167804%_
                      (let () (declare (not safe)) (##fx+ _%k167718%_ '1))
                      _%r167719%_)))
                  (_%__kont172062172063%_
                   (lambda (_%g167731167777%_ _%g167732167778%_)
                     (_%lp167715%_
                      _%g167731167777%_
                      (let () (declare (not safe)) (##fx+ _%k167718%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g167732167778%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals167712%_
                                         _%k167718%_
                                         _%g167731167777%_)
                                        '()))
                            _%r167719%_))))
                  (_%__kont172064172065%_
                   (lambda (_%g167736167753%_)
                     (let ((__tmp172895
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g167736167753%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals167712%_
                                               _%k167718%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp172895 _%r167719%_))))
                  (_%__kont172066172067%_ (lambda () (reverse _%r167719%_))))
              (let ((_%g167722167764%_
                     (lambda ()
                       (let ((_%g167736167753%_ _%__stx172058172059%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g167736167753%_))
                             (_%__kont172064172065%_ _%g167736167753%_)
                             (_%__kont172066172067%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx172058172059%_))
                    (let ((_%e167727167793%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx172058172059%_))))
                      (let ((_%tl167729167798%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167727167793%_)))
                            (_%hd167728167796%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167727167793%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd167728167796%_))
                            (let ((_%e167730167801%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd167728167796%_))))
                              (if (equal? _%e167730167801%_ '#f)
                                  (_%__kont172060172061%_ _%tl167729167798%_)
                                  (_%__kont172062172063%_
                                   _%tl167729167798%_
                                   _%hd167728167796%_)))
                            (_%__kont172062172063%_
                             _%tl167729167798%_
                             _%hd167728167796%_))))
                    (let () (declare (not safe)) (_%g167722167764%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self167391%_ _%stx167392%_ _%compiled-body?167393%_)
        (letrec ((_%generate-simple167395%_
                  (lambda (_%hd167697%_ _%body167698%_)
                    (gxc#generate-runtime-simple-let
                     _%self167391%_
                     'letrec
                     _%hd167697%_
                     _%body167698%_
                     _%compiled-body?167393%_)))
                 (_%generate-values167396%_
                  (lambda (_%hd167476%_ _%body167477%_)
                    (let _%lp167479%_ ((_%rest167481%_ _%hd167476%_)
                                       (_%bind167482%_ '())
                                       (_%check167483%_ '())
                                       (_%post167484%_ '()))
                      (let* ((_%__stx172132172133%_ _%rest167481%_)
                             (_%g167487167498%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172132172133%_)))))
                        (let ((_%__kont172134172135%_
                               (lambda (_%g167489167525%_ _%g167490167526%_)
                                 (let* ((_%__stx172088172089%_
                                         _%g167490167526%_)
                                        (_%g167541167566%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172088172089%_)))))
                                   (let ((_%__kont172090172091%_
                                          (lambda (_%g167543167673%_
                                                   _%g167544167674%_)
                                            (let ((_%eid167688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g167544167674%_)))
                                                  (_%expr167689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self167391%_
                                                      _%g167543167673%_))))
                                              (_%lp167479%_
                                               _%g167489167525%_
                                               (cons (cons _%eid167688%_
                                                           (cons _%expr167689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind167482%_)
                                               _%check167483%_
                                               _%post167484%_))))
                                         (_%__kont172092172093%_
                                          (lambda (_%g167554167587%_
                                                   _%g167555167588%_)
                                            (let* ((_%vals167601%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values167603%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals167601%_
                                                     _%g167555167588%_
                                                     _%g167554167587%_))
                                                   (_%refs167605%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals167601%_
                                                     _%g167555167588%_))
                                                   (_%expr167607%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self167391%_
                                                       _%g167554167587%_))))
                                              (_%lp167479%_
                                               _%g167489167525%_
                                               (let ((__tmp172897
                                                      (cons (cons _%vals167601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr167607%_ '()))
                    _%bind167482%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp172896
                                                      (map (lambda (_%e167609167611%_)
                                                             (let* ((_%e167609167613167622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e167609167611%_)
                            (_%E167615167626%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e167609167613167622%_
                                        '([eid _])))
                               '#!void))
                            (_%K167616167631%_
                             (lambda (_%eid167629%_)
                               (cons _%eid167629%_ (cons '#!void '())))))
                       (if (pair? _%e167609167613167622%_)
                           (let ((_%hd167617167634%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e167609167613167622%_)))
                                 (_%tl167618167636%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e167609167613167622%_))))
                             (let ((_%eid167639%_ _%hd167617167634%_))
                               (if (pair? _%tl167618167636%_)
                                   (let ((_%tl167620167641%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl167618167636%_))))
                                     (if (null? _%tl167620167641%_)
                                         (_%K167616167631%_ _%eid167639%_)
                                         (_%E167615167626%_)))
                                   (_%E167615167626%_))))
                           (_%E167615167626%_))))
                   _%refs167605%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp172897
                                                  __tmp172896))
                                               (cons _%check-values167603%_
                                                     _%check167483%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs167605%_
                                                  _%post167484%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172088172089%_))
                                         (let ((_%e167545167649%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172088172089%_))))
                                           (let ((_%tl167547167654%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e167545167649%_)))
                                                 (_%hd167546167652%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e167545167649%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd167546167652%_))
                                                 (let ((_%e167548167657%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd167546167652%_))))
                                                   (let ((_%tl167550167662%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e167548167657%_)))
                                                         (_%hd167549167660%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e167548167657%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl167550167662%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl167547167654%_))
                     (let ((_%e167551167665%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167547167654%_))))
                       (let ((_%tl167553167670%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167551167665%_)))
                             (_%hd167552167668%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167551167665%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167553167670%_))
                             (_%__kont172090172091%_
                              _%hd167552167668%_
                              _%hd167549167660%_)
                             (let ()
                               (declare (not safe))
                               (_%g167541167566%_)))))
                     (let () (declare (not safe)) (_%g167541167566%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl167547167654%_))
                     (let ((_%e167559167579%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167547167654%_))))
                       (let ((_%tl167561167584%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167559167579%_)))
                             (_%hd167560167582%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167559167579%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167561167584%_))
                             (_%__kont172092172093%_
                              _%hd167560167582%_
                              _%hd167546167652%_)
                             (let ()
                               (declare (not safe))
                               (_%g167541167566%_)))))
                     (let () (declare (not safe)) (_%g167541167566%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl167547167654%_))
                                                     (let ((_%e167559167579%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl167547167654%_))))
                                                       (let ((_%tl167561167584%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e167559167579%_)))
                     (_%hd167560167582%_
                      (let () (declare (not safe)) (##car _%e167559167579%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl167561167584%_))
                     (_%__kont172092172093%_
                      _%hd167560167582%_
                      _%hd167546167652%_)
                     (let () (declare (not safe)) (_%g167541167566%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g167541167566%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g167541167566%_)))))))
                              (_%__kont172136172137%_
                               (lambda ()
                                 (let* ((_%body167505%_
                                         (if _%compiled-body?167393%_
                                             _%body167477%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self167391%_
                                                _%body167477%_))))
                                        (_%body167507%_
                                         (_%generate-values-post167398%_
                                          _%post167484%_
                                          _%body167505%_))
                                        (_%body167509%_
                                         (_%generate-values-check167397%_
                                          _%check167483%_
                                          _%body167507%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind167482%_)
                                               (cons _%body167509%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx172132172133%_))
                              (let ((_%e167491167517%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx172132172133%_))))
                                (let ((_%tl167493167522%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167491167517%_)))
                                      (_%hd167492167520%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167491167517%_))))
                                  (_%__kont172134172135%_
                                   _%tl167493167522%_
                                   _%hd167492167520%_)))
                              (_%__kont172136172137%_)))))))
                 (_%generate-values-check167397%_
                  (lambda (_%check167473%_ _%body167474%_)
                    (cons 'begin
                          (let ((__tmp172899 (cons _%body167474%_ '()))
                                (__tmp172898 (reverse _%check167473%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp172899 __tmp172898)))))
                 (_%generate-values-post167398%_
                  (lambda (_%post167466%_ _%body167467%_)
                    (cons 'begin
                          (let ((__tmp172903 (cons _%body167467%_ '()))
                                (__tmp172900
                                 (let ((__tmp172902
                                        (lambda (_%g167468167470%_)
                                          (cons 'set! _%g167468167470%_)))
                                       (__tmp172901 (reverse _%post167466%_)))
                                   (declare (not safe))
                                   (##map __tmp172902 __tmp172901))))
                            (declare (not safe))
                            (__foldr1 cons __tmp172903 __tmp172900))))))
          (let* ((_%g167400167417%_
                  (lambda (_%g167401167414%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g167401167414%_))))
                 (_%g167399167463%_
                  (lambda (_%g167401167420%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g167401167420%_))
                        (let ((_%e167404167422%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g167401167420%_))))
                          (let ((_%hd167405167425%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167404167422%_)))
                                (_%tl167406167427%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167404167422%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167406167427%_))
                                (let ((_%e167407167430%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167406167427%_))))
                                  (let ((_%hd167408167433%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167407167430%_)))
                                        (_%tl167409167435%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167407167430%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167409167435%_))
                                        (let ((_%e167410167438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167409167435%_))))
                                          (let ((_%hd167411167441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167410167438%_)))
                                                (_%tl167412167443%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167410167438%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167412167443%_))
                                                ((lambda (_%g167402167446%_
                                                          _%g167403167447%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g167403167447%_)
                                                       (_%generate-simple167395%_
                                                        _%g167403167447%_
                                                        _%g167402167446%_)
                                                       (_%generate-values167396%_
                                                        _%g167403167447%_
                                                        _%g167402167446%_)))
                                                 _%hd167411167441%_
                                                 _%hd167408167433%_)
                                                (_%g167400167417%_
                                                 _%g167401167420%_))))
                                        (_%g167400167417%_
                                         _%g167401167420%_))))
                                (_%g167400167417%_ _%g167401167420%_))))
                        (_%g167400167417%_ _%g167401167420%_)))))
            (_%g167399167463%_ _%stx167392%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self167703%_ _%stx167704%_)
        (let ((_%compiled-body?167706%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self167703%_
           _%stx167704%_
           _%compiled-body?167706%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g172904_
        (let ((_g172905_ (let () (declare (not safe)) (##length _g172904_))))
          (cond ((let () (declare (not safe)) (##fx= _g172905_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g172904_))
                ((let () (declare (not safe)) (##fx= _g172905_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g172904_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g172904_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self166972%_ _%stx166973%_)
        (letrec ((_%generate-values166975%_
                  (lambda (_%hd167218%_ _%body167219%_)
                    (let _%lp167221%_ ((_%rest167223%_ _%hd167218%_)
                                       (_%bind167224%_ '()))
                      (let* ((_%rest167225167233%_ _%rest167223%_)
                             (_%else167227167244%_
                              (lambda ()
                                (let ((_%bind167241%_ (reverse _%bind167224%_))
                                      (_%body167242%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self166972%_
                                          _%body167219%_))))
                                  (cons 'letrec*
                                        (cons _%bind167241%_
                                              (cons _%body167242%_ '()))))))
                             (_%K167229167378%_
                              (lambda (_%rest167247%_ _%hd-bind167248%_)
                                (let* ((_%__stx172146172147%_
                                        _%hd-bind167248%_)
                                       (_%g167251167276%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx172146172147%_)))))
                                  (let ((_%__kont172148172149%_
                                         (lambda (_%g167253167357%_
                                                  _%g167254167358%_)
                                           (let ((_%eid167372%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g167254167358%_)))
                                                 (_%expr167373%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self166972%_
                                                     _%g167253167357%_))))
                                             (_%lp167221%_
                                              _%rest167247%_
                                              (cons (cons _%eid167372%_
                                                          (cons _%expr167373%_
                                                                '()))
                                                    _%bind167224%_)))))
                                        (_%__kont172150172151%_
                                         (lambda (_%g167264167297%_
                                                  _%g167265167298%_)
                                           (let* ((_%vals167317%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp167319%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values167321%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp167319%_
                                                    _%g167265167298%_
                                                    _%g167264167297%_))
                                                  (_%refs167323%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals167317%_
                                                    _%g167265167298%_))
                                                  (_%expr167325%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self166972%_
                                                      _%g167264167297%_))))
                                             (_%lp167221%_
                                              _%rest167247%_
                                              (let ((__tmp172906
                                                     (cons (cons _%vals167317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp167319%_
                                                       (cons _%expr167325%_
                                                             '()))
                                                 '())
                                           (cons _%check-values167321%_
                                                 (cons _%tmp167319%_ '()))))
                               '()))
                   _%bind167224%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp172906
                                                 _%refs167323%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx172146172147%_))
                                        (let ((_%e167255167333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx172146172147%_))))
                                          (let ((_%tl167257167338%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167255167333%_)))
                                                (_%hd167256167336%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167255167333%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd167256167336%_))
                                                (let ((_%e167258167341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd167256167336%_))))
                                                  (let ((_%tl167260167346%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167258167341%_)))
                                                        (_%hd167259167344%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167258167341%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167260167346%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl167257167338%_))
                                                            (let ((_%e167261167349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167257167338%_))))
                      (let ((_%tl167263167354%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167261167349%_)))
                            (_%hd167262167352%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167261167349%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167263167354%_))
                            (_%__kont172148172149%_
                             _%hd167262167352%_
                             _%hd167259167344%_)
                            (let ()
                              (declare (not safe))
                              (_%g167251167276%_)))))
                    (let () (declare (not safe)) (_%g167251167276%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl167257167338%_))
                    (let ((_%e167269167289%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167257167338%_))))
                      (let ((_%tl167271167294%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167269167289%_)))
                            (_%hd167270167292%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167269167289%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167271167294%_))
                            (_%__kont172150172151%_
                             _%hd167270167292%_
                             _%hd167256167336%_)
                            (let ()
                              (declare (not safe))
                              (_%g167251167276%_)))))
                    (let () (declare (not safe)) (_%g167251167276%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl167257167338%_))
                                                    (let ((_%e167269167289%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl167257167338%_))))
                                                      (let ((_%tl167271167294%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e167269167289%_)))
                    (_%hd167270167292%_
                     (let () (declare (not safe)) (##car _%e167269167289%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl167271167294%_))
                    (_%__kont172150172151%_
                     _%hd167270167292%_
                     _%hd167256167336%_)
                    (let () (declare (not safe)) (_%g167251167276%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g167251167276%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g167251167276%_))))))))
                        (if (pair? _%rest167225167233%_)
                            (let ((_%hd167230167381%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167225167233%_)))
                                  (_%tl167231167383%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167225167233%_))))
                              (let* ((_%hd-bind167386%_ _%hd167230167381%_)
                                     (_%rest167388%_ _%tl167231167383%_))
                                (_%K167229167378%_
                                 _%rest167388%_
                                 _%hd-bind167386%_)))
                            (_%else167227167244%_))))))
                 (_%generate-letrec?166976%_
                  (lambda (_%hd167108%_)
                    (let _%lp167110%_ ((_%rest167112%_ _%hd167108%_))
                      (let* ((_%rest167113167121%_ _%rest167112%_)
                             (_%else167115167129%_ (lambda () '#t))
                             (_%K167117167206%_
                              (lambda (_%rest167132%_ _%hd-bind167133%_)
                                (let* ((_%g167135167152%_
                                        (lambda (_%g167136167149%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g167136167149%_))))
                                       (_%g167134167203%_
                                        (lambda (_%g167136167155%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g167136167155%_))
                                              (let ((_%e167139167157%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g167136167155%_))))
                                                (let ((_%hd167140167160%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e167139167157%_)))
                                                      (_%tl167141167162%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e167139167157%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd167140167160%_))
                                                      (let ((_%e167142167165%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd167140167160%_))))
                (let ((_%hd167143167168%_
                       (let () (declare (not safe)) (##car _%e167142167165%_)))
                      (_%tl167144167170%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e167142167165%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl167144167170%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167141167162%_))
                          (let ((_%e167145167173%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167141167162%_))))
                            (let ((_%hd167146167176%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167145167173%_)))
                                  (_%tl167147167178%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167145167173%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167147167178%_))
                                  ((lambda (_%g167137167181%_
                                            _%g167138167182%_)
                                     (if (_%is-lambda-expr?166977%_
                                          _%g167137167181%_)
                                         (_%lp167110%_ _%rest167132%_)
                                         '#f))
                                   _%hd167146167176%_
                                   _%hd167143167168%_)
                                  (_%g167135167152%_ _%g167136167155%_))))
                          (_%g167135167152%_ _%g167136167155%_))
                      (_%g167135167152%_ _%g167136167155%_))))
              (_%g167135167152%_ _%g167136167155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g167135167152%_
                                               _%g167136167155%_)))))
                                  (_%g167134167203%_ _%hd-bind167133%_)))))
                        (if (pair? _%rest167113167121%_)
                            (let ((_%hd167118167209%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167113167121%_)))
                                  (_%tl167119167211%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167113167121%_))))
                              (let* ((_%hd-bind167214%_ _%hd167118167209%_)
                                     (_%rest167216%_ _%tl167119167211%_))
                                (_%K167117167206%_
                                 _%rest167216%_
                                 _%hd-bind167214%_)))
                            (_%else167115167129%_))))))
                 (_%is-lambda-expr?166977%_
                  (lambda (_%expr167045%_)
                    (let* ((_%__stx172190172191%_ _%expr167045%_)
                           (_%g167048167062%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx172190172191%_)))))
                      (let ((_%__kont172192172193%_
                             (lambda (_%g167050167090%_ _%g167051167091%_)
                               '#t))
                            (_%__kont172194172195%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx172190172191%_))
                            (let ((_%e167052167074%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx172190172191%_))))
                              (let ((_%tl167054167079%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167052167074%_)))
                                    (_%hd167053167077%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167052167074%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd167053167077%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd167053167077%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl167054167079%_))
                                            (let ((_%e167055167082%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl167054167079%_))))
                                              (let ((_%tl167057167087%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e167055167082%_)))
                                                    (_%hd167056167085%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e167055167082%_))))
                                                (_%__kont172192172193%_
                                                 _%tl167057167087%_
                                                 _%hd167056167085%_)))
                                            (_%__kont172194172195%_))
                                        (_%__kont172194172195%_))
                                    (_%__kont172194172195%_))))
                            (_%__kont172194172195%_)))))))
          (let* ((_%g166979166996%_
                  (lambda (_%g166980166993%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166980166993%_))))
                 (_%g166978167042%_
                  (lambda (_%g166980166999%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166980166999%_))
                        (let ((_%e166983167001%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166980166999%_))))
                          (let ((_%hd166984167004%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166983167001%_)))
                                (_%tl166985167006%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166983167001%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166985167006%_))
                                (let ((_%e166986167009%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166985167006%_))))
                                  (let ((_%hd166987167012%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166986167009%_)))
                                        (_%tl166988167014%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166986167009%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl166988167014%_))
                                        (let ((_%e166989167017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl166988167014%_))))
                                          (let ((_%hd166990167020%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166989167017%_)))
                                                (_%tl166991167022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166989167017%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl166991167022%_))
                                                ((lambda (_%g166981167025%_
                                                          _%g166982167026%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g166982167026%_)
                                                       (if (_%generate-letrec?166976%_
                                                            _%g166982167026%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self166972%_
                                                            'letrec
                                                            _%g166982167026%_
                                                            _%g166981167025%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self166972%_
                                                            'letrec*
                                                            _%g166982167026%_
                                                            _%g166981167025%_
                                                            '#f))
                                                       (_%generate-values166975%_
                                                        _%g166982167026%_
                                                        _%g166981167025%_)))
                                                 _%hd166990167020%_
                                                 _%hd166987167012%_)
                                                (_%g166979166996%_
                                                 _%g166980166999%_))))
                                        (_%g166979166996%_
                                         _%g166980166999%_))))
                                (_%g166979166996%_ _%g166980166999%_))))
                        (_%g166979166996%_ _%g166980166999%_)))))
            (_%g166978167042%_ _%stx166973%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd166909%_)
        (let _%lp166911%_ ((_%rest166913%_ _%hd166909%_))
          (let* ((_%rest166914166930%_ _%rest166913%_)
                 (_%else166917166938%_ (lambda () '#f)))
            (let ((_%K166920166951%_
                   (lambda (_%rest166949%_) (_%lp166911%_ _%rest166949%_)))
                  (_%K166919166943%_ (lambda () '#t)))
              (let ((_%try-match166916166946%_
                     (lambda ()
                       (if (null? _%rest166914166930%_)
                           (_%K166919166943%_)
                           (_%else166917166938%_)))))
                (if (pair? _%rest166914166930%_)
                    (let ((_%tl166922166956%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest166914166930%_)))
                          (_%hd166921166954%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest166914166930%_))))
                      (if (pair? _%hd166921166954%_)
                          (let ((_%tl166924166961%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd166921166954%_)))
                                (_%hd166923166959%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd166921166954%_))))
                            (if (pair? _%hd166923166959%_)
                                (let ((_%tl166928166964%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd166923166959%_))))
                                  (if (null? _%tl166928166964%_)
                                      (if (pair? _%tl166924166961%_)
                                          (let ((_%tl166926166967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl166924166961%_))))
                                            (if (null? _%tl166926166967%_)
                                                (let ((_%rest166970%_
                                                       _%tl166922166956%_))
                                                  (_%lp166911%_
                                                   _%rest166970%_))
                                                (_%else166917166938%_)))
                                          (_%else166917166938%_))
                                      (_%else166917166938%_)))
                                (_%else166917166938%_)))
                          (_%else166917166938%_)))
                    (_%try-match166916166946%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self166821%_
               _%form166822%_
               _%hd166823%_
               _%body166824%_
               _%compiled-body?166825%_)
        (letrec ((_%generate1166827%_
                  (lambda (_%bind166866%_)
                    (let* ((_%bind166867166878%_ _%bind166866%_)
                           (_%E166869166881%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind166867166878%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K166870166887%_
                            (lambda (_%expr166884%_ _%id166885%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id166885%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self166821%_
                                             _%expr166884%_))
                                          '())))))
                      (if (pair? _%bind166867166878%_)
                          (let ((_%hd166871166890%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind166867166878%_)))
                                (_%tl166872166892%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind166867166878%_))))
                            (if (pair? _%hd166871166890%_)
                                (let ((_%hd166875166895%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd166871166890%_)))
                                      (_%tl166876166897%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd166871166890%_))))
                                  (let ((_%id166900%_ _%hd166875166895%_))
                                    (if (null? _%tl166876166897%_)
                                        (if (pair? _%tl166872166892%_)
                                            (let ((_%hd166873166902%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl166872166892%_)))
                                                  (_%tl166874166904%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl166872166892%_))))
                                              (let ((_%expr166907%_
                                                     _%hd166873166902%_))
                                                (if (null? _%tl166874166904%_)
                                                    (_%K166870166887%_
                                                     _%expr166907%_
                                                     _%id166900%_)
                                                    (_%E166869166881%_))))
                                            (_%E166869166881%_))
                                        (_%E166869166881%_))))
                                (_%E166869166881%_)))
                          (_%E166869166881%_))))))
          (let* ((_%bind166829%_ (map _%generate1166827%_ _%hd166823%_))
                 (_%body166831%_
                  (if _%compiled-body?166825%_
                      _%body166824%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166821%_ _%body166824%_))))
                 (_%body166863%_
                  (let* ((_%body166832166840%_ _%body166831%_)
                         (_%else166834166848%_
                          (lambda () (cons _%body166831%_ '())))
                         (_%K166836166853%_
                          (lambda (_%exprs166851%_) _%exprs166851%_)))
                    (if (pair? _%body166832166840%_)
                        (let ((_%hd166837166856%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body166832166840%_)))
                              (_%tl166838166858%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body166832166840%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd166837166856%_ 'begin))
                              (let ((_%exprs166861%_ _%tl166838166858%_))
                                (_%K166836166853%_ _%exprs166861%_))
                              (_%else166834166848%_)))
                        (_%else166834166848%_)))))
            (cons _%form166822%_ (cons _%bind166829%_ _%body166863%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self166721%_ _%stx166722%_)
        (letrec ((_%generate1166724%_
                  (lambda (_%datum166776%_)
                    (if (or (null? _%datum166776%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum166776%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum166776%_))
                            (eof-object? _%datum166776%_))
                        _%datum166776%_
                        (if (uninterned-symbol? _%datum166776%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum166776%_
                               '#t))
                            (if (pair? _%datum166776%_)
                                (cons (_%generate1166724%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum166776%_)))
                                      (_%generate1166724%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum166776%_))))
                                (if (box? _%datum166776%_)
                                    (box (_%generate1166724%_
                                          (unbox _%datum166776%_)))
                                    (if (vector? _%datum166776%_)
                                        (vector-map
                                         _%generate1166724%_
                                         _%datum166776%_)
                                        (if (or (s8vector? _%datum166776%_)
                                                (u8vector? _%datum166776%_)
                                                (s16vector? _%datum166776%_)
                                                (u16vector? _%datum166776%_)
                                                (s32vector? _%datum166776%_)
                                                (u32vector? _%datum166776%_)
                                                (s64vector? _%datum166776%_)
                                                (u64vector? _%datum166776%_)
                                                (f32vector? _%datum166776%_)
                                                (f64vector? _%datum166776%_))
                                            _%datum166776%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx166722%_)))))))))))
          (let* ((_%g166726166739%_
                  (lambda (_%g166727166736%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166727166736%_))))
                 (_%g166725166773%_
                  (lambda (_%g166727166742%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166727166742%_))
                        (let ((_%e166729166744%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166727166742%_))))
                          (let ((_%hd166730166747%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166729166744%_)))
                                (_%tl166731166749%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166729166744%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166731166749%_))
                                (let ((_%e166732166752%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166731166749%_))))
                                  (let ((_%hd166733166755%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166732166752%_)))
                                        (_%tl166734166757%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166732166752%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166734166757%_))
                                        ((lambda (_%g166728166760%_)
                                           (cons 'quote
                                                 (cons (_%generate1166724%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g166728166760%_)))
                                                       '())))
                                         _%hd166733166755%_)
                                        (_%g166726166739%_
                                         _%g166727166742%_))))
                                (_%g166726166739%_ _%g166727166742%_))))
                        (_%g166726166739%_ _%g166727166742%_)))))
            (_%g166725166773%_ _%stx166722%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self166168%_ _%stx166169%_)
        (letrec ((_%compile-call166171%_
                  (lambda (_%rator166458%_ _%rands166459%_)
                    (let ((_%rator166465%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self166168%_
                              _%rator166458%_)))
                          (_%rands166466%_
                           (map (lambda (_%g166460166462%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self166168%_
                                     _%g166460166462%_)))
                                _%rands166459%_)))
                      (let* ((_%__stx172237172238%_ _%rator166465%_)
                             (_%g166469166521%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172237172238%_)))))
                        (let ((_%__kont172239172240%_
                               (lambda (_%g166471166641%_
                                        _%g166472166642%_
                                        _%g166473166643%_
                                        _%g166474166644%_)
                                 (if (let ((__tmp172909
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands166466%_)))
                                           (__tmp172907
                                            (length (let ((__tmp172908
                                                           (lambda (_%g166680166683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g166681166685%_)
                     (cons _%g166680166683%_ _%g166681166685%_))))
              (declare (not safe))
              (__foldr1 __tmp172908 '() _%g166473166643%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp172909 __tmp172907))
                                     (let* ((_%id166688%_ _%g166474166644%_)
                                            (_%args166697%_
                                             (let ((__tmp172910
                                                    (lambda (_%g166689166692%_
                                                             _%g166690166694%_)
                                                      (cons _%g166689166692%_
                                                            _%g166690166694%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp172910
                                                '()
                                                _%g166473166643%_)))
                                            (_%body166706%_
                                             (let ((__tmp172911
                                                    (lambda (_%g166698166701%_
                                                             _%g166699166703%_)
                                                      (cons _%g166698166701%_
                                                            _%g166699166703%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp172911
                                                '()
                                                _%g166472166642%_)))
                                            (_%init166708%_
                                             (map list
                                                  _%args166697%_
                                                  _%rands166466%_)))
                                       (cons 'let
                                             (cons _%id166688%_
                                                   (cons _%init166708%_
                                                         _%body166706%_))))
                                     (let ((__tmp172912
                                            (let ((__tmp172913
                                                   (lambda (_%g166710166713%_
                                                            _%g166711166715%_)
                                                     (cons _%g166710166713%_
                                                           _%g166711166715%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp172913
                                               '()
                                               _%g166473166643%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx166169%_
                                        __tmp172912
                                        _%rands166466%_)))))
                              (_%__kont172245172246%_
                               (lambda ()
                                 (cons _%rator166465%_ _%rands166466%_))))
                          (let ((_%__match172304172305%_
                                 (lambda (_%e166475166533%_
                                          _%hd166476166536%_
                                          _%tl166477166538%_
                                          _%e166478166541%_
                                          _%hd166479166544%_
                                          _%tl166480166546%_
                                          _%e166481166549%_
                                          _%hd166482166552%_
                                          _%tl166483166554%_
                                          _%e166484166557%_
                                          _%hd166485166560%_
                                          _%tl166486166562%_
                                          _%e166487166565%_
                                          _%hd166488166568%_
                                          _%tl166489166570%_
                                          _%e166490166573%_
                                          _%hd166491166576%_
                                          _%tl166492166578%_
                                          _%e166493166581%_
                                          _%hd166494166584%_
                                          _%tl166495166586%_
                                          _%__splice172241172242%_
                                          _%target166496166589%_
                                          _%tl166498166591%_)
                                   (letrec ((_%loop166499166594%_
                                             (lambda (_%hd166497166597%_
                                                      _%arg166503166599%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd166497166597%_))
                                                   (let ((_%e166500166601%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd166497166597%_))))
                                                     (let ((_%lp-tl166502166606%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e166500166601%_)))
                                                           (_%lp-hd166501166604%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e166500166601%_))))
                                                       (_%loop166499166594%_
                                                        _%lp-tl166502166606%_
                                                        (cons _%lp-hd166501166604%_
                                                              _%arg166503166599%_))))
                                                   (let ((_%arg166504166609%_
                                                          (reverse _%arg166503166599%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl166495166586%_))
                                                         (let ((_%__splice172243172244%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl166495166586%_
                           '0))))
                   (let ((_%tl166507166613%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice172243172244%_ '1)))
                         (_%target166505166611%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice172243172244%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl166507166613%_))
                         (letrec ((_%loop166508166616%_
                                   (lambda (_%hd166506166619%_
                                            _%body166512166621%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd166506166619%_))
                                         (let ((_%e166509166623%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd166506166619%_))))
                                           (let ((_%lp-tl166511166628%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e166509166623%_)))
                                                 (_%lp-hd166510166626%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e166509166623%_))))
                                             (_%loop166508166616%_
                                              _%lp-tl166511166628%_
                                              (cons _%lp-hd166510166626%_
                                                    _%body166512166621%_))))
                                         (let ((_%body166513166631%_
                                                (reverse _%body166512166621%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl166489166570%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl166483166554%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl166480166546%_))
                                                       (let ((_%e166514166633%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl166480166546%_))))
                 (let ((_%tl166516166638%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e166514166633%_)))
                       (_%hd166515166636%_
                        (let ()
                          (declare (not safe))
                          (##car _%e166514166633%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl166516166638%_))
                       (let ((_%g166471166641%_ _%hd166515166636%_)
                             (_%g166472166642%_ _%body166513166631%_)
                             (_%g166473166643%_ _%arg166504166609%_)
                             (_%g166474166644%_ _%hd166485166560%_))
                         (if (eq? _%g166474166644%_ _%g166471166641%_)
                             (_%__kont172239172240%_
                              _%g166471166641%_
                              _%g166472166642%_
                              _%g166473166643%_
                              _%g166474166644%_)
                             (_%__kont172245172246%_)))
                       (_%__kont172245172246%_))))
               (_%__kont172245172246%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont172245172246%_))
                                               (_%__kont172245172246%_)))))))
                           (_%loop166508166616%_ _%target166505166611%_ '()))
                         (_%__kont172245172246%_))))
                 (_%__kont172245172246%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop166499166594%_
                                      _%target166496166589%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx172237172238%_))
                                (let ((_%e166475166533%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx172237172238%_))))
                                  (let ((_%tl166477166538%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166475166533%_)))
                                        (_%hd166476166536%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166475166533%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166476166536%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd166476166536%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166477166538%_))
                                                (let ((_%e166478166541%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166477166538%_))))
                                                  (let ((_%tl166480166546%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166478166541%_)))
                                                        (_%hd166479166544%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166478166541%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd166479166544%_))
                                                        (let ((_%e166481166549%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd166479166544%_))))
                  (let ((_%tl166483166554%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e166481166549%_)))
                        (_%hd166482166552%_
                         (let ()
                           (declare (not safe))
                           (##car _%e166481166549%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd166482166552%_))
                        (let ((_%e166484166557%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd166482166552%_))))
                          (let ((_%tl166486166562%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166484166557%_)))
                                (_%hd166485166560%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166484166557%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166486166562%_))
                                (let ((_%e166487166565%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166486166562%_))))
                                  (let ((_%tl166489166570%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166487166565%_)))
                                        (_%hd166488166568%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166487166565%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166488166568%_))
                                        (let ((_%e166490166573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166488166568%_))))
                                          (let ((_%tl166492166578%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166490166573%_)))
                                                (_%hd166491166576%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166490166573%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd166491166576%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd166491166576%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl166492166578%_))
                                                        (let ((_%e166493166581%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl166492166578%_))))
                  (let ((_%tl166495166586%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e166493166581%_)))
                        (_%hd166494166584%_
                         (let ()
                           (declare (not safe))
                           (##car _%e166493166581%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd166494166584%_))
                        (let ((_%__splice172241172242%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd166494166584%_
                                  '0))))
                          (let ((_%tl166498166591%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice172241172242%_ '1)))
                                (_%target166496166589%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice172241172242%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl166498166591%_))
                                (_%__match172304172305%_
                                 _%e166475166533%_
                                 _%hd166476166536%_
                                 _%tl166477166538%_
                                 _%e166478166541%_
                                 _%hd166479166544%_
                                 _%tl166480166546%_
                                 _%e166481166549%_
                                 _%hd166482166552%_
                                 _%tl166483166554%_
                                 _%e166484166557%_
                                 _%hd166485166560%_
                                 _%tl166486166562%_
                                 _%e166487166565%_
                                 _%hd166488166568%_
                                 _%tl166489166570%_
                                 _%e166490166573%_
                                 _%hd166491166576%_
                                 _%tl166492166578%_
                                 _%e166493166581%_
                                 _%hd166494166584%_
                                 _%tl166495166586%_
                                 _%__splice172241172242%_
                                 _%target166496166589%_
                                 _%tl166498166591%_)
                                (_%__kont172245172246%_))))
                        (_%__kont172245172246%_))))
                (_%__kont172245172246%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172245172246%_))
                                                (_%__kont172245172246%_))))
                                        (_%__kont172245172246%_))))
                                (_%__kont172245172246%_))))
                        (_%__kont172245172246%_))))
                (_%__kont172245172246%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172245172246%_))
                                            (_%__kont172245172246%_))
                                        (_%__kont172245172246%_))))
                                (_%__kont172245172246%_)))))))))
          (let* ((_%g166173166196%_
                  (lambda (_%g166174166193%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166174166193%_))))
                 (_%g166172166455%_
                  (lambda (_%g166174166199%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166174166199%_))
                        (let ((_%e166177166201%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166174166199%_))))
                          (let ((_%hd166178166204%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166177166201%_)))
                                (_%tl166179166206%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166177166201%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166179166206%_))
                                (let ((_%e166180166209%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166179166206%_))))
                                  (let ((_%hd166181166212%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166180166209%_)))
                                        (_%tl166182166214%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166180166209%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl166182166214%_))
                                        (let ((_g172914_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl166182166214%_
                                                  '0))))
                                          (begin
                                            (let ((_g172915_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g172914_)
                                                         (##values-length
                                                          _g172914_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g172915_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g172915_)))
                                            (let ((_%target166183166217%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g172914_
                                                      0)))
                                                  (_%tl166185166219%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g172914_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166185166219%_))
                                                  (letrec ((_%loop166186166222%_
                                                            (lambda (_%hd166184166225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand166190166227%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166184166225%_))
                          (let ((_%e166187166229%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166184166225%_))))
                            (let ((_%lp-hd166188166232%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166187166229%_)))
                                  (_%lp-tl166189166234%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166187166229%_))))
                              (_%loop166186166222%_
                               _%lp-tl166189166234%_
                               (cons _%lp-hd166188166232%_
                                     _%rand166190166227%_))))
                          (let ((_%rand166191166237%_
                                 (reverse _%rand166190166227%_)))
                            ((lambda (_%g166175166239%_ _%g166176166240%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call166171%_
                                    _%g166176166240%_
                                    (let ((__tmp172916
                                           (lambda (_%g166257166260%_
                                                    _%g166258166262%_)
                                             (cons _%g166257166260%_
                                                   _%g166258166262%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp172916
                                       '()
                                       _%g166175166239%_)))
                                   (let* ((_%__stx172353172354%_
                                           _%g166176166240%_)
                                          (_%g166266166278%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx172353172354%_)))))
                                     (let ((_%__kont172355172356%_
                                            (lambda ()
                                              (let ((_%f166315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self166168%_
                                                        _%g166176166240%_))))
                                                (if (and (let ((__tmp172917
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f166315%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp172917))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f166315%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp166317%_ ((_%rest166320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp172919
                                                (lambda (_%g166437166440%_
                                                         _%g166438166442%_)
                                                  (cons _%g166437166440%_
                                                        _%g166438166442%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp172919
                                            '()
                                            _%g166175166239%_))))
                               (_%bind166322%_ '())
                               (_%args166323%_ '()))
              (let* ((_%rest166324166332%_ _%rest166320%_)
                     (_%else166326166340%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind166322%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f166315%_
                                                      _%args166323%_)
                                                '()))))))
                     (_%K166328166426%_
                      (lambda (_%rest166343%_ _%e166344%_)
                        (let* ((_%__stx172307172308%_ _%e166344%_)
                               (_%g166349166367%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx172307172308%_)))))
                          (let ((_%__kont172309172310%_
                                 (lambda ()
                                   (_%lp166317%_
                                    _%rest166343%_
                                    _%bind166322%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e166344%_))
                                          _%args166323%_))))
                                (_%__kont172311172312%_
                                 (lambda ()
                                   (_%lp166317%_
                                    _%rest166343%_
                                    _%bind166322%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e166344%_))
                                          _%args166323%_))))
                                (_%__kont172313172314%_
                                 (lambda ()
                                   (let ((_%tmp166374%_
                                          (let ((__tmp172918
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp172918))))
                                     (_%lp166317%_
                                      _%rest166343%_
                                      (cons (cons _%tmp166374%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e166344%_))
                                                        '()))
                                            _%bind166322%_)
                                      (cons _%tmp166374%_ _%args166323%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx172307172308%_))
                                (let ((_%e166351166405%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx172307172308%_))))
                                  (let ((_%tl166353166410%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166351166405%_)))
                                        (_%hd166352166408%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166351166405%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166352166408%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd166352166408%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166353166410%_))
                                                (let ((_%e166354166413%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166353166410%_))))
                                                  (let ((_%tl166356166418%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166354166413%_)))
                                                        (_%hd166355166416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166354166413%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl166356166418%_))
                                                        (_%__kont172309172310%_)
                                                        (_%__kont172313172314%_))))
                                                (_%__kont172313172314%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd166352166408%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl166353166410%_))
                                                    (let ((_%e166360166390%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl166353166410%_))))
                                                      (let ((_%tl166362166395%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166360166390%_)))
                    (_%hd166361166393%_
                     (let () (declare (not safe)) (##car _%e166360166390%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl166362166395%_))
                    (_%__kont172311172312%_)
                    (_%__kont172313172314%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172313172314%_))
                                                (_%__kont172313172314%_)))
                                        (_%__kont172313172314%_))))
                                (_%__kont172313172314%_)))))))
                (if (pair? _%rest166324166332%_)
                    (let ((_%hd166329166429%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest166324166332%_)))
                          (_%tl166330166431%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest166324166332%_))))
                      (let* ((_%e166434%_ _%hd166329166429%_)
                             (_%rest166436%_ _%tl166330166431%_))
                        (_%K166328166426%_ _%rest166436%_ _%e166434%_)))
                    (_%else166326166340%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call166171%_
                                                     _%g166176166240%_
                                                     (let ((__tmp172920
                                                            (lambda (_%g166444166447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g166445166449%_)
                      (cons _%g166444166447%_ _%g166445166449%_))))
               (declare (not safe))
               (__foldr1 __tmp172920 '() _%g166175166239%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont172357172358%_
                                            (lambda ()
                                              (_%compile-call166171%_
                                               _%g166176166240%_
                                               (let ((__tmp172921
                                                      (lambda (_%g166284166287%_
                                                               _%g166285166289%_)
                                                        (cons _%g166284166287%_
                                                              _%g166285166289%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp172921
                                                  '()
                                                  _%g166175166239%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx172353172354%_))
                                           (let ((_%e166268166297%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx172353172354%_))))
                                             (let ((_%tl166270166302%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e166268166297%_)))
                                                   (_%hd166269166300%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e166268166297%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd166269166300%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd166269166300%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl166270166302%_))
                                                           (let ((_%e166271166305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl166270166302%_))))
                     (let ((_%tl166273166310%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e166271166305%_)))
                           (_%hd166272166308%_
                            (let ()
                              (declare (not safe))
                              (##car _%e166271166305%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl166273166310%_))
                           (_%__kont172355172356%_)
                           (_%__kont172357172358%_))))
                   (_%__kont172357172358%_))
               (_%__kont172357172358%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont172357172358%_))))
                                           (_%__kont172357172358%_))))))
                             _%rand166191166237%_
                             _%hd166181166212%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop166186166222%_
                                                     _%target166183166217%_
                                                     '()))
                                                  (_%g166173166196%_
                                                   _%g166174166199%_)))))
                                        (_%g166173166196%_
                                         _%g166174166199%_))))
                                (_%g166173166196%_ _%g166174166199%_))))
                        (_%g166173166196%_ _%g166174166199%_)))))
            (_%g166172166455%_ _%stx166169%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self165913%_ _%stx165914%_)
        (let* ((_%__stx172425172426%_ _%stx165914%_)
               (_%g165917165946%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172425172426%_)))))
          (let ((_%__kont172427172428%_
                 (lambda (_%g165919166012%_ _%g165920166013%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self165913%_
                        _%stx165914%_)
                       (let ((_%f166035%_
                              (let ((__tmp172922
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g165920166013%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self165913%_
                                 __tmp172922))))
                         (let _%lp166037%_ ((_%rest166040%_
                                             (reverse (let ((__tmp172924
                                                             (lambda (_%g166157166160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g166158166162%_)
                       (cons _%g166157166160%_ _%g166158166162%_))))
                (declare (not safe))
                (__foldr1 __tmp172924 '() _%g165919166012%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind166042%_ '())
                                            (_%args166043%_ '()))
                           (let* ((_%rest166044166052%_ _%rest166040%_)
                                  (_%else166046166060%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind166042%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f166035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args166043%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K166048166146%_
                                   (lambda (_%rest166063%_ _%e166064%_)
                                     (let* ((_%__stx172379172380%_ _%e166064%_)
                                            (_%g166069166087%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx172379172380%_)))))
                                       (let ((_%__kont172381172382%_
                                              (lambda ()
                                                (_%lp166037%_
                                                 _%rest166063%_
                                                 _%bind166042%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e166064%_))
                                                       _%args166043%_))))
                                             (_%__kont172383172384%_
                                              (lambda ()
                                                (_%lp166037%_
                                                 _%rest166063%_
                                                 _%bind166042%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e166064%_))
                                                       _%args166043%_))))
                                             (_%__kont172385172386%_
                                              (lambda ()
                                                (let ((_%tmp166094%_
                                                       (let ((__tmp172923
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp172923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp166037%_
                                                   _%rest166063%_
                                                   (cons (cons _%tmp166094%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e166064%_))
                             '()))
                 _%bind166042%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp166094%_
                                                         _%args166043%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx172379172380%_))
                                             (let ((_%e166071166125%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx172379172380%_))))
                                               (let ((_%tl166073166130%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e166071166125%_)))
                                                     (_%hd166072166128%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e166071166125%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd166072166128%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd166072166128%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl166073166130%_))
                     (let ((_%e166074166133%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl166073166130%_))))
                       (let ((_%tl166076166138%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e166074166133%_)))
                             (_%hd166075166136%_
                              (let ()
                                (declare (not safe))
                                (##car _%e166074166133%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl166076166138%_))
                             (_%__kont172381172382%_)
                             (_%__kont172385172386%_))))
                     (_%__kont172385172386%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd166072166128%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl166073166130%_))
                         (let ((_%e166080166110%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl166073166130%_))))
                           (let ((_%tl166082166115%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e166080166110%_)))
                                 (_%hd166081166113%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e166080166110%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl166082166115%_))
                                 (_%__kont172383172384%_)
                                 (_%__kont172385172386%_))))
                         (_%__kont172385172386%_))
                     (_%__kont172385172386%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172385172386%_))))
                                             (_%__kont172385172386%_)))))))
                             (if (pair? _%rest166044166052%_)
                                 (let ((_%hd166049166149%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest166044166052%_)))
                                       (_%tl166050166151%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest166044166052%_))))
                                   (let* ((_%e166154%_ _%hd166049166149%_)
                                          (_%rest166156%_ _%tl166050166151%_))
                                     (_%K166048166146%_
                                      _%rest166156%_
                                      _%e166154%_)))
                                 (_%else166046166060%_))))))))
                (_%__kont172431172432%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self165913%_ _%stx165914%_))))
            (let ((_%__match172470172471%_
                   (lambda (_%e165921165958%_
                            _%hd165922165961%_
                            _%tl165923165963%_
                            _%e165924165966%_
                            _%hd165925165969%_
                            _%tl165926165971%_
                            _%e165927165974%_
                            _%hd165928165977%_
                            _%tl165929165979%_
                            _%e165930165982%_
                            _%hd165931165985%_
                            _%tl165932165987%_
                            _%__splice172429172430%_
                            _%target165933165990%_
                            _%tl165935165992%_)
                     (letrec ((_%loop165936165995%_
                               (lambda (_%hd165934165998%_
                                        _%rand165940166000%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd165934165998%_))
                                     (let ((_%e165937166002%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd165934165998%_))))
                                       (let ((_%lp-tl165939166007%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e165937166002%_)))
                                             (_%lp-hd165938166005%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e165937166002%_))))
                                         (_%loop165936165995%_
                                          _%lp-tl165939166007%_
                                          (cons _%lp-hd165938166005%_
                                                _%rand165940166000%_))))
                                     (let ((_%rand165941166010%_
                                            (reverse _%rand165940166000%_)))
                                       (_%__kont172427172428%_
                                        _%rand165941166010%_
                                        _%hd165931165985%_))))))
                       (_%loop165936165995%_ _%target165933165990%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx172425172426%_))
                  (let ((_%e165921165958%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx172425172426%_))))
                    (let ((_%tl165923165963%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e165921165958%_)))
                          (_%hd165922165961%_
                           (let ()
                             (declare (not safe))
                             (##car _%e165921165958%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl165923165963%_))
                          (let ((_%e165924165966%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl165923165963%_))))
                            (let ((_%tl165926165971%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e165924165966%_)))
                                  (_%hd165925165969%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e165924165966%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd165925165969%_))
                                  (let ((_%e165927165974%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd165925165969%_))))
                                    (let ((_%tl165929165979%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e165927165974%_)))
                                          (_%hd165928165977%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e165927165974%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd165928165977%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd165928165977%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl165929165979%_))
                                                  (let ((_%e165930165982%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl165929165979%_))))
                                                    (let ((_%tl165932165987%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e165930165982%_)))
                                                          (_%hd165931165985%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e165930165982%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl165932165987%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl165926165971%_))
                      (let ((_%__splice172429172430%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl165926165971%_
                                '0))))
                        (let ((_%tl165935165992%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172429172430%_ '1)))
                              (_%target165933165990%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172429172430%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl165935165992%_))
                              (_%__match172470172471%_
                               _%e165921165958%_
                               _%hd165922165961%_
                               _%tl165923165963%_
                               _%e165924165966%_
                               _%hd165925165969%_
                               _%tl165926165971%_
                               _%e165927165974%_
                               _%hd165928165977%_
                               _%tl165929165979%_
                               _%e165930165982%_
                               _%hd165931165985%_
                               _%tl165932165987%_
                               _%__splice172429172430%_
                               _%target165933165990%_
                               _%tl165935165992%_)
                              (_%__kont172431172432%_))))
                      (_%__kont172431172432%_))
                  (_%__kont172431172432%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172431172432%_))
                                              (_%__kont172431172432%_))
                                          (_%__kont172431172432%_))))
                                  (_%__kont172431172432%_))))
                          (_%__kont172431172432%_))))
                  (_%__kont172431172432%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self165725%_ _%stx165726%_)
        (letrec ((_%simplify165728%_
                  (lambda (_%code165813%_)
                    (let* ((_%code165814165832%_ _%code165813%_)
                           (_%else165816165840%_ (lambda () _%code165813%_))
                           (_%K165818165876%_
                            (lambda (_%expr165843%_ _%test165844%_)
                              (let* ((_%expr165845165853%_ _%expr165843%_)
                                     (_%else165847165861%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test165844%_
                                                    (cons _%expr165843%_
                                                          '())))))
                                     (_%K165849165866%_
                                      (lambda (_%exprs165864%_)
                                        (cons 'and
                                              (cons _%test165844%_
                                                    _%exprs165864%_)))))
                                (if (pair? _%expr165845165853%_)
                                    (let ((_%hd165850165869%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr165845165853%_)))
                                          (_%tl165851165871%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr165845165853%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd165850165869%_ 'and))
                                          (let ((_%exprs165874%_
                                                 _%tl165851165871%_))
                                            (_%K165849165866%_
                                             _%exprs165874%_))
                                          (_%else165847165861%_)))
                                    (_%else165847165861%_))))))
                      (if (pair? _%code165814165832%_)
                          (let ((_%hd165819165879%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code165814165832%_)))
                                (_%tl165820165881%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code165814165832%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd165819165879%_ 'if))
                                (if (pair? _%tl165820165881%_)
                                    (let ((_%hd165821165884%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl165820165881%_)))
                                          (_%tl165822165886%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl165820165881%_))))
                                      (let ((_%test165889%_
                                             _%hd165821165884%_))
                                        (if (pair? _%tl165822165886%_)
                                            (let ((_%hd165823165891%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl165822165886%_)))
                                                  (_%tl165824165893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl165822165886%_))))
                                              (let ((_%expr165896%_
                                                     _%hd165823165891%_))
                                                (if (pair? _%tl165824165893%_)
                                                    (let ((_%hd165825165898%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl165824165893%_)))
                                                          (_%tl165826165900%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl165824165893%_))))
                                                      (if (pair? _%hd165825165898%_)
                                                          (let ((_%hd165827165903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd165825165898%_)))
                        (_%tl165828165905%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd165825165898%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd165827165903%_ 'quote))
                        (if (pair? _%tl165828165905%_)
                            (let ((_%hd165829165908%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl165828165905%_)))
                                  (_%tl165830165910%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl165828165905%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd165829165908%_ '#f))
                                  (if (null? _%tl165830165910%_)
                                      (if (null? _%tl165826165900%_)
                                          (_%K165818165876%_
                                           _%expr165896%_
                                           _%test165889%_)
                                          (_%else165816165840%_))
                                      (_%else165816165840%_))
                                  (_%else165816165840%_)))
                            (_%else165816165840%_))
                        (_%else165816165840%_)))
                  (_%else165816165840%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else165816165840%_))))
                                            (_%else165816165840%_))))
                                    (_%else165816165840%_))
                                (_%else165816165840%_)))
                          (_%else165816165840%_))))))
          (let* ((_%g165730165751%_
                  (lambda (_%g165731165748%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g165731165748%_))))
                 (_%g165729165810%_
                  (lambda (_%g165731165754%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g165731165754%_))
                        (let ((_%e165735165756%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g165731165754%_))))
                          (let ((_%hd165736165759%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165735165756%_)))
                                (_%tl165737165761%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165735165756%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165737165761%_))
                                (let ((_%e165738165764%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165737165761%_))))
                                  (let ((_%hd165739165767%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165738165764%_)))
                                        (_%tl165740165769%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165738165764%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl165740165769%_))
                                        (let ((_%e165741165772%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl165740165769%_))))
                                          (let ((_%hd165742165775%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165741165772%_)))
                                                (_%tl165743165777%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165741165772%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165743165777%_))
                                                (let ((_%e165744165780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165743165777%_))))
                                                  (let ((_%hd165745165783%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165744165780%_)))
                                                        (_%tl165746165785%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165744165780%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165746165785%_))
                                                        ((lambda (_%g165732165788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g165733165789%_
                          _%g165734165790%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify165728%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self165725%_
                                       _%g165734165790%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self165725%_
                                             _%g165733165789%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self165725%_
                                                   _%g165732165788%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp172925
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self165725%_
                                               _%g165734165790%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp172925
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165725%_
                                            _%g165733165789%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self165725%_
                                                  _%g165732165788%_))
                                               '()))))))
                 _%hd165745165783%_
                 _%hd165742165775%_
                 _%hd165739165767%_)
                (_%g165730165751%_ _%g165731165754%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g165730165751%_
                                                 _%g165731165754%_))))
                                        (_%g165730165751%_
                                         _%g165731165754%_))))
                                (_%g165730165751%_ _%g165731165754%_))))
                        (_%g165730165751%_ _%g165731165754%_)))))
            (_%g165729165810%_ _%stx165726%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self165673%_ _%stx165674%_)
        (let* ((_%g165676165689%_
                (lambda (_%g165677165686%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165677165686%_))))
               (_%g165675165722%_
                (lambda (_%g165677165692%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165677165692%_))
                      (let ((_%e165679165694%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165677165692%_))))
                        (let ((_%hd165680165697%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165679165694%_)))
                              (_%tl165681165699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165679165694%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165681165699%_))
                              (let ((_%e165682165702%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165681165699%_))))
                                (let ((_%hd165683165705%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165682165702%_)))
                                      (_%tl165684165707%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165682165702%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165684165707%_))
                                      ((lambda (_%g165678165710%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g165678165710%_)))
                                       _%hd165683165705%_)
                                      (_%g165676165689%_ _%g165677165692%_))))
                              (_%g165676165689%_ _%g165677165692%_))))
                      (_%g165676165689%_ _%g165677165692%_)))))
          (_%g165675165722%_ _%stx165674%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self165605%_ _%stx165606%_)
        (let* ((_%g165608165625%_
                (lambda (_%g165609165622%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165609165622%_))))
               (_%g165607165670%_
                (lambda (_%g165609165628%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165609165628%_))
                      (let ((_%e165612165630%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165609165628%_))))
                        (let ((_%hd165613165633%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165612165630%_)))
                              (_%tl165614165635%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165612165630%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165614165635%_))
                              (let ((_%e165615165638%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165614165635%_))))
                                (let ((_%hd165616165641%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165615165638%_)))
                                      (_%tl165617165643%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165615165638%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165617165643%_))
                                      (let ((_%e165618165646%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165617165643%_))))
                                        (let ((_%hd165619165649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165618165646%_)))
                                              (_%tl165620165651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165618165646%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165620165651%_))
                                              ((lambda (_%g165610165654%_
                                                        _%g165611165655%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g165611165655%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self165605%_
                              _%g165610165654%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165619165649%_
                                               _%hd165616165641%_)
                                              (_%g165608165625%_
                                               _%g165609165628%_))))
                                      (_%g165608165625%_ _%g165609165628%_))))
                              (_%g165608165625%_ _%g165609165628%_))))
                      (_%g165608165625%_ _%g165609165628%_)))))
          (_%g165607165670%_ _%stx165606%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self165416%_ _%stx165417%_)
        (let* ((_%g165419165436%_
                (lambda (_%g165420165433%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165420165433%_))))
               (_%g165418165602%_
                (lambda (_%g165420165439%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165420165439%_))
                      (let ((_%e165423165441%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165420165439%_))))
                        (let ((_%hd165424165444%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165423165441%_)))
                              (_%tl165425165446%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165423165441%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165425165446%_))
                              (let ((_%e165426165449%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165425165446%_))))
                                (let ((_%hd165427165452%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165426165449%_)))
                                      (_%tl165428165454%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165426165449%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165428165454%_))
                                      (let ((_%e165429165457%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165428165454%_))))
                                        (let ((_%hd165430165460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165429165457%_)))
                                              (_%tl165431165462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165429165457%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165431165462%_))
                                              ((lambda (_%g165421165465%_
                                                        _%g165422165466%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self165416%_ _%g165421165465%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self165416%_
                                  _%g165422165466%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp165481%_ ((_%rest165484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g165422165466%_
                                       (cons _%g165421165465%_ '())))
                                (_%bind165486%_ '())
                                (_%args165487%_ '()))
               (let* ((_%rest165488165496%_ _%rest165484%_)
                      (_%else165490165504%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind165486%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args165487%_)
                                                 '()))))))
                      (_%K165492165590%_
                       (lambda (_%rest165507%_ _%e165508%_)
                         (let* ((_%__stx172473172474%_ _%e165508%_)
                                (_%g165513165531%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx172473172474%_)))))
                           (let ((_%__kont172475172476%_
                                  (lambda ()
                                    (_%lp165481%_
                                     _%rest165507%_
                                     _%bind165486%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165508%_))
                                           _%args165487%_))))
                                 (_%__kont172477172478%_
                                  (lambda ()
                                    (_%lp165481%_
                                     _%rest165507%_
                                     _%bind165486%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165508%_))
                                           _%args165487%_))))
                                 (_%__kont172479172480%_
                                  (lambda ()
                                    (let ((_%tmp165538%_
                                           (let ((__tmp172926
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp172926))))
                                      (_%lp165481%_
                                       _%rest165507%_
                                       (cons (cons _%tmp165538%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e165508%_))
                                                         '()))
                                             _%bind165486%_)
                                       (cons _%tmp165538%_ _%args165487%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx172473172474%_))
                                 (let ((_%e165515165569%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx172473172474%_))))
                                   (let ((_%tl165517165574%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e165515165569%_)))
                                         (_%hd165516165572%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e165515165569%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd165516165572%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd165516165572%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl165517165574%_))
                                                 (let ((_%e165518165577%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl165517165574%_))))
                                                   (let ((_%tl165520165582%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e165518165577%_)))
                                                         (_%hd165519165580%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e165518165577%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl165520165582%_))
                                                         (_%__kont172475172476%_)
                                                         (_%__kont172479172480%_))))
                                                 (_%__kont172479172480%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd165516165572%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl165517165574%_))
                                                     (let ((_%e165524165554%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl165517165574%_))))
                                                       (let ((_%tl165526165559%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e165524165554%_)))
                     (_%hd165525165557%_
                      (let () (declare (not safe)) (##car _%e165524165554%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl165526165559%_))
                     (_%__kont172477172478%_)
                     (_%__kont172479172480%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172479172480%_))
                                                 (_%__kont172479172480%_)))
                                         (_%__kont172479172480%_))))
                                 (_%__kont172479172480%_)))))))
                 (if (pair? _%rest165488165496%_)
                     (let ((_%hd165493165593%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest165488165496%_)))
                           (_%tl165494165595%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest165488165496%_))))
                       (let* ((_%e165598%_ _%hd165493165593%_)
                              (_%rest165600%_ _%tl165494165595%_))
                         (_%K165492165590%_ _%rest165600%_ _%e165598%_)))
                     (_%else165490165504%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165430165460%_
                                               _%hd165427165452%_)
                                              (_%g165419165436%_
                                               _%g165420165439%_))))
                                      (_%g165419165436%_ _%g165420165439%_))))
                              (_%g165419165436%_ _%g165420165439%_))))
                      (_%g165419165436%_ _%g165420165439%_)))))
          (_%g165418165602%_ _%stx165417%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self165227%_ _%stx165228%_)
        (let* ((_%g165230165247%_
                (lambda (_%g165231165244%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165231165244%_))))
               (_%g165229165413%_
                (lambda (_%g165231165250%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165231165250%_))
                      (let ((_%e165234165252%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165231165250%_))))
                        (let ((_%hd165235165255%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165234165252%_)))
                              (_%tl165236165257%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165234165252%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165236165257%_))
                              (let ((_%e165237165260%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165236165257%_))))
                                (let ((_%hd165238165263%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165237165260%_)))
                                      (_%tl165239165265%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165237165260%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165239165265%_))
                                      (let ((_%e165240165268%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165239165265%_))))
                                        (let ((_%hd165241165271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165240165268%_)))
                                              (_%tl165242165273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165240165268%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165242165273%_))
                                              ((lambda (_%g165232165276%_
                                                        _%g165233165277%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self165227%_ _%g165232165276%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self165227%_
                                  _%g165233165277%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp165292%_ ((_%rest165295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g165233165277%_
                                       (cons _%g165232165276%_ '())))
                                (_%bind165297%_ '())
                                (_%args165298%_ '()))
               (let* ((_%rest165299165307%_ _%rest165295%_)
                      (_%else165301165315%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind165297%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args165298%_)
                                                 '()))))))
                      (_%K165303165401%_
                       (lambda (_%rest165318%_ _%e165319%_)
                         (let* ((_%__stx172519172520%_ _%e165319%_)
                                (_%g165324165342%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx172519172520%_)))))
                           (let ((_%__kont172521172522%_
                                  (lambda ()
                                    (_%lp165292%_
                                     _%rest165318%_
                                     _%bind165297%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165319%_))
                                           _%args165298%_))))
                                 (_%__kont172523172524%_
                                  (lambda ()
                                    (_%lp165292%_
                                     _%rest165318%_
                                     _%bind165297%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165319%_))
                                           _%args165298%_))))
                                 (_%__kont172525172526%_
                                  (lambda ()
                                    (let ((_%tmp165349%_
                                           (let ((__tmp172927
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp172927))))
                                      (_%lp165292%_
                                       _%rest165318%_
                                       (cons (cons _%tmp165349%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e165319%_))
                                                         '()))
                                             _%bind165297%_)
                                       (cons _%tmp165349%_ _%args165298%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx172519172520%_))
                                 (let ((_%e165326165380%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx172519172520%_))))
                                   (let ((_%tl165328165385%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e165326165380%_)))
                                         (_%hd165327165383%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e165326165380%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd165327165383%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd165327165383%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl165328165385%_))
                                                 (let ((_%e165329165388%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl165328165385%_))))
                                                   (let ((_%tl165331165393%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e165329165388%_)))
                                                         (_%hd165330165391%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e165329165388%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl165331165393%_))
                                                         (_%__kont172521172522%_)
                                                         (_%__kont172525172526%_))))
                                                 (_%__kont172525172526%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd165327165383%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl165328165385%_))
                                                     (let ((_%e165335165365%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl165328165385%_))))
                                                       (let ((_%tl165337165370%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e165335165365%_)))
                     (_%hd165336165368%_
                      (let () (declare (not safe)) (##car _%e165335165365%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl165337165370%_))
                     (_%__kont172523172524%_)
                     (_%__kont172525172526%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172525172526%_))
                                                 (_%__kont172525172526%_)))
                                         (_%__kont172525172526%_))))
                                 (_%__kont172525172526%_)))))))
                 (if (pair? _%rest165299165307%_)
                     (let ((_%hd165304165404%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest165299165307%_)))
                           (_%tl165305165406%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest165299165307%_))))
                       (let* ((_%e165409%_ _%hd165304165404%_)
                              (_%rest165411%_ _%tl165305165406%_))
                         (_%K165303165401%_ _%rest165411%_ _%e165409%_)))
                     (_%else165301165315%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165241165271%_
                                               _%hd165238165263%_)
                                              (_%g165230165247%_
                                               _%g165231165250%_))))
                                      (_%g165230165247%_ _%g165231165250%_))))
                              (_%g165230165247%_ _%g165231165250%_))))
                      (_%g165230165247%_ _%g165231165250%_)))))
          (_%g165229165413%_ _%stx165228%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self165143%_ _%stx165144%_)
        (let* ((_%g165146165167%_
                (lambda (_%g165147165164%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165147165164%_))))
               (_%g165145165224%_
                (lambda (_%g165147165170%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165147165170%_))
                      (let ((_%e165151165172%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165147165170%_))))
                        (let ((_%hd165152165175%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165151165172%_)))
                              (_%tl165153165177%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165151165172%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165153165177%_))
                              (let ((_%e165154165180%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165153165177%_))))
                                (let ((_%hd165155165183%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165154165180%_)))
                                      (_%tl165156165185%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165154165180%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165156165185%_))
                                      (let ((_%e165157165188%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165156165185%_))))
                                        (let ((_%hd165158165191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165157165188%_)))
                                              (_%tl165159165193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165157165188%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165159165193%_))
                                              (let ((_%e165160165196%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165159165193%_))))
                                                (let ((_%hd165161165199%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165160165196%_)))
                                                      (_%tl165162165201%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165160165196%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl165162165201%_))
                                                      ((lambda (_%g165148165204%_
                                                                _%g165149165205%_
                                                                _%g165150165206%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self165143%_
                                _%g165148165204%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165143%_
                                      _%g165149165205%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165143%_
                                            _%g165150165206%_))
                                         (cons ''#f '()))))))
               _%hd165161165199%_
               _%hd165158165191%_
               _%hd165155165183%_)
              (_%g165146165167%_ _%g165147165170%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165146165167%_
                                               _%g165147165170%_))))
                                      (_%g165146165167%_ _%g165147165170%_))))
                              (_%g165146165167%_ _%g165147165170%_))))
                      (_%g165146165167%_ _%g165147165170%_)))))
          (_%g165145165224%_ _%stx165144%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self165043%_ _%stx165044%_)
        (let* ((_%g165046165071%_
                (lambda (_%g165047165068%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165047165068%_))))
               (_%g165045165140%_
                (lambda (_%g165047165074%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165047165074%_))
                      (let ((_%e165052165076%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165047165074%_))))
                        (let ((_%hd165053165079%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165052165076%_)))
                              (_%tl165054165081%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165052165076%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165054165081%_))
                              (let ((_%e165055165084%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165054165081%_))))
                                (let ((_%hd165056165087%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165055165084%_)))
                                      (_%tl165057165089%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165055165084%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165057165089%_))
                                      (let ((_%e165058165092%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165057165089%_))))
                                        (let ((_%hd165059165095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165058165092%_)))
                                              (_%tl165060165097%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165058165092%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165060165097%_))
                                              (let ((_%e165061165100%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165060165097%_))))
                                                (let ((_%hd165062165103%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165061165100%_)))
                                                      (_%tl165063165105%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165061165100%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl165063165105%_))
                                                      (let ((_%e165064165108%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl165063165105%_))))
                (let ((_%hd165065165111%_
                       (let () (declare (not safe)) (##car _%e165064165108%_)))
                      (_%tl165066165113%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e165064165108%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl165066165113%_))
                      ((lambda (_%g165048165116%_
                                _%g165049165117%_
                                _%g165050165118%_
                                _%g165051165119%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self165043%_
                                        _%g165049165117%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self165043%_
                                              _%g165048165116%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self165043%_
                                                    _%g165050165118%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self165043%_
                                                          _%g165051165119%_))
                                                       (cons ''#f '())))))))
                       _%hd165065165111%_
                       _%hd165062165103%_
                       _%hd165059165095%_
                       _%hd165056165087%_)
                      (_%g165046165071%_ _%g165047165074%_))))
              (_%g165046165071%_ _%g165047165074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165046165071%_
                                               _%g165047165074%_))))
                                      (_%g165046165071%_ _%g165047165074%_))))
                              (_%g165046165071%_ _%g165047165074%_))))
                      (_%g165046165071%_ _%g165047165074%_)))))
          (_%g165045165140%_ _%stx165044%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self164959%_ _%stx164960%_)
        (let* ((_%g164962164983%_
                (lambda (_%g164963164980%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164963164980%_))))
               (_%g164961165040%_
                (lambda (_%g164963164986%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164963164986%_))
                      (let ((_%e164967164988%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164963164986%_))))
                        (let ((_%hd164968164991%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164967164988%_)))
                              (_%tl164969164993%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164967164988%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164969164993%_))
                              (let ((_%e164970164996%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164969164993%_))))
                                (let ((_%hd164971164999%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164970164996%_)))
                                      (_%tl164972165001%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164970164996%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164972165001%_))
                                      (let ((_%e164973165004%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164972165001%_))))
                                        (let ((_%hd164974165007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164973165004%_)))
                                              (_%tl164975165009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164973165004%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164975165009%_))
                                              (let ((_%e164976165012%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164975165009%_))))
                                                (let ((_%hd164977165015%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164976165012%_)))
                                                      (_%tl164978165017%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164976165012%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl164978165017%_))
                                                      ((lambda (_%g164964165020%_
                                                                _%g164965165021%_
                                                                _%g164966165022%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self164959%_
                                _%g164964165020%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self164959%_
                                      _%g164965165021%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self164959%_
                                            _%g164966165022%_))
                                         (cons ''#f '()))))))
               _%hd164977165015%_
               _%hd164974165007%_
               _%hd164971164999%_)
              (_%g164962164983%_ _%g164963164986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164962164983%_
                                               _%g164963164986%_))))
                                      (_%g164962164983%_ _%g164963164986%_))))
                              (_%g164962164983%_ _%g164963164986%_))))
                      (_%g164962164983%_ _%g164963164986%_)))))
          (_%g164961165040%_ _%stx164960%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self164859%_ _%stx164860%_)
        (let* ((_%g164862164887%_
                (lambda (_%g164863164884%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164863164884%_))))
               (_%g164861164956%_
                (lambda (_%g164863164890%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164863164890%_))
                      (let ((_%e164868164892%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164863164890%_))))
                        (let ((_%hd164869164895%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164868164892%_)))
                              (_%tl164870164897%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164868164892%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164870164897%_))
                              (let ((_%e164871164900%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164870164897%_))))
                                (let ((_%hd164872164903%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164871164900%_)))
                                      (_%tl164873164905%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164871164900%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164873164905%_))
                                      (let ((_%e164874164908%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164873164905%_))))
                                        (let ((_%hd164875164911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164874164908%_)))
                                              (_%tl164876164913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164874164908%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164876164913%_))
                                              (let ((_%e164877164916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164876164913%_))))
                                                (let ((_%hd164878164919%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164877164916%_)))
                                                      (_%tl164879164921%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164877164916%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl164879164921%_))
                                                      (let ((_%e164880164924%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl164879164921%_))))
                (let ((_%hd164881164927%_
                       (let () (declare (not safe)) (##car _%e164880164924%_)))
                      (_%tl164882164929%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e164880164924%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl164882164929%_))
                      ((lambda (_%g164864164932%_
                                _%g164865164933%_
                                _%g164866164934%_
                                _%g164867164935%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self164859%_
                                        _%g164865164933%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self164859%_
                                              _%g164864164932%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self164859%_
                                                    _%g164866164934%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self164859%_
                                                          _%g164867164935%_))
                                                       (cons ''#f '())))))))
                       _%hd164881164927%_
                       _%hd164878164919%_
                       _%hd164875164911%_
                       _%hd164872164903%_)
                      (_%g164862164887%_ _%g164863164890%_))))
              (_%g164862164887%_ _%g164863164890%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164862164887%_
                                               _%g164863164890%_))))
                                      (_%g164862164887%_ _%g164863164890%_))))
                              (_%g164862164887%_ _%g164863164890%_))))
                      (_%g164862164887%_ _%g164863164890%_)))))
          (_%g164861164956%_ _%stx164860%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self164654%_ _%stx164655%_)
        (let* ((_%g164657164678%_
                (lambda (_%g164658164675%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164658164675%_))))
               (_%g164656164856%_
                (lambda (_%g164658164681%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164658164681%_))
                      (let ((_%e164662164683%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164658164681%_))))
                        (let ((_%hd164663164686%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164662164683%_)))
                              (_%tl164664164688%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164662164683%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164664164688%_))
                              (let ((_%e164665164691%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164664164688%_))))
                                (let ((_%hd164666164694%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164665164691%_)))
                                      (_%tl164667164696%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164665164691%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164667164696%_))
                                      (let ((_%e164668164699%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164667164696%_))))
                                        (let ((_%hd164669164702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164668164699%_)))
                                              (_%tl164670164704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164668164699%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164670164704%_))
                                              (let ((_%e164671164707%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164670164704%_))))
                                                (let ((_%hd164672164710%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164671164707%_)))
                                                      (_%tl164673164712%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164671164707%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl164673164712%_))
                                                      ((lambda (_%g164659164715%_
                                                                _%g164660164716%_
                                                                _%g164661164717%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self164654%_
                                    _%g164659164715%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self164654%_
                                          _%g164660164716%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp164735%_ ((_%rest164738%_
                                         (cons _%g164660164716%_
                                               (cons _%g164659164715%_ '())))
                                        (_%bind164740%_ '())
                                        (_%args164741%_ '()))
                       (let* ((_%rest164742164750%_ _%rest164738%_)
                              (_%else164744164758%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind164740%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp172928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp172928 _%args164741%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K164746164844%_
                               (lambda (_%rest164761%_ _%e164762%_)
                                 (let* ((_%__stx172565172566%_ _%e164762%_)
                                        (_%g164767164785%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172565172566%_)))))
                                   (let ((_%__kont172567172568%_
                                          (lambda ()
                                            (_%lp164735%_
                                             _%rest164761%_
                                             _%bind164740%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e164762%_))
                                                   _%args164741%_))))
                                         (_%__kont172569172570%_
                                          (lambda ()
                                            (_%lp164735%_
                                             _%rest164761%_
                                             _%bind164740%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e164762%_))
                                                   _%args164741%_))))
                                         (_%__kont172571172572%_
                                          (lambda ()
                                            (let ((_%tmp164792%_
                                                   (let ((__tmp172929
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp172929))))
                                              (_%lp164735%_
                                               _%rest164761%_
                                               (cons (cons _%tmp164792%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e164762%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind164740%_)
                                               (cons _%tmp164792%_
                                                     _%args164741%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172565172566%_))
                                         (let ((_%e164769164823%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172565172566%_))))
                                           (let ((_%tl164771164828%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e164769164823%_)))
                                                 (_%hd164770164826%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e164769164823%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd164770164826%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd164770164826%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl164771164828%_))
                                                         (let ((_%e164772164831%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl164771164828%_))))
                   (let ((_%tl164774164836%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e164772164831%_)))
                         (_%hd164773164834%_
                          (let ()
                            (declare (not safe))
                            (##car _%e164772164831%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl164774164836%_))
                         (_%__kont172567172568%_)
                         (_%__kont172571172572%_))))
                 (_%__kont172571172572%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd164770164826%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl164771164828%_))
                     (let ((_%e164778164808%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl164771164828%_))))
                       (let ((_%tl164780164813%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e164778164808%_)))
                             (_%hd164779164811%_
                              (let ()
                                (declare (not safe))
                                (##car _%e164778164808%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl164780164813%_))
                             (_%__kont172569172570%_)
                             (_%__kont172571172572%_))))
                     (_%__kont172571172572%_))
                 (_%__kont172571172572%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont172571172572%_))))
                                         (_%__kont172571172572%_)))))))
                         (if (pair? _%rest164742164750%_)
                             (let ((_%hd164747164847%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest164742164750%_)))
                                   (_%tl164748164849%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest164742164750%_))))
                               (let* ((_%e164852%_ _%hd164747164847%_)
                                      (_%rest164854%_ _%tl164748164849%_))
                                 (_%K164746164844%_
                                  _%rest164854%_
                                  _%e164852%_)))
                             (_%else164744164758%_))))))
               _%hd164672164710%_
               _%hd164669164702%_
               _%hd164666164694%_)
              (_%g164657164678%_ _%g164658164681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164657164678%_
                                               _%g164658164681%_))))
                                      (_%g164657164678%_ _%g164658164681%_))))
                              (_%g164657164678%_ _%g164658164681%_))))
                      (_%g164657164678%_ _%g164658164681%_)))))
          (_%g164656164856%_ _%stx164655%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self164433%_ _%stx164434%_)
        (let* ((_%g164436164461%_
                (lambda (_%g164437164458%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164437164458%_))))
               (_%g164435164651%_
                (lambda (_%g164437164464%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164437164464%_))
                      (let ((_%e164442164466%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164437164464%_))))
                        (let ((_%hd164443164469%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164442164466%_)))
                              (_%tl164444164471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164442164466%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164444164471%_))
                              (let ((_%e164445164474%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164444164471%_))))
                                (let ((_%hd164446164477%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164445164474%_)))
                                      (_%tl164447164479%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164445164474%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164447164479%_))
                                      (let ((_%e164448164482%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164447164479%_))))
                                        (let ((_%hd164449164485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164448164482%_)))
                                              (_%tl164450164487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164448164482%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164450164487%_))
                                              (let ((_%e164451164490%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164450164487%_))))
                                                (let ((_%hd164452164493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164451164490%_)))
                                                      (_%tl164453164495%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164451164490%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl164453164495%_))
                                                      (let ((_%e164454164498%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl164453164495%_))))
                (let ((_%hd164455164501%_
                       (let () (declare (not safe)) (##car _%e164454164498%_)))
                      (_%tl164456164503%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e164454164498%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl164456164503%_))
                      ((lambda (_%g164438164506%_
                                _%g164439164507%_
                                _%g164440164508%_
                                _%g164441164509%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self164433%_
                                            _%g164439164507%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self164433%_
                                                  _%g164438164506%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self164433%_
                                                        _%g164440164508%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp164530%_ ((_%rest164533%_
                                                 (cons _%g164440164508%_
                                                       (cons _%g164438164506%_
                                                             (cons _%g164439164507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind164535%_ '())
                                                (_%args164536%_ '()))
                               (let* ((_%rest164537164545%_ _%rest164533%_)
                                      (_%else164539164553%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind164535%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp172930 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp172930 _%args164536%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K164541164639%_
                                       (lambda (_%rest164556%_ _%e164557%_)
                                         (let* ((_%__stx172611172612%_
                                                 _%e164557%_)
                                                (_%g164562164580%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx172611172612%_)))))
                                           (let ((_%__kont172613172614%_
                                                  (lambda ()
                                                    (_%lp164530%_
                                                     _%rest164556%_
                                                     _%bind164535%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e164557%_))
                                                           _%args164536%_))))
                                                 (_%__kont172615172616%_
                                                  (lambda ()
                                                    (_%lp164530%_
                                                     _%rest164556%_
                                                     _%bind164535%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e164557%_))
                                                           _%args164536%_))))
                                                 (_%__kont172617172618%_
                                                  (lambda ()
                                                    (let ((_%tmp164587%_
                                                           (let ((__tmp172931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp172931))))
              (_%lp164530%_
               _%rest164556%_
               (cons (cons _%tmp164587%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e164557%_))
                                 '()))
                     _%bind164535%_)
               (cons _%tmp164587%_ _%args164536%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx172611172612%_))
                                                 (let ((_%e164564164618%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx172611172612%_))))
                                                   (let ((_%tl164566164623%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e164564164618%_)))
                                                         (_%hd164565164621%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e164564164618%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd164565164621%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd164565164621%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl164566164623%_))
                         (let ((_%e164567164626%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl164566164623%_))))
                           (let ((_%tl164569164631%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e164567164626%_)))
                                 (_%hd164568164629%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e164567164626%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl164569164631%_))
                                 (_%__kont172613172614%_)
                                 (_%__kont172617172618%_))))
                         (_%__kont172617172618%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd164565164621%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl164566164623%_))
                             (let ((_%e164573164603%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl164566164623%_))))
                               (let ((_%tl164575164608%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e164573164603%_)))
                                     (_%hd164574164606%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e164573164603%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl164575164608%_))
                                     (_%__kont172615172616%_)
                                     (_%__kont172617172618%_))))
                             (_%__kont172617172618%_))
                         (_%__kont172617172618%_)))
                 (_%__kont172617172618%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont172617172618%_)))))))
                                 (if (pair? _%rest164537164545%_)
                                     (let ((_%hd164542164642%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest164537164545%_)))
                                           (_%tl164543164644%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest164537164545%_))))
                                       (let* ((_%e164647%_ _%hd164542164642%_)
                                              (_%rest164649%_
                                               _%tl164543164644%_))
                                         (_%K164541164639%_
                                          _%rest164649%_
                                          _%e164647%_)))
                                     (_%else164539164553%_))))))
                       _%hd164455164501%_
                       _%hd164452164493%_
                       _%hd164449164485%_
                       _%hd164446164477%_)
                      (_%g164436164461%_ _%g164437164464%_))))
              (_%g164436164461%_ _%g164437164464%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164436164461%_
                                               _%g164437164464%_))))
                                      (_%g164436164461%_ _%g164437164464%_))))
                              (_%g164436164461%_ _%g164437164464%_))))
                      (_%g164436164461%_ _%g164437164464%_)))))
          (_%g164435164651%_ _%stx164434%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self164272%_ _%stx164273%_)
        (letrec ((_%import-set-template164275%_
                  (lambda (_%in164378%_ _%phi164379%_)
                    (let ((_%iphi164381%_
                           (fx+ _%phi164379%_
                                (##direct-structure-ref
                                 _%in164378%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports164382%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in164378%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp164384%_ ((_%rest164386%_ _%imports164382%_)
                                         (_%r164387%_ '()))
                        (let* ((_%rest164388164396%_ _%rest164386%_)
                               (_%else164390164404%_ (lambda () _%r164387%_))
                               (_%K164392164421%_
                                (lambda (_%rest164407%_ _%in164408%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in164408%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi164381%_))
                                          (_%lp164384%_
                                           _%rest164407%_
                                           (cons _%in164408%_ _%r164387%_))
                                          (_%lp164384%_
                                           _%rest164407%_
                                           _%r164387%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in164408%_
                                             'gx#module-import::t))
                                          (let ((_%iphi164412%_
                                                 (fx+ _%phi164379%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in164408%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi164412%_))
                                                (_%lp164384%_
                                                 _%rest164407%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in164408%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r164387%_))
                                                (_%lp164384%_
                                                 _%rest164407%_
                                                 _%r164387%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in164408%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi164415%_
                                                     (fx+ _%iphi164381%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in164408%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi164415%_))
                                                    (_%lp164384%_
                                                     _%rest164407%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in164408%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r164387%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi164415%_))
                                                        (_%lp164384%_
                                                         _%rest164407%_
                                                         (let ((__tmp172932
                                                                (_%import-set-template164275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in164408%_
                         _%iphi164381%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r164387%_ __tmp172932)))
                (_%lp164384%_ _%rest164407%_ _%r164387%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp164384%_
                                               _%rest164407%_
                                               _%r164387%_)))))))
                          (if (pair? _%rest164388164396%_)
                              (let ((_%hd164393164424%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest164388164396%_)))
                                    (_%tl164394164426%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest164388164396%_))))
                                (let* ((_%in164429%_ _%hd164393164424%_)
                                       (_%rest164431%_ _%tl164394164426%_))
                                  (_%K164392164421%_
                                   _%rest164431%_
                                   _%in164429%_)))
                              (_%else164390164404%_))))))))
          (let* ((_%g164277164287%_
                  (lambda (_%g164278164284%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g164278164284%_))))
                 (_%g164276164375%_
                  (lambda (_%g164278164290%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g164278164290%_))
                        (let ((_%e164280164292%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g164278164290%_))))
                          (let ((_%hd164281164295%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164280164292%_)))
                                (_%tl164282164297%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164280164292%_))))
                            ((lambda (_%g164279164300%_)
                               (let ((_%ht164311%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp164313%_ ((_%rest164315%_
                                                     _%g164279164300%_)
                                                    (_%loads164316%_ '()))
                                   (letrec ((_%K164318%_
                                             (lambda (_%ctx164368%_
                                                      _%rest164369%_)
                                               (let ((_%id164371%_
                                                      (##structure-ref
                                                       _%ctx164368%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht164311%_
                                                        _%id164371%_))
                                                     (_%lp164313%_
                                                      _%rest164369%_
                                                      _%loads164316%_)
                                                     (let ((_%rt164373%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id164371%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht164311%_
                                                          _%id164371%_
                                                          _%rt164373%_))
                                                       (_%lp164313%_
                                                        _%rest164369%_
                                                        (cons _%rt164373%_
                                                              _%loads164316%_))))))))
                                     (let* ((_%rest164319164327%_
                                             _%rest164315%_)
                                            (_%else164321164339%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp172934
                                                            (lambda (_%g164334164336%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g164334164336%_)))
                   (__tmp172933 (reverse _%loads164316%_)))
               (declare (not safe))
               (##map __tmp172934 __tmp172933)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K164323164356%_
                                             (lambda (_%rest164342%_
                                                      _%in164343%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in164343%_
                                                      'gx#module-context::t))
                                                   (_%K164318%_
                                                    _%in164343%_
                                                    _%rest164342%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in164343%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in164343%_
                               '3
                               '#f
                               '#f)))
                   (_%K164318%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in164343%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest164342%_)
                   (_%lp164313%_ _%rest164342%_ _%loads164316%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in164343%_
                      'gx#import-set::t))
                   (let ((_%phi164348%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in164343%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi164348%_)
                         (_%K164318%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in164343%_
                             '1
                             '#f
                             '#f))
                          _%rest164342%_)
                         (if (fxpositive? _%phi164348%_)
                             (let ((_%deps164352%_
                                    (_%import-set-template164275%_
                                     _%in164343%_
                                     '0)))
                               (_%lp164313%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest164342%_
                                   _%deps164352%_))
                                _%loads164316%_))
                             (_%lp164313%_ _%rest164342%_ _%loads164316%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx164273%_
                      _%in164343%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest164319164327%_)
                                           (let ((_%hd164324164359%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest164319164327%_)))
                                                 (_%tl164325164361%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest164319164327%_))))
                                             (let* ((_%in164364%_
                                                     _%hd164324164359%_)
                                                    (_%rest164366%_
                                                     _%tl164325164361%_))
                                               (_%K164323164356%_
                                                _%rest164366%_
                                                _%in164364%_)))
                                           (_%else164321164339%_)))))))
                             _%tl164282164297%_)))
                        (_%g164277164287%_ _%g164278164290%_)))))
            (_%g164276164375%_ _%stx164273%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self164086%_ _%stx164087%_)
        (letrec ((_%add-lift!164089%_
                  (lambda (_%expr164270%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr164270%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote164090%_
                  (lambda (_%id164267%_ _%marks164268%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id164267%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks164268%_
                                                        '()))))))))
                 (_%generate-simple164091%_
                  (lambda (_%stxq164262%_)
                    (let ((_%gid164264%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid164265%_
                           (gxc#generate-runtime-identifier _%stxq164262%_)))
                      (_%add-lift!164089%_
                       (cons 'define
                             (cons _%gid164264%_
                                   (cons (_%generate-syntax-quote164090%_
                                          _%qid164265%_
                                          ''())
                                         '()))))
                      (let ((__tmp172935
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp172935 _%stxq164262%_ _%gid164264%_))
                      _%gid164264%_)))
                 (_%generate-serialized164092%_
                  (lambda (_%stxq164252%_ _%marks164253%_)
                    (let* ((_%mark-refs164255%_
                            (map _%generate-mark164093%_ _%marks164253%_))
                           (_%gid164257%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid164259%_
                            (gxc#generate-runtime-identifier _%stxq164252%_)))
                      (_%add-lift!164089%_
                       (cons 'define
                             (cons _%gid164257%_
                                   (cons (_%generate-syntax-quote164090%_
                                          _%qid164259%_
                                          (cons 'list _%mark-refs164255%_))
                                         '()))))
                      (let ((__tmp172936
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp172936 _%stxq164252%_ _%gid164257%_))
                      _%gid164257%_)))
                 (_%generate-mark164093%_
                  (lambda (_%mark164237%_)
                    (let ((_%$e164239%_
                           (let ((__tmp172937
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp172937 _%mark164237%_))))
                      (if _%$e164239%_
                          _%$e164239%_
                          (let* ((_%gid164243%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr164245%_
                                  (_%serialize-mark164094%_ _%mark164237%_))
                                 (_%ctx164247%_
                                  (let ((__tmp172938
                                         (##structure-ref
                                          _%mark164237%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp172938)))
                                 (_%ctx-ref164249%_
                                  (if (eq? _%ctx164247%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref164095%_
                                                               _%ctx164247%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp172939
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp172939
                               _%mark164237%_
                               _%gid164243%_))
                            (_%add-lift!164089%_
                             (cons 'define
                                   (cons _%gid164243%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr164245%_ '()))
                   (cons _%ctx-ref164249%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid164243%_)))))
                 (_%serialize-mark164094%_
                  (lambda (_%mark164185%_)
                    (letrec ((_%quote-e164187%_
                              (lambda (_%sym164235%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym164235%_))
                                    _%sym164235%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym164235%_))))))
                      (let* ((_%mark164188164197%_ _%mark164185%_)
                             (_%E164190164200%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark164188164197%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K164191164212%_
                              (lambda (_%trace164203%_
                                       _%phi164204%_
                                       _%ctx164205%_
                                       _%subst164206%_)
                                (let ((_%subs164208%_
                                       (if _%subst164206%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst164206%_))
                                           '())))
                                  (cons _%phi164204%_
                                        (let ((__tmp172940
                                               (lambda (_%pair164210%_)
                                                 (cons (_%quote-e164187%_
                                                        (car _%pair164210%_))
                                                       (_%quote-e164187%_
                                                        (cdr _%pair164210%_))))))
                                          (declare (not safe))
                                          (##map __tmp172940
                                                 _%subs164208%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark164188164197%_
                               'gx#expander-mark::t))
                            (let* ((_%e164192164215%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164188164197%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst164218%_ _%e164192164215%_)
                                   (_%e164193164220%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164188164197%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx164223%_ _%e164193164220%_)
                                   (_%e164194164225%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164188164197%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi164228%_ _%e164194164225%_)
                                   (_%e164195164230%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164188164197%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace164233%_ _%e164195164230%_))
                              (_%K164191164212%_
                               _%trace164233%_
                               _%phi164228%_
                               _%ctx164223%_
                               _%subst164218%_))
                            (_%E164190164200%_))))))
                 (_%context-ref164095%_
                  (lambda (_%ctx164172%_)
                    (if (let ((__tmp172941
                               (##structure-ref
                                _%ctx164172%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp172941
                           'gx#module-context::t))
                        (let ((_%ctx-ref164174%_
                               (_%context-ref-nested164097%_ _%ctx164172%_))
                              (_%ctx-origin164175%_
                               (_%context-ref-origin164096%_ _%ctx164172%_))
                              (_%origin164176%_
                               (_%context-ref-origin164096%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin164176%_ _%ctx-origin164175%_)
                              (let ((_%ref164178%_
                                     (_%context-ref-nested164097%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp164180%_ ((_%ref164182%_
                                                    (cdr _%ref164178%_))
                                                   (_%ctx-ref164183%_
                                                    (cdr _%ctx-ref164174%_)))
                                  (if (and (pair? _%ref164182%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref164182%_))
                                                (car _%ctx-ref164183%_)))
                                      (_%lp164180%_
                                       (cdr _%ref164182%_)
                                       (cdr _%ctx-ref164183%_))
                                      (cons '#f _%ctx-ref164183%_))))
                              _%ctx-ref164174%_))
                        (let ((__tmp172942
                               (##structure-ref
                                _%ctx164172%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp172942)))))
                 (_%context-ref-origin164096%_
                  (lambda (_%ctx164164%_)
                    (let _%lp164166%_ ((_%ctx164168%_ _%ctx164164%_))
                      (let ((_%super164170%_
                             (##structure-ref
                              _%ctx164168%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super164170%_
                               'gx#module-context::t))
                            (_%lp164166%_ _%super164170%_)
                            _%ctx164168%_)))))
                 (_%context-ref-nested164097%_
                  (lambda (_%ctx164155%_)
                    (let _%lp164157%_ ((_%ctx164159%_ _%ctx164155%_)
                                       (_%r164160%_ '()))
                      (let ((_%super164162%_
                             (##structure-ref
                              _%ctx164159%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super164162%_
                               'gx#module-context::t))
                            (_%lp164157%_
                             _%super164162%_
                             (cons (car (##structure-ref
                                         _%ctx164159%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r164160%_))
                            (cons (let ((__tmp172943
                                         (##structure-ref
                                          _%ctx164159%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp172943))
                                  _%r164160%_)))))))
          (let* ((_%g164099164112%_
                  (lambda (_%g164100164109%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g164100164109%_))))
                 (_%g164098164152%_
                  (lambda (_%g164100164115%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g164100164115%_))
                        (let ((_%e164102164117%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g164100164115%_))))
                          (let ((_%hd164103164120%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164102164117%_)))
                                (_%tl164104164122%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164102164117%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl164104164122%_))
                                (let ((_%e164105164125%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl164104164122%_))))
                                  (let ((_%hd164106164128%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e164105164125%_)))
                                        (_%tl164107164130%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e164105164125%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl164107164130%_))
                                        ((lambda (_%g164101164133%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g164101164133%_))
                                               (let ((_%$e164146%_
                                                      (let ((__tmp172944
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp172944 _%g164101164133%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e164146%_
                                                     _%$e164146%_
                                                     (let ((_%marks164150%_
                                                            (##direct-structure-ref
                                                             _%g164101164133%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks164150%_)
                                                           (_%generate-simple164091%_
                                                            _%g164101164133%_)
                                                           (_%generate-serialized164092%_
                                                            _%g164101164133%_
                                                            _%marks164150%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g164101164133%_))))
                                         _%hd164106164128%_)
                                        (_%g164099164112%_
                                         _%g164100164115%_))))
                                (_%g164099164112%_ _%g164100164115%_))))
                        (_%g164099164112%_ _%g164100164115%_)))))
            (_%g164098164152%_ _%stx164087%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self164018%_ _%stx164019%_)
        (let* ((_%g164021164038%_
                (lambda (_%g164022164035%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164022164035%_))))
               (_%g164020164083%_
                (lambda (_%g164022164041%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164022164041%_))
                      (let ((_%e164025164043%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164022164041%_))))
                        (let ((_%hd164026164046%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164025164043%_)))
                              (_%tl164027164048%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164025164043%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164027164048%_))
                              (let ((_%e164028164051%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164027164048%_))))
                                (let ((_%hd164029164054%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164028164051%_)))
                                      (_%tl164030164056%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164028164051%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164030164056%_))
                                      (let ((_%e164031164059%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164030164056%_))))
                                        (let ((_%hd164032164062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164031164059%_)))
                                              (_%tl164033164064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164031164059%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl164033164064%_))
                                              ((lambda (_%g164023164067%_
                                                        _%g164024164068%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g164024164068%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self164018%_
                              _%g164023164067%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd164032164062%_
                                               _%hd164029164054%_)
                                              (_%g164021164038%_
                                               _%g164022164041%_))))
                                      (_%g164021164038%_ _%g164022164041%_))))
                              (_%g164021164038%_ _%g164022164041%_))))
                      (_%g164021164038%_ _%g164022164041%_)))))
          (_%g164020164083%_ _%stx164019%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self163967%_ _%stx163968%_)
        (let* ((_%g163970163980%_
                (lambda (_%g163971163977%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163971163977%_))))
               (_%g163969164015%_
                (lambda (_%g163971163983%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163971163983%_))
                      (let ((_%e163973163985%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163971163983%_))))
                        (let ((_%hd163974163988%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163973163985%_)))
                              (_%tl163975163990%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163973163985%_))))
                          ((lambda (_%g163972163993%_)
                             (let* ((_%c-body164007%_
                                     (map (lambda (_%g164002164004%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self163967%_
                                               _%g164002164004%_)))
                                          _%g163972163993%_))
                                    (_%c-body164012%_
                                     (let ((__tmp172945
                                            (lambda (_%$obj164009%_)
                                              (not (eq? _%$obj164009%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp172945
                                        _%c-body164007%_))))
                               (cons '%#begin _%c-body164012%_)))
                           _%tl163975163990%_)))
                      (_%g163970163980%_ _%g163971163983%_)))))
          (_%g163969164015%_ _%stx163968%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self163872%_ _%stx163873%_)
        (let* ((_%g163875163885%_
                (lambda (_%g163876163882%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163876163882%_))))
               (_%g163874163964%_
                (lambda (_%g163876163888%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163876163888%_))
                      (let ((_%e163878163890%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163876163888%_))))
                        (let ((_%hd163879163893%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163878163890%_)))
                              (_%tl163880163895%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163878163890%_))))
                          ((lambda (_%g163877163898%_)
                             (let* ((_%phi163908%_
                                     (let ((__tmp172946
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp172946 '1)))
                                    (_%block163910%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self163872%_ 'state))
                                      _%phi163908%_))
                                    (_%compiled163913%_
                                     (let ((__tmp172947
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self163872%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g163877163898%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp172947
                                        gx#current-expander-phi
                                        _%phi163908%_)))
                                    (_%g163916163926%_
                                     (lambda (_%g163917163923%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g163917163923%_))))
                                    (_%g163915163961%_
                                     (lambda (_%g163917163929%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g163917163929%_))
                                           (let ((_%e163919163931%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g163917163929%_))))
                                             (let ((_%hd163920163934%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e163919163931%_)))
                                                   (_%tl163921163936%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e163919163931%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd163920163934%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd163920163934%_))
                                                       ((lambda (_%g163918163939%_)
                                                          (let ((_%c-body163956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj163953%_)
                                   (not (eq? _%$obj163953%_ '#!void)))
                                 _%g163918163939%_)))
                    (if _%block163910%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block163910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body163956%_))
                        (if (null? _%c-body163956%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body163956%_)))))
                _%tl163921163936%_)
               (_%g163916163926%_ _%g163917163929%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g163916163926%_
                                                    _%g163917163929%_))))
                                           (_%g163916163926%_
                                            _%g163917163929%_)))))
                               (_%g163915163961%_ _%compiled163913%_)))
                           _%tl163880163895%_)))
                      (_%g163875163885%_ _%g163876163888%_)))))
          (_%g163874163964%_ _%stx163873%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self163803%_ _%stx163804%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self163803%_ 'state)))
        (let* ((_%g163806163820%_
                (lambda (_%g163807163817%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163807163817%_))))
               (_%g163805163869%_
                (lambda (_%g163807163823%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163807163823%_))
                      (let ((_%e163810163825%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163807163823%_))))
                        (let ((_%hd163811163828%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163810163825%_)))
                              (_%tl163812163830%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163810163825%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163812163830%_))
                              (let ((_%e163813163833%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163812163830%_))))
                                (let ((_%hd163814163836%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163813163833%_)))
                                      (_%tl163815163838%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163813163833%_))))
                                  ((lambda (_%g163808163841%_
                                            _%g163809163842%_)
                                     (let ((_%key163855%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g163809163842%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key163855%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx163804%_
                                              _%g163809163842%_
                                              _%key163855%_)))
                                       (let* ((_%ctx163857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g163809163842%_)))
                                              (_%code163860%_
                                               (let ((__tmp172948
                                                      (lambda ()
                                                        (let ((__tmp172949
                                                               (##structure-ref
                                                                _%ctx163857%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self163803%_
                                                           __tmp172949)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp172948
                                                  gx#current-expander-context
                                                  _%ctx163857%_)))
                                              (_%rt163862%_
                                               (let ((__tmp172950
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp172950
                                                  _%ctx163857%_)))
                                              (_%loader163864%_
                                               (if _%rt163862%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt163862%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid163866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g163809163842%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self163803%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid163866%_
                                                     (cons _%code163860%_
                                                           _%loader163864%_))))))
                                   _%tl163815163838%_
                                   _%hd163814163836%_)))
                              (_%g163806163820%_ _%g163807163823%_))))
                      (_%g163806163820%_ _%g163807163823%_)))))
          (_%g163805163869%_ _%stx163804%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx163790%_ _%context-chain163791%_)
        (let _%lp163793%_ ((_%ctx163795%_ _%ctx163790%_) (_%path163796%_ '()))
          (let ((_%super163798%_
                 (##structure-ref _%ctx163795%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super163798%_ _%context-chain163791%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx163795%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path163796%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super163798%_
                       'gx#module-context::t))
                    (_%lp163793%_
                     _%super163798%_
                     (cons (car (##structure-ref
                                 _%ctx163795%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path163796%_))
                    (cons (let ((__tmp172951
                                 (##structure-ref
                                  _%ctx163795%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp172951))
                          _%path163796%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp163783%_ ((_%ctx163785%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r163786%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx163785%_ 'gx#module-context::t))
              (_%lp163783%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx163785%_ '3 '#f '#f))
               (cons _%ctx163785%_ _%r163786%_))
              _%r163786%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self163548%_ _%stx163549%_)
        (letrec* ((_%context-chain163551%_ (gxc#current-context-chain))
                  (_%make-import-spec163552%_
                   (lambda (_%in163720%_)
                     (let* ((_%in163721163733%_ _%in163720%_)
                            (_%E163723163736%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in163721163733%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K163724163746%_
                             (lambda (_%phi163739%_
                                      _%name163740%_
                                      _%src-name163741%_
                                      _%src-phi163742%_
                                      _%src-key163743%_
                                      _%src-ctx163744%_)
                               (cons _%phi163739%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name163740%_)
                                           (cons _%src-phi163742%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name163741%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in163721163733%_
                              'gx#module-import::t))
                           (let ((_%e163725163749%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in163721163733%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e163725163749%_
                                    'gx#module-export::t))
                                 (let* ((_%e163728163752%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163725163749%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx163755%_ _%e163728163752%_)
                                        (_%e163729163757%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163725163749%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key163760%_ _%e163729163757%_)
                                        (_%e163730163762%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163725163749%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi163765%_ _%e163730163762%_)
                                        (_%e163731163767%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163725163749%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name163770%_ _%e163731163767%_)
                                        (_%e163726163772%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in163721163733%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name163775%_ _%e163726163772%_)
                                        (_%e163727163777%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in163721163733%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi163780%_ _%e163727163777%_))
                                   (_%K163724163746%_
                                    _%phi163780%_
                                    _%name163775%_
                                    _%src-name163770%_
                                    _%src-phi163765%_
                                    _%src-key163760%_
                                    _%src-ctx163755%_))
                                 (_%E163723163736%_)))
                           (_%E163723163736%_)))))
                  (_%make-import-path163553%_
                   (lambda (_%ctx163718%_)
                     (gxc#generate-meta-import-path
                      _%ctx163718%_
                      _%context-chain163551%_)))
                  (_%make-import-spec-in163554%_
                   (lambda (_%ctx163715%_ _%in163716%_)
                     (cons 'spec:
                           (cons (_%make-import-path163553%_ _%ctx163715%_)
                                 (reverse _%in163716%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self163548%_ 'state)))
          (let* ((_%g163556163566%_
                  (lambda (_%g163557163563%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163557163563%_))))
                 (_%g163555163712%_
                  (lambda (_%g163557163569%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163557163569%_))
                        (let ((_%e163559163571%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163557163569%_))))
                          (let ((_%hd163560163574%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163559163571%_)))
                                (_%tl163561163576%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163559163571%_))))
                            ((lambda (_%g163558163579%_)
                               (let _%lp163590%_ ((_%rest163592%_
                                                   _%g163558163579%_)
                                                  (_%current-src163593%_ '#f)
                                                  (_%current-in163594%_ '())
                                                  (_%r163595%_ '()))
                                 (let* ((_%rest163596163604%_ _%rest163592%_)
                                        (_%else163598163614%_
                                         (lambda ()
                                           (let ((_%r163612%_
                                                  (if _%current-src163593%_
                                                      (cons (_%make-import-spec-in163554%_
                                                             _%current-src163593%_
                                                             _%current-in163594%_)
                                                            _%r163595%_)
                                                      _%r163595%_)))
                                             (cons '%#import
                                                   (reverse _%r163612%_)))))
                                        (_%K163600163700%_
                                         (lambda (_%rest163617%_ _%in163618%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in163618%_
                                                  'gx#module-import::t))
                                               (let* ((_%in163620163627%_
                                                       _%in163618%_)
                                                      (_%E163622163630%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in163620163627%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K163623163638%_
               (lambda (_%src-ctx163633%_)
                 (if (eq? _%current-src163593%_ _%src-ctx163633%_)
                     (_%lp163590%_
                      _%rest163617%_
                      _%current-src163593%_
                      (cons (_%make-import-spec163552%_ _%in163618%_)
                            _%current-in163594%_)
                      _%r163595%_)
                     (if _%current-src163593%_
                         (_%lp163590%_
                          _%rest163617%_
                          _%src-ctx163633%_
                          (cons (_%make-import-spec163552%_ _%in163618%_) '())
                          (cons (_%make-import-spec-in163554%_
                                 _%current-src163593%_
                                 _%current-in163594%_)
                                _%r163595%_))
                         (_%lp163590%_
                          _%rest163617%_
                          _%src-ctx163633%_
                          (cons (_%make-import-spec163552%_ _%in163618%_) '())
                          _%r163595%_)))))
              (_%e163624163641%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in163620163627%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e163624163641%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e163625163644%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e163624163641%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx163647%_ _%e163625163644%_))
               (_%K163623163638%_ _%src-ctx163647%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E163622163630%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in163618%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi163650%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in163618%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src163652%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in163618%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in163692%_
                                                           (let* ((_%g163653163662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path163553%_ _%src163652%_))
                          (_%E163656163666%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g163653163662%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K163658163682%_
                            (lambda (_%path163680%_) _%path163680%_))
                           (_%K163657163672%_
                            (lambda (_%path163670%_)
                              (cons 'in: _%path163670%_))))
                       (if (pair? _%g163653163662%_)
                           (let ((_%tl163660163687%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g163653163662%_)))
                                 (_%hd163659163685%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g163653163662%_))))
                             (if (null? _%tl163660163687%_)
                                 (let ((_%path163690%_ _%hd163659163685%_))
                                   (_%K163658163682%_ _%path163690%_))
                                 (let ((_%path163675%_ _%g163653163662%_))
                                   (_%K163657163672%_ _%path163675%_))))
                           (let ((_%path163675%_ _%g163653163662%_))
                             (_%K163657163672%_ _%path163675%_))))))
                  (_%r163694%_
                   (if _%current-src163593%_
                       (cons (_%make-import-spec-in163554%_
                              _%current-src163593%_
                              _%current-in163594%_)
                             _%r163595%_)
                       _%r163595%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp163590%_
                                                      _%rest163617%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi163650%_)
                                                                _%src-in163692%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi163650%_
                                    (cons _%src-in163692%_ '()))))
                    _%r163694%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in163618%_
                                                          'gx#module-context::t))
                                                       (let ((_%r163698%_
                                                              (if _%current-src163593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in163554%_
                                 _%current-src163593%_
                                 _%current-in163594%_)
                                _%r163595%_)
                          _%r163595%_)))
                 (_%lp163590%_
                  _%rest163617%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path163553%_ _%in163618%_))
                        _%r163698%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest163596163604%_)
                                       (let ((_%hd163601163703%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest163596163604%_)))
                                             (_%tl163602163705%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest163596163604%_))))
                                         (let* ((_%in163708%_
                                                 _%hd163601163703%_)
                                                (_%rest163710%_
                                                 _%tl163602163705%_))
                                           (_%K163600163700%_
                                            _%rest163710%_
                                            _%in163708%_)))
                                       (_%else163598163614%_)))))
                             _%tl163561163576%_)))
                        (_%g163556163566%_ _%g163557163569%_)))))
            (_%g163555163712%_ _%stx163549%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self163358%_ _%stx163359%_)
        (letrec* ((_%context-chain163361%_ (gxc#current-context-chain))
                  (_%make-import-path163362%_
                   (lambda (_%ctx163546%_)
                     (gxc#generate-meta-import-path
                      _%ctx163546%_
                      _%context-chain163361%_))))
          (let* ((_%g163364163374%_
                  (lambda (_%g163365163371%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163365163371%_))))
                 (_%g163363163543%_
                  (lambda (_%g163365163377%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163365163377%_))
                        (let ((_%e163367163379%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163365163377%_))))
                          (let ((_%hd163368163382%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163367163379%_)))
                                (_%tl163369163384%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163367163379%_))))
                            ((lambda (_%g163366163387%_)
                               (let _%lp163398%_ ((_%rest163400%_
                                                   _%g163366163387%_)
                                                  (_%r163401%_ '()))
                                 (let* ((_%rest163402163410%_ _%rest163400%_)
                                        (_%else163404163418%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r163401%_))))
                                        (_%K163406163531%_
                                         (lambda (_%rest163421%_ _%out163422%_)
                                           (let* ((_%out163423163436%_
                                                   _%out163422%_)
                                                  (_%E163426163440%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out163423163436%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K163430163510%_
                                                    (lambda (_%name163506%_
                                                             _%phi163507%_
                                                             _%key163508%_)
                                                      (_%lp163398%_
                                                       _%rest163421%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi163507%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key163508%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name163506%_)
                                             '()))))
                     _%r163401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K163427163490%_
                                                    (lambda (_%phi163444%_
                                                             _%src163445%_)
                                                      (let* ((_%out163485%_
                                                              (if _%src163445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g163446163455%_
                                              (_%make-import-path163362%_
                                               _%src163445%_))
                                             (_%E163449163459%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g163446163455%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K163451163475%_
                                               (lambda (_%path163473%_)
                                                 _%path163473%_))
                                              (_%K163450163465%_
                                               (lambda (_%path163463%_)
                                                 (cons 'in: _%path163463%_))))
                                          (if (pair? _%g163446163455%_)
                                              (let ((_%tl163453163480%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g163446163455%_)))
                                                    (_%hd163452163478%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g163446163455%_))))
                                                (if (null? _%tl163453163480%_)
                                                    (let ((_%path163483%_
                                                           _%hd163452163478%_))
                                                      (_%K163451163475%_
                                                       _%path163483%_))
                                                    (let ((_%path163468%_
                                                           _%g163446163455%_))
                                                      (_%K163450163465%_
                                                       _%path163468%_))))
                                              (let ((_%path163468%_
                                                     _%g163446163455%_))
                                                (_%K163450163465%_
                                                 _%path163468%_)))))
                                      '()))
                          '#t))
                     (_%out163487%_
                      (if (fxzero? _%phi163444%_)
                          _%out163485%_
                          (cons 'phi:
                                (cons _%phi163444%_
                                      (cons _%out163485%_ '()))))))
                (_%lp163398%_
                 _%rest163421%_
                 (cons _%out163487%_ _%r163401%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match163425163503%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out163423163436%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e163428163493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out163423163436%_
                               '1
                               '#f
                               '#f)))
                           (_%e163429163498%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out163423163436%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src163496%_ _%e163428163493%_)
                            (_%phi163501%_ _%e163429163498%_))
                        (_%K163427163490%_ _%phi163501%_ _%src163496%_)))
                    (_%E163426163440%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out163423163436%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e163431163513%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out163423163436%_
                        '1
                        '#f
                        '#f)))
                    (_%e163432163516%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163423163436%_
                        '2
                        '#f
                        '#f)))
                    (_%e163433163521%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163423163436%_
                        '3
                        '#f
                        '#f)))
                    (_%e163434163526%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163423163436%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key163519%_ _%e163432163516%_)
                     (_%phi163524%_ _%e163433163521%_)
                     (_%name163529%_ _%e163434163526%_))
                 (_%K163430163510%_
                  _%name163529%_
                  _%phi163524%_
                  _%key163519%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match163425163503%_))))))))
                                   (if (pair? _%rest163402163410%_)
                                       (let ((_%hd163407163534%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest163402163410%_)))
                                             (_%tl163408163536%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest163402163410%_))))
                                         (let* ((_%out163539%_
                                                 _%hd163407163534%_)
                                                (_%rest163541%_
                                                 _%tl163408163536%_))
                                           (_%K163406163531%_
                                            _%rest163541%_
                                            _%out163539%_)))
                                       (_%else163404163418%_)))))
                             _%tl163369163384%_)))
                        (_%g163364163374%_ _%g163365163377%_)))))
            (_%g163363163543%_ _%stx163359%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self163319%_ _%stx163320%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self163319%_ 'state)))
        (let* ((_%g163322163332%_
                (lambda (_%g163323163329%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163323163329%_))))
               (_%g163321163355%_
                (lambda (_%g163323163335%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163323163335%_))
                      (let ((_%e163325163337%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163323163335%_))))
                        (let ((_%hd163326163340%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163325163337%_)))
                              (_%tl163327163342%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163325163337%_))))
                          ((lambda (_%g163324163345%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g163324163345%_)))
                           _%tl163327163342%_)))
                      (_%g163322163332%_ _%g163323163335%_)))))
          (_%g163321163355%_ _%stx163320%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self163194%_ _%stx163195%_)
        (letrec ((_%generate1163197%_
                  (lambda (_%id163314%_ _%eid163315%_)
                    (let ((_%eid163317%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid163315%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid163317%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx163195%_
                             _%eid163317%_)))
                      (cons (gxc#generate-runtime-identifier _%id163314%_)
                            (cons _%eid163317%_ '()))))))
          (let* ((_%g163199163227%_
                  (lambda (_%g163200163224%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163200163224%_))))
                 (_%g163198163311%_
                  (lambda (_%g163200163230%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163200163230%_))
                        (let ((_%e163203163232%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163200163230%_))))
                          (let ((_%hd163204163235%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163203163232%_)))
                                (_%tl163205163237%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163203163232%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl163205163237%_))
                                (let ((_g172952_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl163205163237%_
                                          '0))))
                                  (begin
                                    (let ((_g172953_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g172952_)
                                                 (##values-length _g172952_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g172953_ 2)))
                                          (error "Context expects 2 values"
                                                 _g172953_)))
                                    (let ((_%target163206163240%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g172952_ 0)))
                                          (_%tl163208163242%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g172952_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl163208163242%_))
                                          (letrec ((_%loop163209163245%_
                                                    (lambda (_%hd163207163248%_
                                                             _%eid163213163250%_
                                                             _%id163214163251%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd163207163248%_))
                                                          (let ((_%e163210163253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd163207163248%_))))
                    (let ((_%lp-hd163211163256%_
                           (let ()
                             (declare (not safe))
                             (##car _%e163210163253%_)))
                          (_%lp-tl163212163258%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e163210163253%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd163211163256%_))
                          (let ((_%e163217163261%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd163211163256%_))))
                            (let ((_%hd163218163264%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e163217163261%_)))
                                  (_%tl163219163266%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e163217163261%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl163219163266%_))
                                  (let ((_%e163220163269%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl163219163266%_))))
                                    (let ((_%hd163221163272%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e163220163269%_)))
                                          (_%tl163222163274%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e163220163269%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl163222163274%_))
                                          (_%loop163209163245%_
                                           _%lp-tl163212163258%_
                                           (cons _%hd163221163272%_
                                                 _%eid163213163250%_)
                                           (cons _%hd163218163264%_
                                                 _%id163214163251%_))
                                          (_%g163199163227%_
                                           _%g163200163230%_))))
                                  (_%g163199163227%_ _%g163200163230%_))))
                          (_%g163199163227%_ _%g163200163230%_))))
                  (let ((_%eid163215163277%_ (reverse _%eid163213163250%_))
                        (_%id163216163278%_ (reverse _%id163214163251%_)))
                    ((lambda (_%g163201163280%_ _%g163202163281%_)
                       (cons '%#extern
                             (map _%generate1163197%_
                                  (let ((__tmp172954
                                         (lambda (_%g163296163299%_
                                                  _%g163297163301%_)
                                           (cons _%g163296163299%_
                                                 _%g163297163301%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp172954
                                     '()
                                     _%g163202163281%_))
                                  (let ((__tmp172955
                                         (lambda (_%g163303163306%_
                                                  _%g163304163308%_)
                                           (cons _%g163303163306%_
                                                 _%g163304163308%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp172955
                                     '()
                                     _%g163201163280%_)))))
                     _%eid163215163277%_
                     _%id163216163278%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop163209163245%_
                                             _%target163206163240%_
                                             '()
                                             '()))
                                          (_%g163199163227%_
                                           _%g163200163230%_)))))
                                (_%g163199163227%_ _%g163200163230%_))))
                        (_%g163199163227%_ _%g163200163230%_)))))
            (_%g163198163311%_ _%stx163195%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self162983%_ _%stx162984%_)
        (letrec ((_%generate1162986%_
                  (lambda (_%id163188%_)
                    (let ((_%eid163190%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id163188%_)))
                          (_%ident163191%_
                           (gxc#generate-runtime-identifier _%id163188%_))
                          (_%props163192%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id163188%_))))
                      (cons '%#define-runtime
                            (cons _%ident163191%_
                                  (cons _%eid163190%_ _%props163192%_))))))
                 (_%generate*162987%_
                  (lambda (_%all163156%_)
                    (let* ((_%all163157163165%_ _%all163156%_)
                           (_%else163159163173%_
                            (lambda () (cons '%#begin _%all163156%_)))
                           (_%K163161163178%_
                            (lambda (_%one163176%_) _%one163176%_)))
                      (if (pair? _%all163157163165%_)
                          (let ((_%hd163162163181%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all163157163165%_)))
                                (_%tl163163163183%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all163157163165%_))))
                            (let ((_%one163186%_ _%hd163162163181%_))
                              (if (null? _%tl163163163183%_)
                                  (_%K163161163178%_ _%one163186%_)
                                  (_%else163159163173%_))))
                          (_%else163159163173%_))))))
          (let* ((_%g162989163006%_
                  (lambda (_%g162990163003%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g162990163003%_))))
                 (_%g162988163153%_
                  (lambda (_%g162990163009%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g162990163009%_))
                        (let ((_%e162993163011%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g162990163009%_))))
                          (let ((_%hd162994163014%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e162993163011%_)))
                                (_%tl162995163016%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e162993163011%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl162995163016%_))
                                (let ((_%e162996163019%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl162995163016%_))))
                                  (let ((_%hd162997163022%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e162996163019%_)))
                                        (_%tl162998163024%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e162996163019%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl162998163024%_))
                                        (let ((_%e162999163027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl162998163024%_))))
                                          (let ((_%hd163000163030%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e162999163027%_)))
                                                (_%tl163001163032%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e162999163027%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl163001163032%_))
                                                ((lambda (_%g162991163035%_
                                                          _%g162992163036%_)
                                                   (let _%lp163052%_ ((_%rest163054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g162992163036%_)
                              (_%r163055%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx172690172691%_
                                                             _%rest163054%_)
                                                            (_%g163060163077%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx172690172691%_)))))
               (let ((_%__kont172692172693%_
                      (lambda (_%g163062163140%_)
                        (_%lp163052%_ _%g163062163140%_ _%r163055%_)))
                     (_%__kont172694172695%_
                      (lambda (_%g163067163113%_ _%g163068163114%_)
                        (_%lp163052%_
                         _%g163067163113%_
                         (cons (_%generate1162986%_ _%g163068163114%_)
                               _%r163055%_))))
                     (_%__kont172696172697%_
                      (lambda (_%g163072163089%_)
                        (_%generate*162987%_
                         (let ((__tmp172956
                                (cons (_%generate1162986%_ _%g163072163089%_)
                                      '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp172956 _%r163055%_)))))
                     (_%__kont172698172699%_
                      (lambda () (_%generate*162987%_ (reverse _%r163055%_)))))
                 (let ((_%g163058163100%_
                        (lambda ()
                          (let ((_%g163072163089%_ _%__stx172690172691%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g163072163089%_))
                                (_%__kont172696172697%_ _%g163072163089%_)
                                (_%__kont172698172699%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx172690172691%_))
                       (let ((_%e163063163129%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx172690172691%_))))
                         (let ((_%tl163065163134%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e163063163129%_)))
                               (_%hd163064163132%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e163063163129%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd163064163132%_))
                               (let ((_%e163066163137%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd163064163132%_))))
                                 (if (equal? _%e163066163137%_ '#f)
                                     (_%__kont172692172693%_
                                      _%tl163065163134%_)
                                     (_%__kont172694172695%_
                                      _%tl163065163134%_
                                      _%hd163064163132%_)))
                               (_%__kont172694172695%_
                                _%tl163065163134%_
                                _%hd163064163132%_))))
                       (let () (declare (not safe)) (_%g163058163100%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd163000163030%_
                                                 _%hd162997163022%_)
                                                (_%g162989163006%_
                                                 _%g162990163009%_))))
                                        (_%g162989163006%_
                                         _%g162990163009%_))))
                                (_%g162989163006%_ _%g162990163009%_))))
                        (_%g162989163006%_ _%g162990163009%_)))))
            (_%g162988163153%_ _%stx162984%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self162880%_ _%stx162881%_)
        (let* ((_%g162883162900%_
                (lambda (_%g162884162897%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162884162897%_))))
               (_%g162882162980%_
                (lambda (_%g162884162903%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162884162903%_))
                      (let ((_%e162887162905%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162884162903%_))))
                        (let ((_%hd162888162908%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162887162905%_)))
                              (_%tl162889162910%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162887162905%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162889162910%_))
                              (let ((_%e162890162913%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162889162910%_))))
                                (let ((_%hd162891162916%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162890162913%_)))
                                      (_%tl162892162918%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162890162913%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162892162918%_))
                                      (let ((_%e162893162921%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162892162918%_))))
                                        (let ((_%hd162894162924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162893162921%_)))
                                              (_%tl162895162926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162893162921%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162895162926%_))
                                              ((lambda (_%g162885162929%_
                                                        _%g162886162930%_)
                                                 (let* ((_%eid162945%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g162886162930%_)))
                                                        (_%phi162947%_
                                                         (let ((__tmp172957
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp172957 '1)))
                (_%block162949%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self162880%_ 'state))
                  _%phi162947%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g162952162959%_
                                                           (lambda (_%g162953162956%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g162953162956%_))))
                  (_%g162951162977%_
                   (lambda (_%g162953162962%_)
                     ((lambda (_%g162954162964%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self162880%_ 'state))
                         _%phi162947%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g162954162964%_
                                     (cons _%g162885162929%_ '())))))
                      _%g162953162962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g162951162977%_
                                                      _%eid162945%_))
                                                   (if _%block162949%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block162949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%g162886162930%_)
                                             (cons _%eid162945%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%g162886162930%_)
                           (cons _%eid162945%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd162894162924%_
                                               _%hd162891162916%_)
                                              (_%g162883162900%_
                                               _%g162884162903%_))))
                                      (_%g162883162900%_ _%g162884162903%_))))
                              (_%g162883162900%_ _%g162884162903%_))))
                      (_%g162883162900%_ _%g162884162903%_)))))
          (_%g162882162980%_ _%stx162881%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self162812%_ _%stx162813%_)
        (let* ((_%g162815162832%_
                (lambda (_%g162816162829%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162816162829%_))))
               (_%g162814162877%_
                (lambda (_%g162816162835%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162816162835%_))
                      (let ((_%e162819162837%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162816162835%_))))
                        (let ((_%hd162820162840%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162819162837%_)))
                              (_%tl162821162842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162819162837%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162821162842%_))
                              (let ((_%e162822162845%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162821162842%_))))
                                (let ((_%hd162823162848%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162822162845%_)))
                                      (_%tl162824162850%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162822162845%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162824162850%_))
                                      (let ((_%e162825162853%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162824162850%_))))
                                        (let ((_%hd162826162856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162825162853%_)))
                                              (_%tl162827162858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162825162853%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162827162858%_))
                                              ((lambda (_%g162817162861%_
                                                        _%g162818162862%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%g162818162862%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g162817162861%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd162826162856%_
                                               _%hd162823162848%_)
                                              (_%g162815162832%_
                                               _%g162816162835%_))))
                                      (_%g162815162832%_ _%g162816162835%_))))
                              (_%g162815162832%_ _%g162816162835%_))))
                      (_%g162815162832%_ _%g162816162835%_)))))
          (_%g162814162877%_ _%stx162813%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self162809%_ _%stx162810%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self162809%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx162810%_)
        (gxc#generate-meta-define-values% _%self162809%_ _%stx162810%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self162806%_ _%stx162807%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self162806%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx162807%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp172959 (list)) (__tmp172958 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp172959
         '(src n open blocks)
         __tmp172958
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args162803%_
        (apply make-instance gxc#meta-state::t _%$args162803%_)))
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
      (lambda (_%self162789%_ _%ctx162790%_)
        (let ((_%self162793%_ _%self162789%_))
          (if (let ((__tmp172960
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self162793%_))))
                (declare (not safe))
                (##fx< '4 __tmp172960))
              (begin
                (let ((__tmp172961
                       (let ((__tmp172962
                              (##structure-ref
                               _%ctx162790%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp172962))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self162793%_
                   __tmp172961
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self162793%_ '1 '2 '#f '#f))
                (let ((__tmp172963
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self162793%_
                   __tmp172963
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self162793%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp172964
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self162793%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self162793%_
                       '4
                       __tmp172964))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp172966 (list)) (__tmp172965 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp172966
         '(ctx phi n code)
         __tmp172965
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args162664%_
        (apply make-instance gxc#meta-state-block::t _%$args162664%_)))
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
      (lambda (_%state162624%_ _%phi162625%_)
        (let* ((_%state162626162634%_ _%state162624%_)
               (_%E162628162637%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state162626162634%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K162629162646%_
                (lambda (_%open162640%_ _%n162641%_ _%src162642%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open162640%_ _%phi162625%_))
                      '#f
                      (let ((_%block-ref162644%_
                             (let ((__tmp172967 (number->string _%n162641%_)))
                               (declare (not safe))
                               (##string-append
                                _%src162642%_
                                '"~"
                                __tmp172967))))
                        (##structure-set!
                         _%state162624%_
                         (let () (declare (not safe)) (##fx+ _%n162641%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp172968
                               (let ((__tmp172969
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp172969
                                  _%phi162625%_
                                  _%n162641%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open162640%_ _%phi162625%_ __tmp172968))
                        _%block-ref162644%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state162626162634%_
                 'gxc#meta-state::t))
              (let* ((_%e162630162649%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162626162634%_
                         '1
                         '#f
                         '#f)))
                     (_%src162652%_ _%e162630162649%_)
                     (_%e162631162654%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162626162634%_
                         '2
                         '#f
                         '#f)))
                     (_%n162657%_ _%e162631162654%_)
                     (_%e162632162659%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162626162634%_
                         '3
                         '#f
                         '#f)))
                     (_%open162662%_ _%e162632162659%_))
                (_%K162629162646%_ _%open162662%_ _%n162657%_ _%src162652%_))
              (_%E162628162637%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state162618%_ _%phi162619%_ _%stx162620%_)
        (let ((_%block162622%_
               (let ((__tmp172970
                      (##structure-ref
                       _%state162618%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp172970 _%phi162619%_))))
          (##structure-set!
           _%block162622%_
           (cons _%stx162620%_
                 (##structure-ref
                  _%block162622%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state162612%_)
        (##structure-set!
         _%state162612%_
         (let ((__tmp172973
                (lambda (_%_162614%_ _%block162615%_ _%r162616%_)
                  (cons _%block162615%_ _%r162616%_)))
               (__tmp172972
                (##structure-ref _%state162612%_ '4 gxc#meta-state::t '#f))
               (__tmp172971
                (##structure-ref _%state162612%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp172973 __tmp172972 __tmp172971))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state162612%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state162565%_)
        (gxc#meta-state-end-phi! _%state162565%_)
        (let ((__tmp172975
               (lambda (_%block162567%_ _%r162568%_)
                 (let* ((_%block162569162578%_ _%block162567%_)
                        (_%E162571162581%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block162569162578%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K162572162589%_
                         (lambda (_%code162584%_
                                  _%n162585%_
                                  _%phi162586%_
                                  _%ctx162587%_)
                           (if (null? _%code162584%_)
                               _%r162568%_
                               (cons (cons _%ctx162587%_
                                           (cons _%phi162586%_
                                                 (cons _%n162585%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code162584%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r162568%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block162569162578%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e162573162592%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162569162578%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx162595%_ _%e162573162592%_)
                              (_%e162574162597%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162569162578%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi162600%_ _%e162574162597%_)
                              (_%e162575162602%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162569162578%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n162605%_ _%e162575162602%_)
                              (_%e162576162607%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162569162578%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code162610%_ _%e162576162607%_))
                         (_%K162572162589%_
                          _%code162610%_
                          _%n162605%_
                          _%phi162600%_
                          _%ctx162595%_))
                       (_%E162571162581%_)))))
              (__tmp172974
               (##structure-ref _%state162565%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp172975 '() __tmp172974))))
    (define gxc#collect-expression-refs
      (lambda (_%stx162561%_)
        (let ((_%ht162563%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht162563%_ _%stx162561%_)
          _%ht162563%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self162504%_ _%stx162505%_)
        (let* ((_%g162507162520%_
                (lambda (_%g162508162517%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162508162517%_))))
               (_%g162506162558%_
                (lambda (_%g162508162523%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162508162523%_))
                      (let ((_%e162510162525%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162508162523%_))))
                        (let ((_%hd162511162528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162510162525%_)))
                              (_%tl162512162530%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162510162525%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162512162530%_))
                              (let ((_%e162513162533%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162512162530%_))))
                                (let ((_%hd162514162536%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162513162533%_)))
                                      (_%tl162515162538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162513162533%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl162515162538%_))
                                      ((lambda (_%g162509162541%_)
                                         (let* ((_%bind162553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g162509162541%_)))
                                                (_%eid162555%_
                                                 (if _%bind162553%_
                                                     (##structure-ref
                                                      _%bind162553%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g162509162541%_))))
                                                (__tmp172976
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self162504%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp172976
                                            _%eid162555%_
                                            _%eid162555%_)))
                                       _%hd162514162536%_)
                                      (_%g162507162520%_ _%g162508162523%_))))
                              (_%g162507162520%_ _%g162508162523%_))))
                      (_%g162507162520%_ _%g162508162523%_)))))
          (_%g162506162558%_ _%stx162505%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self162431%_ _%stx162432%_)
        (let* ((_%g162434162451%_
                (lambda (_%g162435162448%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162435162448%_))))
               (_%g162433162501%_
                (lambda (_%g162435162454%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162435162454%_))
                      (let ((_%e162438162456%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162435162454%_))))
                        (let ((_%hd162439162459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162438162456%_)))
                              (_%tl162440162461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162438162456%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162440162461%_))
                              (let ((_%e162441162464%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162440162461%_))))
                                (let ((_%hd162442162467%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162441162464%_)))
                                      (_%tl162443162469%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162441162464%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162443162469%_))
                                      (let ((_%e162444162472%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162443162469%_))))
                                        (let ((_%hd162445162475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162444162472%_)))
                                              (_%tl162446162477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162444162472%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162446162477%_))
                                              ((lambda (_%g162436162480%_
                                                        _%g162437162481%_)
                                                 (let* ((_%bind162496%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g162437162481%_)))
                                                        (_%eid162498%_
                                                         (if _%bind162496%_
                                                             (##structure-ref
                                                              _%bind162496%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g162437162481%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp172977
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self162431%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp172977
                                                      _%eid162498%_
                                                      _%eid162498%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self162431%_
                                                      _%g162436162480%_))))
                                               _%hd162445162475%_
                                               _%hd162442162467%_)
                                              (_%g162434162451%_
                                               _%g162435162454%_))))
                                      (_%g162434162451%_ _%g162435162454%_))))
                              (_%g162434162451%_ _%g162435162454%_))))
                      (_%g162434162451%_ _%g162435162454%_)))))
          (_%g162433162501%_ _%stx162432%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self162388%_ _%stx162389%_)
        (let* ((_%g162391162401%_
                (lambda (_%g162392162398%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162392162398%_))))
               (_%g162390162428%_
                (lambda (_%g162392162404%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162392162404%_))
                      (let ((_%e162394162406%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162392162404%_))))
                        (let ((_%hd162395162409%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162394162406%_)))
                              (_%tl162396162411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162394162406%_))))
                          ((lambda (_%g162393162414%_)
                             (let ((__tmp172978
                                    (lambda (_%g162423162425%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self162388%_
                                         _%g162423162425%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp172978 _%g162393162414%_)))
                           _%tl162396162411%_)))
                      (_%g162391162401%_ _%g162392162404%_)))))
          (_%g162390162428%_ _%stx162389%_))))
    (define gxc#count-values-single%
      (lambda (_%self162385%_ _%stx162386%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self162253%_ _%stx162254%_)
        (let* ((_%__stx172720172721%_ _%stx162254%_)
               (_%g162257162286%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172720172721%_)))))
          (let ((_%__kont172722172723%_
                 (lambda (_%g162259162352%_ _%g162260162353%_)
                   (length (let ((__tmp172979
                                  (lambda (_%g162374162377%_ _%g162375162379%_)
                                    (cons _%g162374162377%_
                                          _%g162375162379%_))))
                             (declare (not safe))
                             (__foldr1 __tmp172979 '() _%g162259162352%_)))))
                (_%__kont172726172727%_ (lambda () '#f)))
            (let ((_%__match172765172766%_
                   (lambda (_%e162261162298%_
                            _%hd162262162301%_
                            _%tl162263162303%_
                            _%e162264162306%_
                            _%hd162265162309%_
                            _%tl162266162311%_
                            _%e162267162314%_
                            _%hd162268162317%_
                            _%tl162269162319%_
                            _%e162270162322%_
                            _%hd162271162325%_
                            _%tl162272162327%_
                            _%__splice172724172725%_
                            _%target162273162330%_
                            _%tl162275162332%_)
                     (letrec ((_%loop162276162335%_
                               (lambda (_%hd162274162338%_
                                        _%rand162280162340%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd162274162338%_))
                                     (let ((_%e162277162342%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd162274162338%_))))
                                       (let ((_%lp-tl162279162347%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e162277162342%_)))
                                             (_%lp-hd162278162345%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e162277162342%_))))
                                         (_%loop162276162335%_
                                          _%lp-tl162279162347%_
                                          (cons _%lp-hd162278162345%_
                                                _%rand162280162340%_))))
                                     (let ((_%rand162281162350%_
                                            (reverse _%rand162280162340%_)))
                                       (let ((_%g162259162352%_
                                              _%rand162281162350%_)
                                             (_%g162260162353%_
                                              _%hd162271162325%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g162260162353%_
                                                'values))
                                             (_%__kont172722172723%_
                                              _%g162259162352%_
                                              _%g162260162353%_)
                                             (_%__kont172726172727%_))))))))
                       (_%loop162276162335%_ _%target162273162330%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx172720172721%_))
                  (let ((_%e162261162298%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx172720172721%_))))
                    (let ((_%tl162263162303%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e162261162298%_)))
                          (_%hd162262162301%_
                           (let ()
                             (declare (not safe))
                             (##car _%e162261162298%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl162263162303%_))
                          (let ((_%e162264162306%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl162263162303%_))))
                            (let ((_%tl162266162311%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e162264162306%_)))
                                  (_%hd162265162309%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e162264162306%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd162265162309%_))
                                  (let ((_%e162267162314%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd162265162309%_))))
                                    (let ((_%tl162269162319%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e162267162314%_)))
                                          (_%hd162268162317%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e162267162314%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd162268162317%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd162268162317%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl162269162319%_))
                                                  (let ((_%e162270162322%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl162269162319%_))))
                                                    (let ((_%tl162272162327%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e162270162322%_)))
                                                          (_%hd162271162325%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e162270162322%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl162272162327%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl162266162311%_))
                      (let ((_%__splice172724172725%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl162266162311%_
                                '0))))
                        (let ((_%tl162275162332%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172724172725%_ '1)))
                              (_%target162273162330%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172724172725%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl162275162332%_))
                              (_%__match172765172766%_
                               _%e162261162298%_
                               _%hd162262162301%_
                               _%tl162263162303%_
                               _%e162264162306%_
                               _%hd162265162309%_
                               _%tl162266162311%_
                               _%e162267162314%_
                               _%hd162268162317%_
                               _%tl162269162319%_
                               _%e162270162322%_
                               _%hd162271162325%_
                               _%tl162272162327%_
                               _%__splice172724172725%_
                               _%target162273162330%_
                               _%tl162275162332%_)
                              (_%__kont172726172727%_))))
                      (_%__kont172726172727%_))
                  (_%__kont172726172727%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172726172727%_))
                                              (_%__kont172726172727%_))
                                          (_%__kont172726172727%_))))
                                  (_%__kont172726172727%_))))
                          (_%__kont172726172727%_))))
                  (_%__kont172726172727%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self162158%_ _%stx162159%_)
        (let* ((_%g162161162182%_
                (lambda (_%g162162162179%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162162162179%_))))
               (_%g162160162250%_
                (lambda (_%g162162162185%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162162162185%_))
                      (let ((_%e162166162187%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162162162185%_))))
                        (let ((_%hd162167162190%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162166162187%_)))
                              (_%tl162168162192%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162166162187%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162168162192%_))
                              (let ((_%e162169162195%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162168162192%_))))
                                (let ((_%hd162170162198%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162169162195%_)))
                                      (_%tl162171162200%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162169162195%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162171162200%_))
                                      (let ((_%e162172162203%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162171162200%_))))
                                        (let ((_%hd162173162206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162172162203%_)))
                                              (_%tl162174162208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162172162203%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl162174162208%_))
                                              (let ((_%e162175162211%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl162174162208%_))))
                                                (let ((_%hd162176162214%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e162175162211%_)))
                                                      (_%tl162177162216%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e162175162211%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl162177162216%_))
                                                      ((lambda (_%g162163162219%_
                                                                _%g162164162220%_
                                                                _%g162165162221%_)
                                                         (let ((_%c1162238162240%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self162158%_
                           _%g162164162220%_))))
                   (if _%c1162238162240%_
                       (let* ((_%c1162242%_ _%c1162238162240%_)
                              (_%c2162243162245%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self162158%_
                                  _%g162163162219%_))))
                         (if _%c2162243162245%_
                             (let ((_%c2162247%_ _%c2162243162245%_))
                               (if (fx= _%c1162242%_ _%c2162247%_)
                                   _%c1162242%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd162176162214%_
               _%hd162173162206%_
               _%hd162170162198%_)
              (_%g162161162182%_ _%g162162162185%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g162161162182%_
                                               _%g162162162185%_))))
                                      (_%g162161162182%_ _%g162162162185%_))))
                              (_%g162161162182%_ _%g162162162185%_))))
                      (_%g162161162182%_ _%g162162162185%_)))))
          (_%g162160162250%_ _%stx162159%_))))))
