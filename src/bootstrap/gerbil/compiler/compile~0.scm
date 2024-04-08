(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712573431)
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
        (letrec ((_%hash-e143388%_
                  (lambda (_%id143390%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id143390%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e143388%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp144775 (list gxc#::void::t))
            (__tmp144774 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp144775
         '()
         __tmp144774
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args143384%_
        (apply make-instance gxc#::collect-bindings::t _%$args143384%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp144776
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
        (__make-promise __tmp144776)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx143376%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self143379%_
                (let ((__obj144750
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj144750))
               (__tmp144777
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143379%_ _%stx143376%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144777
           gxc#current-compile-method
           _%self143379%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp144779 (list gxc#::void::t))
            (__tmp144778 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp144779
         '(modules)
         __tmp144778
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args143373%_
        (apply make-instance gxc#::lift-modules::t _%$args143373%_)))
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
      (let ((__tmp144780
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
        (__make-promise __tmp144780)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords143347%_ _%modules143344143348%_ _%stx143350%_)
        (let ((_%modules143353%_
               (if (eq? _%modules143344143348%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules143344143348%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self143355%_
                  (let ((__obj144752
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144752
                       _%modules143353%_
                       '1
                       '#f
                       '#f))
                    __obj144752))
                 (__tmp144781
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143355%_ _%stx143350%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144781
             gxc#current-compile-method
             _%self143355%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords143362%_ . _%args143363%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords143362%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143362%_
                  'modules:
                  absent-value))
               _%args143363%_)))
    (define gxc#apply-lift-modules
      (lambda _%args143345143369%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args143345143369%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp144783 (list)) (__tmp144782 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp144783
         '()
         __tmp144782
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args143340%_
        (apply make-instance gxc#::find-runtime-code::t _%$args143340%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp144784
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
        (__make-promise __tmp144784)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx143332%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self143335%_
                (let ((__obj144754
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj144754))
               (__tmp144785
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143335%_ _%stx143332%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144785
           gxc#current-compile-method
           _%self143335%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp144787 (list gxc#::false::t))
            (__tmp144786 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp144787
         '()
         __tmp144786
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args143329%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args143329%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp144788
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
        (__make-promise __tmp144788)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx143321%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self143324%_
                (let ((__obj144756
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj144756))
               (__tmp144789
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143324%_ _%stx143321%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144789
           gxc#current-compile-method
           _%self143324%_))))
    (define gxc#::count-values::t
      (let ((__tmp144791 (list gxc#::false-expression::t))
            (__tmp144790 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp144791
         '()
         __tmp144790
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args143318%_
        (apply make-instance gxc#::count-values::t _%$args143318%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp144792
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
        (__make-promise __tmp144792)))
    (define gxc#apply-count-values
      (lambda (_%stx143310%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self143313%_
                (let ((__obj144758
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj144758))
               (__tmp144793
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143313%_ _%stx143310%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144793
           gxc#current-compile-method
           _%self143313%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp144794 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp144794
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args143307%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args143307%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp144795
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
        (__make-promise __tmp144795)))
    (define gxc#::generate-loader::t
      (let ((__tmp144797 (list gxc#::generate-runtime-empty::t))
            (__tmp144796 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp144797
         '()
         __tmp144796
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args143303%_
        (apply make-instance gxc#::generate-loader::t _%$args143303%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp144798
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
        (__make-promise __tmp144798)))
    (define gxc#apply-generate-loader
      (lambda (_%stx143295%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self143298%_
                (let ((__obj144761
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj144761))
               (__tmp144799
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143298%_ _%stx143295%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144799
           gxc#current-compile-method
           _%self143298%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp144800 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp144800
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args143292%_
        (apply make-instance gxc#::generate-runtime::t _%$args143292%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp144801
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
        (__make-promise __tmp144801)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx143284%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self143287%_
                (let ((__obj144763
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj144763))
               (__tmp144802
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143287%_ _%stx143284%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144802
           gxc#current-compile-method
           _%self143287%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp144804 (list gxc#::generate-runtime::t))
            (__tmp144803 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp144804
         '()
         __tmp144803
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args143281%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args143281%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp144805
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
        (__make-promise __tmp144805)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx143273%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self143276%_
                (let ((__obj144765
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj144765))
               (__tmp144806
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143276%_ _%stx143273%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144806
           gxc#current-compile-method
           _%self143276%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp144807 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp144807
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args143270%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args143270%_)))
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
      (let ((__tmp144808
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
        (__make-promise __tmp144808)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords143244%_ _%table143241143245%_ _%stx143247%_)
        (let ((_%table143250%_
               (if (eq? _%table143241143245%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table143241143245%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self143252%_
                  (let ((__obj144767
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144767
                       _%table143250%_
                       '1
                       '#f
                       '#f))
                    __obj144767))
                 (__tmp144809
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143252%_ _%stx143247%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144809
             gxc#current-compile-method
             _%self143252%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords143259%_ . _%args143260%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords143259%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143259%_
                  'table:
                  absent-value))
               _%args143260%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args143242143266%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args143242143266%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp144811 (list gxc#::void-expression::t))
            (__tmp144810 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp144811
         '(state)
         __tmp144810
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args143237%_
        (apply make-instance gxc#::generate-meta::t _%$args143237%_)))
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
      (let ((__tmp144812
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
        (__make-promise __tmp144812)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords143211%_ _%state143208143212%_ _%stx143214%_)
        (let ((_%state143217%_
               (if (eq? _%state143208143212%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143208143212%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self143219%_
                  (let ((__obj144769
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144769
                       _%state143217%_
                       '1
                       '#f
                       '#f))
                    __obj144769))
                 (__tmp144813
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143219%_ _%stx143214%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144813
             gxc#current-compile-method
             _%self143219%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords143226%_ . _%args143227%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords143226%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143226%_
                  'state:
                  absent-value))
               _%args143227%_)))
    (define gxc#apply-generate-meta
      (lambda _%args143209143233%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args143209143233%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp144815 (list)) (__tmp144814 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp144815
         '(state)
         __tmp144814
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args143204%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args143204%_)))
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
      (let ((__tmp144816
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
        (__make-promise __tmp144816)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords143178%_ _%state143175143179%_ _%stx143181%_)
        (let ((_%state143184%_
               (if (eq? _%state143175143179%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143175143179%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self143186%_
                  (let ((__obj144771
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144771
                       _%state143184%_
                       '1
                       '#f
                       '#f))
                    __obj144771))
                 (__tmp144817
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143186%_ _%stx143181%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144817
             gxc#current-compile-method
             _%self143186%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords143193%_ . _%args143194%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords143193%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143193%_
                  'state:
                  absent-value))
               _%args143194%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args143176143200%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args143176143200%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self143104%_ _%stx143105%_)
        (let* ((_%g143107143124%_
                (lambda (_%g143108143121%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143108143121%_))))
               (_%g143106143171%_
                (lambda (_%g143108143127%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143108143127%_))
                      (let ((_%e143113143129%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143108143127%_))))
                        (let ((_%hd143112143132%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143113143129%_)))
                              (_%tl143111143134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143113143129%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143111143134%_))
                              (let ((_%e143116143137%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143111143134%_))))
                                (let ((_%hd143115143140%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143116143137%_)))
                                      (_%tl143114143142%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143116143137%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143114143142%_))
                                      (let ((_%e143119143145%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143114143142%_))))
                                        (let ((_%hd143118143148%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143119143145%_)))
                                              (_%tl143117143150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143119143145%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143117143150%_))
                                              ((lambda (_%L143153%_
                                                        _%L143154%_)
                                                 (let ((__tmp144818
                                                        (lambda (_%bind143169%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind143169%_))
                      (gxc#add-module-binding! _%bind143169%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp144818
                                                    _%L143154%_)))
                                               _%hd143118143148%_
                                               _%hd143115143140%_)
                                              (_%g143107143124%_
                                               _%g143108143127%_))))
                                      (_%g143107143124%_ _%g143108143127%_))))
                              (_%g143107143124%_ _%g143108143127%_))))
                      (_%g143107143124%_ _%g143108143127%_)))))
          (_%g143106143171%_ _%stx143105%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self143036%_ _%stx143037%_)
        (let* ((_%g143039143056%_
                (lambda (_%g143040143053%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143040143053%_))))
               (_%g143038143101%_
                (lambda (_%g143040143059%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143040143059%_))
                      (let ((_%e143045143061%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143040143059%_))))
                        (let ((_%hd143044143064%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143045143061%_)))
                              (_%tl143043143066%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143045143061%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143043143066%_))
                              (let ((_%e143048143069%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143043143066%_))))
                                (let ((_%hd143047143072%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143048143069%_)))
                                      (_%tl143046143074%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143048143069%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143046143074%_))
                                      (let ((_%e143051143077%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143046143074%_))))
                                        (let ((_%hd143050143080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143051143077%_)))
                                              (_%tl143049143082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143051143077%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143049143082%_))
                                              ((lambda (_%L143085%_
                                                        _%L143086%_)
                                                 (gxc#add-module-binding!
                                                  _%L143086%_
                                                  '#t))
                                               _%hd143050143080%_
                                               _%hd143047143072%_)
                                              (_%g143039143056%_
                                               _%g143040143059%_))))
                                      (_%g143039143056%_ _%g143040143059%_))))
                              (_%g143039143056%_ _%g143040143059%_))))
                      (_%g143039143056%_ _%g143040143059%_)))))
          (_%g143038143101%_ _%stx143037%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self142978%_ _%stx142979%_)
        (let* ((_%g142981142995%_
                (lambda (_%g142982142992%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142982142992%_))))
               (_%g142980143033%_
                (lambda (_%g142982142998%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142982142998%_))
                      (let ((_%e142987143000%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142982142998%_))))
                        (let ((_%hd142986143003%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142987143000%_)))
                              (_%tl142985143005%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142987143000%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142985143005%_))
                              (let ((_%e142990143008%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142985143005%_))))
                                (let ((_%hd142989143011%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142990143008%_)))
                                      (_%tl142988143013%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142990143008%_))))
                                  ((lambda (_%L143016%_ _%L143017%_)
                                     (let ((_%ctx143030%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L143017%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self142978%_
                                           'modules))
                                        (cons _%ctx143030%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self142978%_
                                                        'modules)))))
                                       (let ((__tmp144819
                                              (lambda ()
                                                (let ((__tmp144820
                                                       (##structure-ref
                                                        _%ctx143030%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self142978%_
                                                   __tmp144820)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp144819
                                          gx#current-expander-context
                                          _%ctx143030%_))))
                                   _%tl142988143013%_
                                   _%hd142989143011%_)))
                              (_%g142981142995%_ _%g142982142998%_))))
                      (_%g142981142995%_ _%g142982142998%_)))))
          (_%g142980143033%_ _%stx142979%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls142931142933%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls142931142933%_
              (let ((_%decls142936%_ _%decls142931142933%_))
                (let _%lp142938%_ ((_%rest142940%_ _%decls142936%_))
                  (let* ((_%rest142941142949%_ _%rest142940%_)
                         (_%else142943142957%_ (lambda () '#f))
                         (_%K142945142966%_
                          (lambda (_%decls142960%_ _%decl142961%_)
                            (if (equal? _%decl142961%_ '(not safe))
                                '#t
                                (if (equal? _%decl142961%_ '(safe))
                                    '#f
                                    (_%lp142938%_ _%decls142960%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest142941142949%_))
                        (let ((_%hd142946142969%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest142941142949%_)))
                              (_%tl142947142971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest142941142949%_))))
                          (let* ((_%decl142974%_ _%hd142946142969%_)
                                 (_%decls142976%_ _%tl142947142971%_))
                            (_%K142945142966%_
                             _%decls142976%_
                             _%decl142974%_)))
                        (_%else142943142957%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id142925%_ _%syntax?142926%_)
        (let ((_%eid142928%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id142925%_))
                '1
                gx#binding::t
                '#f))
              (_%ht142929%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid142928%_))
              '#!void
              (let ((__tmp144821
                     (let ((__tmp144822
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid142928%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp144822 _%syntax?142926%_))))
                (declare (not safe))
                (hash-put! _%ht142929%_ _%eid142928%_ __tmp144821))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id142923%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id142923%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key142878%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key142878%_))
            _%key142878%_
            (if (uninterned-symbol? _%key142878%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key142878%_))
                (let* ((_%key142882142889%_ _%key142878%_)
                       (_%E142884142893%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key142882142889%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K142885142911%_
                        (lambda (_%mark142896%_ _%eid142897%_)
                          (let ((_%$e142899%_
                                 (##structure-ref
                                  _%mark142896%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e142899%_
                                ((lambda (_%ht142902%_)
                                   (let ((_%$e142904%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht142902%_
                                             _%eid142897%_))))
                                     (if _%$e142904%_
                                         ((lambda (_%id142907%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id142907%_))
                                                _%id142907%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id142907%_))))
                                          _%$e142904%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid142897%_))))
                                 _%$e142899%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid142897%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%key142882142889%_))
                      (let ((_%hd142886142914%_
                             (let ()
                               (declare (not safe))
                               (##car _%key142882142889%_)))
                            (_%tl142887142916%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key142882142889%_))))
                        (let* ((_%eid142919%_ _%hd142886142914%_)
                               (_%mark142921%_ _%tl142887142916%_))
                          (_%K142885142911%_ _%mark142921%_ _%eid142919%_)))
                      (_%E142884142893%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self142875%_ _%stx142876%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self142722%_ _%stx142723%_)
        (letrec ((_%simplify142725%_
                  (lambda (_%body142773%_)
                    (let _%lp142775%_ ((_%rest142777%_ _%body142773%_)
                                       (_%r142778%_ '()))
                      (let* ((_%rest142779142787%_ _%rest142777%_)
                             (_%else142781142795%_
                              (lambda () (reverse _%r142778%_)))
                             (_%K142783142863%_
                              (lambda (_%rest142798%_ _%hd142799%_)
                                (let* ((_%hd142800142816%_ _%hd142799%_)
                                       (_%else142804142824%_
                                        (lambda ()
                                          (_%lp142775%_
                                           _%rest142798%_
                                           (cons _%hd142799%_ _%r142778%_)))))
                                  (let ((_%K142812142853%_
                                         (lambda (_%exprs142851%_)
                                           (_%lp142775%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest142798%_
                                               _%exprs142851%_))
                                            _%r142778%_)))
                                        (_%K142807142837%_
                                         (lambda ()
                                           (if (null? _%rest142798%_)
                                               (_%lp142775%_
                                                _%rest142798%_
                                                (cons _%hd142799%_
                                                      _%r142778%_))
                                               (_%lp142775%_
                                                _%rest142798%_
                                                _%r142778%_))))
                                        (_%K142806142829%_
                                         (lambda ()
                                           (if (null? _%rest142798%_)
                                               (_%lp142775%_
                                                _%rest142798%_
                                                (cons _%hd142799%_
                                                      _%r142778%_))
                                               (_%lp142775%_
                                                _%rest142798%_
                                                _%r142778%_)))))
                                    (let ((_%try-match142803142832%_
                                           (lambda ()
                                             (if (symbol? _%hd142800142816%_)
                                                 (_%K142806142829%_)
                                                 (_%else142804142824%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd142800142816%_))
                                          (let ((_%tl142814142858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd142800142816%_)))
                                                (_%hd142813142856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd142800142816%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd142813142856%_
                                                         'begin))
                                                (let ((_%exprs142861%_
                                                       _%tl142814142858%_))
                                                  (_%K142812142853%_
                                                   _%exprs142861%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd142813142856%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl142814142858%_))
                                                        (let ((_%tl142811142845%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl142814142858%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl142811142845%_))
                      (_%K142807142837%_)
                      (_%try-match142803142832%_)))
                (_%try-match142803142832%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match142803142832%_))))
                                          (_%try-match142803142832%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142779142787%_))
                            (let ((_%hd142784142866%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142779142787%_)))
                                  (_%tl142785142868%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142779142787%_))))
                              (let* ((_%hd142871%_ _%hd142784142866%_)
                                     (_%rest142873%_ _%tl142785142868%_))
                                (_%K142783142863%_
                                 _%rest142873%_
                                 _%hd142871%_)))
                            (_%else142781142795%_)))))))
          (let* ((_%g142727142737%_
                  (lambda (_%g142728142734%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142728142734%_))))
                 (_%g142726142770%_
                  (lambda (_%g142728142740%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142728142740%_))
                        (let ((_%e142732142742%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142728142740%_))))
                          (let ((_%hd142731142745%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142732142742%_)))
                                (_%tl142730142747%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142732142742%_))))
                            ((lambda (_%L142750%_)
                               (let* ((_%body142765%_
                                       (map (lambda (_%g142760142762%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self142722%_
                                                 _%g142760142762%_)))
                                            _%L142750%_))
                                      (_%body142767%_
                                       (_%simplify142725%_ _%body142765%_)))
                                 (if (let ((__tmp144823
                                            (length _%body142767%_)))
                                       (declare (not safe))
                                       (##fx= __tmp144823 '1))
                                     (car _%body142767%_)
                                     (cons 'begin _%body142767%_))))
                             _%tl142730142747%_)))
                        (_%g142727142737%_ _%g142728142740%_)))))
            (_%g142726142770%_ _%stx142723%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self142683%_ _%stx142684%_)
        (let* ((_%g142686142696%_
                (lambda (_%g142687142693%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142687142693%_))))
               (_%g142685142719%_
                (lambda (_%g142687142699%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142687142699%_))
                      (let ((_%e142691142701%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142687142699%_))))
                        (let ((_%hd142690142704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142691142701%_)))
                              (_%tl142689142706%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142691142701%_))))
                          ((lambda (_%L142709%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L142709%_))))
                           _%tl142689142706%_)))
                      (_%g142686142696%_ _%g142687142699%_)))))
          (_%g142685142719%_ _%stx142684%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self142447%_ _%stx142448%_)
        (let* ((_%__stx143413143414%_ _%stx142448%_)
               (_%g142452142504%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx143413143414%_)))))
          (let ((_%__kont143415143416%_
                 (lambda (_%L142665%_ _%L142666%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self142447%_ _%L142665%_))))
                (_%__kont143417143418%_
                 (lambda (_%L142613%_ _%L142614%_ _%L142615%_)
                   (if (let ((__tmp144824
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L142615%_))))
                         (declare (not safe))
                         (##memq __tmp144824 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self142447%_ _%L142613%_)))))
                (_%__kont143421143422%_
                 (lambda (_%L142533%_ _%L142534%_)
                   (let ((_%decls142549%_ (map gx#syntax->datum _%L142534%_)))
                     (let ((__tmp144827
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls142549%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self142447%_
                                                   _%L142533%_))
                                                '())))))
                           (__tmp144825
                            (let ((__tmp144826
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp144826 _%decls142549%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp144827
                        gxc#current-compile-decls
                        __tmp144825))))))
            (let* ((_%__match143468143469%_
                    (lambda (_%e142470142557%_
                             _%hd142469142560%_
                             _%tl142468142562%_
                             _%e142473142565%_
                             _%hd142472142568%_
                             _%tl142471142570%_
                             _%e142476142573%_
                             _%hd142475142576%_
                             _%tl142474142578%_
                             _%__splice143419143420%_
                             _%target142477142581%_
                             _%tl142479142583%_)
                      (letrec ((_%loop142480142586%_
                                (lambda (_%hd142478142589%_
                                         _%param142484142591%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142478142589%_))
                                      (let ((_%e142481142594%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142478142589%_))))
                                        (let ((_%lp-tl142483142599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142481142594%_)))
                                              (_%lp-hd142482142597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142481142594%_))))
                                          (_%loop142480142586%_
                                           _%lp-tl142483142599%_
                                           (cons _%lp-hd142482142597%_
                                                 _%param142484142591%_))))
                                      (let ((_%param142485142602%_
                                             (reverse _%param142484142591%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142471142570%_))
                                            (let ((_%e142488142605%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142471142570%_))))
                                              (let ((_%tl142486142610%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142488142605%_)))
                                                    (_%hd142487142608%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142488142605%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142486142610%_))
                                                    (let ((_%L142613%_
                                                           _%hd142487142608%_)
                                                          (_%L142614%_
                                                           _%param142485142602%_)
                                                          (_%L142615%_
                                                           _%hd142475142576%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L142615%_))
                       (not (let ((__tmp144828
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L142615%_))))
                              (declare (not safe))
                              (##memq __tmp144828 gxc#gambit-annotations))))
                  (_%__kont143417143418%_ _%L142613%_ _%L142614%_ _%L142615%_)
                  (_%__kont143421143422%_
                   _%hd142487142608%_
                   _%hd142472142568%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g142452142504%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g142452142504%_))))))))
                        (_%loop142480142586%_ _%target142477142581%_ '()))))
                   (_%__match143442143443%_
                    (lambda (_%e142458142641%_
                             _%hd142457142644%_
                             _%tl142456142646%_
                             _%e142461142649%_
                             _%hd142460142652%_
                             _%tl142459142654%_
                             _%e142464142657%_
                             _%hd142463142660%_
                             _%tl142462142662%_)
                      (let ((_%L142665%_ _%hd142463142660%_)
                            (_%L142666%_ _%hd142460142652%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L142666%_))
                            (_%__kont143415143416%_ _%L142665%_ _%L142666%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd142460142652%_))
                                (let ((_%e142476142573%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd142460142652%_))))
                                  (let ((_%tl142474142578%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142476142573%_)))
                                        (_%hd142475142576%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142476142573%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl142474142578%_))
                                        (let ((_%__splice143419143420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl142474142578%_
                                                  '0))))
                                          (let ((_%tl142479142583%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143419143420%_
                                                    '1)))
                                                (_%target142477142581%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143419143420%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142479142583%_))
                                                (_%__match143468143469%_
                                                 _%e142458142641%_
                                                 _%hd142457142644%_
                                                 _%tl142456142646%_
                                                 _%e142461142649%_
                                                 _%hd142460142652%_
                                                 _%tl142459142654%_
                                                 _%e142476142573%_
                                                 _%hd142475142576%_
                                                 _%tl142474142578%_
                                                 _%__splice143419143420%_
                                                 _%target142477142581%_
                                                 _%tl142479142583%_)
                                                (_%__kont143421143422%_
                                                 _%hd142463142660%_
                                                 _%hd142460142652%_))))
                                        (_%__kont143421143422%_
                                         _%hd142463142660%_
                                         _%hd142460142652%_))))
                                (_%__kont143421143422%_
                                 _%hd142463142660%_
                                 _%hd142460142652%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx143413143414%_))
                  (let ((_%e142458142641%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx143413143414%_))))
                    (let ((_%tl142456142646%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142458142641%_)))
                          (_%hd142457142644%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142458142641%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142456142646%_))
                          (let ((_%e142461142649%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142456142646%_))))
                            (let ((_%tl142459142654%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142461142649%_)))
                                  (_%hd142460142652%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142461142649%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl142459142654%_))
                                  (let ((_%e142464142657%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl142459142654%_))))
                                    (let ((_%tl142462142662%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142464142657%_)))
                                          (_%hd142463142660%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142464142657%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142462142662%_))
                                          (_%__match143442143443%_
                                           _%e142458142641%_
                                           _%hd142457142644%_
                                           _%tl142456142646%_
                                           _%e142461142649%_
                                           _%hd142460142652%_
                                           _%tl142459142654%_
                                           _%e142464142657%_
                                           _%hd142463142660%_
                                           _%tl142462142662%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142460142652%_))
                                              (let ((_%e142476142573%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142460142652%_))))
                                                (let ((_%tl142474142578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142476142573%_)))
                                                      (_%hd142475142576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142476142573%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl142474142578%_))
                                                      (let ((_%__splice143419143420%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl142474142578%_ '0))))
                (let ((_%tl142479142583%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143419143420%_ '1)))
                      (_%target142477142581%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143419143420%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142479142583%_))
                      (_%__match143468143469%_
                       _%e142458142641%_
                       _%hd142457142644%_
                       _%tl142456142646%_
                       _%e142461142649%_
                       _%hd142460142652%_
                       _%tl142459142654%_
                       _%e142476142573%_
                       _%hd142475142576%_
                       _%tl142474142578%_
                       _%__splice143419143420%_
                       _%target142477142581%_
                       _%tl142479142583%_)
                      (let () (declare (not safe)) (_%g142452142504%_)))))
              (let () (declare (not safe)) (_%g142452142504%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g142452142504%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142460142652%_))
                                      (let ((_%e142476142573%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142460142652%_))))
                                        (let ((_%tl142474142578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142476142573%_)))
                                              (_%hd142475142576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142476142573%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl142474142578%_))
                                              (let ((_%__splice143419143420%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl142474142578%_
                                                        '0))))
                                                (let ((_%tl142479142583%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143419143420%_
                                                          '1)))
                                                      (_%target142477142581%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143419143420%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142479142583%_))
                                                      (_%__match143468143469%_
                                                       _%e142458142641%_
                                                       _%hd142457142644%_
                                                       _%tl142456142646%_
                                                       _%e142461142649%_
                                                       _%hd142460142652%_
                                                       _%tl142459142654%_
                                                       _%e142476142573%_
                                                       _%hd142475142576%_
                                                       _%tl142474142578%_
                                                       _%__splice143419143420%_
                                                       _%target142477142581%_
                                                       _%tl142479142583%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g142452142504%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142452142504%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142452142504%_))))))
                          (let () (declare (not safe)) (_%g142452142504%_)))))
                  (let () (declare (not safe)) (_%g142452142504%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self142406%_ _%stx142407%_)
        (let* ((_%g142409142419%_
                (lambda (_%g142410142416%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142410142416%_))))
               (_%g142408142444%_
                (lambda (_%g142410142422%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142410142422%_))
                      (let ((_%e142414142424%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142410142422%_))))
                        (let ((_%hd142413142427%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142414142424%_)))
                              (_%tl142412142429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142414142424%_))))
                          ((lambda (_%L142432%_)
                             (let ((_%decls142442%_
                                    (map gx#syntax->datum _%L142432%_)))
                               (let ((__tmp144829
                                      (let ((__tmp144830
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp144830
                                         _%decls142442%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp144829))
                               (cons 'declare _%decls142442%_)))
                           _%tl142412142429%_)))
                      (_%g142409142419%_ _%g142410142422%_)))))
          (_%g142408142444%_ _%stx142407%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self142152%_ _%stx142153%_)
        (let* ((_%g142155142172%_
                (lambda (_%g142156142169%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142156142169%_))))
               (_%g142154142403%_
                (lambda (_%g142156142175%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142156142175%_))
                      (let ((_%e142161142177%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142156142175%_))))
                        (let ((_%hd142160142180%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142161142177%_)))
                              (_%tl142159142182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142161142177%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142159142182%_))
                              (let ((_%e142164142185%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142159142182%_))))
                                (let ((_%hd142163142188%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142164142185%_)))
                                      (_%tl142162142190%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142164142185%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142162142190%_))
                                      (let ((_%e142167142193%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142162142190%_))))
                                        (let ((_%hd142166142196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142167142193%_)))
                                              (_%tl142165142198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142167142193%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142165142198%_))
                                              ((lambda (_%L142201%_
                                                        _%L142202%_)
                                                 (let* ((_%__stx143521143522%_
                                                         _%L142202%_)
                                                        (_%g142219142233%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx143521143522%_)))))
                                                   (let ((_%__kont143523143524%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self142152%_
                                                               _%L142201%_))))
                                                         (_%__kont143525143526%_
                                                          (lambda (_%L142365%_)
                                                            (let ((_%eid142374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L142365%_))))
                      (let ((_%lambda-expr142375142377%_
                             (gxc#apply-find-lambda-expression _%L142201%_)))
                        (if _%lambda-expr142375142377%_
                            (let* ((_%lambda-expr142380%_
                                    _%lambda-expr142375142377%_)
                                   (__tmp144831
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp144831
                               _%lambda-expr142380%_
                               _%eid142374%_))
                            '#f))
                      (cons 'define
                            (cons _%eid142374%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self142152%_
                                           _%L142201%_))
                                        '()))))))
                 (_%__kont143527143528%_
                  (lambda ()
                    (let* ((_%tmp142240%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body142349%_
                            (let _%lp142242%_ ((_%rest142244%_ _%L142202%_)
                                               (_%k142245%_ '0)
                                               (_%r142246%_ '()))
                              (let* ((_%__stx143491143492%_ _%rest142244%_)
                                     (_%g142251142268%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx143491143492%_)))))
                                (let ((_%__kont143493143494%_
                                       (lambda (_%L142336%_)
                                         (_%lp142242%_
                                          _%L142336%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k142245%_ '1))
                                          _%r142246%_)))
                                      (_%__kont143495143496%_
                                       (lambda (_%L142309%_ _%L142310%_)
                                         (_%lp142242%_
                                          _%L142309%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k142245%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L142310%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp142240%_
                           _%k142245%_
                           _%L142309%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r142246%_))))
                                      (_%__kont143497143498%_
                                       (lambda (_%L142280%_)
                                         (let ((__tmp144832
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L142280%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp142240%_
                                 _%k142245%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp144832
                                            _%r142246%_))))
                                      (_%__kont143499143500%_
                                       (lambda () (reverse _%r142246%_))))
                                  (let ((_%g142249142296%_
                                         (lambda ()
                                           (let ((_%L142280%_
                                                  _%__stx143491143492%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L142280%_))
                                                 (_%__kont143497143498%_
                                                  _%L142280%_)
                                                 (_%__kont143499143500%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx143491143492%_))
                                        (let ((_%e142256142325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx143491143492%_))))
                                          (let ((_%tl142254142330%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142256142325%_)))
                                                (_%hd142255142328%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142256142325%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd142255142328%_))
                                                (let ((_%e142257142333%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142255142328%_))))
                                                  (if (equal? _%e142257142333%_
                                                              '#f)
                                                      (_%__kont143493143494%_
                                                       _%tl142254142330%_)
                                                      (_%__kont143495143496%_
                                                       _%tl142254142330%_
                                                       _%hd142255142328%_)))
                                                (_%__kont143495143496%_
                                                 _%tl142254142330%_
                                                 _%hd142255142328%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g142249142296%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp142240%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142152%_
                                                       _%L142201%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp142240%_
                                         _%L142202%_
                                         _%L142201%_)
                                        _%body142349%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx143521143522%_))
                                                         (let ((_%e142223142387%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx143521143522%_))))
                   (let ((_%tl142221142392%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e142223142387%_)))
                         (_%hd142222142390%_
                          (let ()
                            (declare (not safe))
                            (##car _%e142223142387%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd142222142390%_))
                         (let ((_%e142224142395%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd142222142390%_))))
                           (if (equal? _%e142224142395%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142221142392%_))
                                   (_%__kont143523143524%_)
                                   (_%__kont143527143528%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142221142392%_))
                                   (_%__kont143525143526%_ _%hd142222142390%_)
                                   (_%__kont143527143528%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142221142392%_))
                             (_%__kont143525143526%_ _%hd142222142390%_)
                             (_%__kont143527143528%_)))))
                 (_%__kont143527143528%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142166142196%_
                                               _%hd142163142188%_)
                                              (_%g142155142172%_
                                               _%g142156142175%_))))
                                      (_%g142155142172%_ _%g142156142175%_))))
                              (_%g142155142172%_ _%g142156142175%_))))
                      (_%g142155142172%_ _%g142156142175%_)))))
          (_%g142154142403%_ _%stx142153%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals142127%_ _%hd142128%_ _%expr142129%_)
        (let ((_%$e142131%_ (gxc#apply-count-values _%expr142129%_)))
          (if _%$e142131%_
              ((lambda (_%count142134%_)
                 (let ((_%len142136%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142128%_)))
                       (_%cmp142137%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142128%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len142136%_ '0))
                           (_%cmp142137%_ _%count142134%_ _%len142136%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr142129%_
                          _%hd142128%_)))))
               _%$e142131%_)
              (let* ((_%len142143%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd142128%_)))
                     (_%cmp142145%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd142128%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg142147%_
                      (let ((__tmp144834
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd142128%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp144833 (number->string _%len142143%_)))
                        (declare (not safe))
                        (##string-append __tmp144834 __tmp144833 '" values")))
                     (_%count142149%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (not (let ()
                                (declare (not safe))
                                (gx#stx-list? _%hd142128%_)))
                         (let ()
                           (declare (not safe))
                           (##fx= _%len142143%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count142149%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals142127%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp142145%_
                                (cons _%count142149%_
                                      (cons _%len142143%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp142145%_
                                                        (cons _%count142149%_
                                                              (cons _%len142143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg142147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count142149%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var142122%_)
        (letrec ((_%generate-inline142124%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var142122%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var142122%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline142124%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline142124%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var142115%_ _%i142116%_ _%rest142117%_)
        (letrec ((_%generate-inline142119%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i142116%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest142117%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var142115%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var142115%_
                                                      (cons '0 '())))
                                          (cons _%var142115%_ '()))))
                        (cons '##vector-ref
                              (cons _%var142115%_ (cons _%i142116%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline142119%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline142119%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var142109%_ _%i142110%_)
        (if (let () (declare (not safe)) (##fx= _%i142110%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var142109%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var142109%_ '()))
                                  (cons (cons 'list (cons _%var142109%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var142109%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var142109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var142109%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i142110%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var142109%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var142109%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var142109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var142109%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var142109%_ '()))
                                (cons _%i142110%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var142109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i142110%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self142041%_ _%stx142042%_)
        (let* ((_%g142044142061%_
                (lambda (_%g142045142058%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142045142058%_))))
               (_%g142043142106%_
                (lambda (_%g142045142064%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142045142064%_))
                      (let ((_%e142050142066%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142045142064%_))))
                        (let ((_%hd142049142069%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142050142066%_)))
                              (_%tl142048142071%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142050142066%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142048142071%_))
                              (let ((_%e142053142074%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142048142071%_))))
                                (let ((_%hd142052142077%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142053142074%_)))
                                      (_%tl142051142079%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142053142074%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142051142079%_))
                                      (let ((_%e142056142082%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142051142079%_))))
                                        (let ((_%hd142055142085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142056142082%_)))
                                              (_%tl142054142087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142056142082%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142054142087%_))
                                              ((lambda (_%L142090%_
                                                        _%L142091%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self142041%_
                                                  _%L142091%_
                                                  _%L142090%_))
                                               _%hd142055142085%_
                                               _%hd142052142077%_)
                                              (_%g142044142061%_
                                               _%g142045142064%_))))
                                      (_%g142044142061%_ _%g142045142064%_))))
                              (_%g142044142061%_ _%g142045142064%_))))
                      (_%g142044142061%_ _%g142045142064%_)))))
          (_%g142043142106%_ _%stx142042%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self142000%_ _%hd142001%_ _%body142002%_)
        (let* ((_%hd142004%_ (gxc#generate-runtime-lambda-head _%hd142001%_))
               (_%body142006%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self142000%_ _%body142002%_)))
               (_%body142038%_
                (let* ((_%body142007142015%_ _%body142006%_)
                       (_%else142009142023%_
                        (lambda () (cons _%body142006%_ '())))
                       (_%K142011142028%_
                        (lambda (_%exprs142026%_) _%exprs142026%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body142007142015%_))
                      (let ((_%hd142012142031%_
                             (let ()
                               (declare (not safe))
                               (##car _%body142007142015%_)))
                            (_%tl142013142033%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body142007142015%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd142012142031%_ 'begin))
                            (let ((_%exprs142036%_ _%tl142013142033%_))
                              (_%K142011142028%_ _%exprs142036%_))
                            (_%else142009142023%_)))
                      (_%else142009142023%_)))))
          (cons 'lambda (cons _%hd142004%_ _%body142038%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd141998%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd141998%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self140537%_ _%stx140538%_)
        (letrec ((_%dispatch-case?140540%_
                  (lambda (_%hd141228%_ _%body141229%_)
                    (let* ((_%form141231%_
                            (cons _%hd141228%_ (cons _%body141229%_ '())))
                           (_%__stx143553143554%_ _%form141231%_)
                           (_%g141236141393%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx143553143554%_)))))
                      (let ((_%__kont143555143556%_
                             (lambda (_%L141918%_ _%L141919%_ _%L141920%_)
                               '#t))
                            (_%__kont143561143562%_
                             (lambda (_%L141706%_
                                      _%L141707%_
                                      _%L141708%_
                                      _%L141709%_
                                      _%L141710%_
                                      _%L141711%_)
                               '#t))
                            (_%__kont143567143568%_
                             (lambda (_%L141501%_
                                      _%L141502%_
                                      _%L141503%_
                                      _%L141504%_)
                               '#t))
                            (_%__kont143569143570%_ (lambda () '#f)))
                        (let* ((_%__match143694143695%_
                                (lambda (_%e141355141405%_
                                         _%hd141354141408%_
                                         _%tl141353141410%_
                                         _%e141358141413%_
                                         _%hd141357141416%_
                                         _%tl141356141418%_
                                         _%e141361141421%_
                                         _%hd141360141424%_
                                         _%tl141359141426%_
                                         _%e141364141429%_
                                         _%hd141363141432%_
                                         _%tl141362141434%_
                                         _%e141367141437%_
                                         _%hd141366141440%_
                                         _%tl141365141442%_
                                         _%e141370141445%_
                                         _%hd141369141448%_
                                         _%tl141368141450%_
                                         _%e141373141453%_
                                         _%hd141372141456%_
                                         _%tl141371141458%_
                                         _%e141376141461%_
                                         _%hd141375141464%_
                                         _%tl141374141466%_
                                         _%e141379141469%_
                                         _%hd141378141472%_
                                         _%tl141377141474%_
                                         _%e141382141477%_
                                         _%hd141381141480%_
                                         _%tl141380141482%_
                                         _%e141385141485%_
                                         _%hd141384141488%_
                                         _%tl141383141490%_
                                         _%e141388141493%_
                                         _%hd141387141496%_
                                         _%tl141386141498%_)
                                  (let ((_%L141501%_ _%hd141387141496%_)
                                        (_%L141502%_ _%hd141378141472%_)
                                        (_%L141503%_ _%hd141369141448%_)
                                        (_%L141504%_ _%hd141354141408%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L141504%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L141503%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L141504%_
                                                _%L141501%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L141502%_
                                                     _%L141504%_))))
                                        (_%__kont143567143568%_
                                         _%L141501%_
                                         _%L141502%_
                                         _%L141503%_
                                         _%L141504%_)
                                        (_%__kont143569143570%_)))))
                               (_%__match143666143667%_
                                (lambda (_%e141355141405%_
                                         _%hd141354141408%_
                                         _%tl141353141410%_
                                         _%e141358141413%_
                                         _%hd141357141416%_
                                         _%tl141356141418%_
                                         _%e141361141421%_
                                         _%hd141360141424%_
                                         _%tl141359141426%_
                                         _%e141364141429%_
                                         _%hd141363141432%_
                                         _%tl141362141434%_
                                         _%e141367141437%_
                                         _%hd141366141440%_
                                         _%tl141365141442%_
                                         _%e141370141445%_
                                         _%hd141369141448%_
                                         _%tl141368141450%_
                                         _%e141373141453%_
                                         _%hd141372141456%_
                                         _%tl141371141458%_
                                         _%e141376141461%_
                                         _%hd141375141464%_
                                         _%tl141374141466%_
                                         _%e141379141469%_
                                         _%hd141378141472%_
                                         _%tl141377141474%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141371141458%_))
                                      (let ((_%e141382141477%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141371141458%_))))
                                        (let ((_%tl141380141482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141382141477%_)))
                                              (_%hd141381141480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141382141477%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd141381141480%_))
                                              (let ((_%e141385141485%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd141381141480%_))))
                                                (let ((_%tl141383141490%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141385141485%_)))
                                                      (_%hd141384141488%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141385141485%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd141384141488%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd141384141488%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141383141490%_))
                      (let ((_%e141388141493%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141383141490%_))))
                        (let ((_%tl141386141498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141388141493%_)))
                              (_%hd141387141496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141388141493%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141386141498%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl141380141482%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141356141418%_))
                                      (_%__match143694143695%_
                                       _%e141355141405%_
                                       _%hd141354141408%_
                                       _%tl141353141410%_
                                       _%e141358141413%_
                                       _%hd141357141416%_
                                       _%tl141356141418%_
                                       _%e141361141421%_
                                       _%hd141360141424%_
                                       _%tl141359141426%_
                                       _%e141364141429%_
                                       _%hd141363141432%_
                                       _%tl141362141434%_
                                       _%e141367141437%_
                                       _%hd141366141440%_
                                       _%tl141365141442%_
                                       _%e141370141445%_
                                       _%hd141369141448%_
                                       _%tl141368141450%_
                                       _%e141373141453%_
                                       _%hd141372141456%_
                                       _%tl141371141458%_
                                       _%e141376141461%_
                                       _%hd141375141464%_
                                       _%tl141374141466%_
                                       _%e141379141469%_
                                       _%hd141378141472%_
                                       _%tl141377141474%_
                                       _%e141382141477%_
                                       _%hd141381141480%_
                                       _%tl141380141482%_
                                       _%e141385141485%_
                                       _%hd141384141488%_
                                       _%tl141383141490%_
                                       _%e141388141493%_
                                       _%hd141387141496%_
                                       _%tl141386141498%_)
                                      (_%__kont143569143570%_))
                                  (_%__kont143569143570%_))
                              (_%__kont143569143570%_))))
                      (_%__kont143569143570%_))
                  (_%__kont143569143570%_))
              (_%__kont143569143570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143569143570%_))))
                                      (_%__kont143569143570%_))))
                               (_%__match143596143597%_
                                (lambda (_%e141291141546%_
                                         _%hd141290141549%_
                                         _%tl141289141551%_
                                         _%__splice143563143564%_
                                         _%target141292141554%_
                                         _%tl141294141556%_)
                                  (letrec ((_%loop141295141559%_
                                            (lambda (_%hd141293141562%_
                                                     _%arg141299141564%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141293141562%_))
                                                  (let ((_%e141296141567%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141293141562%_))))
                                                    (let ((_%lp-tl141298141572%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141296141567%_)))
                                                          (_%lp-hd141297141570%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141296141567%_))))
                                                      (_%loop141295141559%_
                                                       _%lp-tl141298141572%_
                                                       (cons _%lp-hd141297141570%_
                                                             _%arg141299141564%_))))
                                                  (let ((_%arg141300141575%_
                                                         (reverse _%arg141299141564%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141289141551%_))
                                                        (let ((_%e141303141578%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141289141551%_))))
                  (let ((_%tl141301141583%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141303141578%_)))
                        (_%hd141302141581%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141303141578%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141302141581%_))
                        (let ((_%e141306141586%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141302141581%_))))
                          (let ((_%tl141304141591%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141306141586%_)))
                                (_%hd141305141589%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141306141586%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141305141589%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141305141589%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141304141591%_))
                                        (let ((_%e141309141594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141304141591%_))))
                                          (let ((_%tl141307141599%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141309141594%_)))
                                                (_%hd141308141597%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141309141594%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141308141597%_))
                                                (let ((_%e141312141602%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141308141597%_))))
                                                  (let ((_%tl141310141607%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141312141602%_)))
                                                        (_%hd141311141605%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141312141602%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141311141605%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141311141605%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141310141607%_))
                        (let ((_%e141315141610%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141310141607%_))))
                          (let ((_%tl141313141615%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141315141610%_)))
                                (_%hd141314141613%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141315141610%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141313141615%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141307141599%_))
                                    (let ((_%e141318141618%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141307141599%_))))
                                      (let ((_%tl141316141623%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141318141618%_)))
                                            (_%hd141317141621%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141318141618%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141317141621%_))
                                            (let ((_%e141321141626%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141317141621%_))))
                                              (let ((_%tl141319141631%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141321141626%_)))
                                                    (_%hd141320141629%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141321141626%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141320141629%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141320141629%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141319141631%_))
                                                            (let ((_%e141324141634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141319141631%_))))
                      (let ((_%tl141322141639%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141324141634%_)))
                            (_%hd141323141637%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141324141634%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141322141639%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141316141623%_))
                                (if (let ((__tmp144835
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl141316141623%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp144835 '1))
                                    (let ((_%__splice143565143566%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141316141623%_
                                              '1))))
                                      (let ((_%tl141327141644%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143565143566%_
                                                '1)))
                                            (_%target141325141642%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143565143566%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141327141644%_))
                                            (let ((_%e141336141647%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141327141644%_))))
                                              (let ((_%tl141334141652%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141336141647%_)))
                                                    (_%hd141335141650%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141336141647%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd141335141650%_))
                                                    (let ((_%e141339141655%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd141335141650%_))))
                                                      (let ((_%tl141337141660%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141339141655%_)))
                    (_%hd141338141658%_
                     (let () (declare (not safe)) (##car _%e141339141655%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd141338141658%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd141338141658%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl141337141660%_))
                            (let ((_%e141342141663%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl141337141660%_))))
                              (let ((_%tl141340141668%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141342141663%_)))
                                    (_%hd141341141666%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141342141663%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl141340141668%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141334141652%_))
                                        (letrec ((_%loop141328141671%_
                                                  (lambda (_%hd141326141674%_
                                                           _%xarg141332141676%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd141326141674%_))
                                                        (let ((_%e141329141679%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd141326141674%_))))
                  (let ((_%lp-tl141331141684%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141329141679%_)))
                        (_%lp-hd141330141682%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141329141679%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd141330141682%_))
                        (let ((_%e141345141687%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd141330141682%_))))
                          (let ((_%tl141343141692%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141345141687%_)))
                                (_%hd141344141690%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141345141687%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141344141690%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd141344141690%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141343141692%_))
                                        (let ((_%e141348141695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141343141692%_))))
                                          (let ((_%tl141346141700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141348141695%_)))
                                                (_%hd141347141698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141348141695%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141346141700%_))
                                                (_%loop141328141671%_
                                                 _%lp-tl141331141684%_
                                                 (cons _%hd141347141698%_
                                                       _%xarg141332141676%_))
                                                (_%__match143666143667%_
                                                 _%e141291141546%_
                                                 _%hd141290141549%_
                                                 _%tl141289141551%_
                                                 _%e141303141578%_
                                                 _%hd141302141581%_
                                                 _%tl141301141583%_
                                                 _%e141306141586%_
                                                 _%hd141305141589%_
                                                 _%tl141304141591%_
                                                 _%e141309141594%_
                                                 _%hd141308141597%_
                                                 _%tl141307141599%_
                                                 _%e141312141602%_
                                                 _%hd141311141605%_
                                                 _%tl141310141607%_
                                                 _%e141315141610%_
                                                 _%hd141314141613%_
                                                 _%tl141313141615%_
                                                 _%e141318141618%_
                                                 _%hd141317141621%_
                                                 _%tl141316141623%_
                                                 _%e141321141626%_
                                                 _%hd141320141629%_
                                                 _%tl141319141631%_
                                                 _%e141324141634%_
                                                 _%hd141323141637%_
                                                 _%tl141322141639%_))))
                                        (_%__match143666143667%_
                                         _%e141291141546%_
                                         _%hd141290141549%_
                                         _%tl141289141551%_
                                         _%e141303141578%_
                                         _%hd141302141581%_
                                         _%tl141301141583%_
                                         _%e141306141586%_
                                         _%hd141305141589%_
                                         _%tl141304141591%_
                                         _%e141309141594%_
                                         _%hd141308141597%_
                                         _%tl141307141599%_
                                         _%e141312141602%_
                                         _%hd141311141605%_
                                         _%tl141310141607%_
                                         _%e141315141610%_
                                         _%hd141314141613%_
                                         _%tl141313141615%_
                                         _%e141318141618%_
                                         _%hd141317141621%_
                                         _%tl141316141623%_
                                         _%e141321141626%_
                                         _%hd141320141629%_
                                         _%tl141319141631%_
                                         _%e141324141634%_
                                         _%hd141323141637%_
                                         _%tl141322141639%_))
                                    (_%__match143666143667%_
                                     _%e141291141546%_
                                     _%hd141290141549%_
                                     _%tl141289141551%_
                                     _%e141303141578%_
                                     _%hd141302141581%_
                                     _%tl141301141583%_
                                     _%e141306141586%_
                                     _%hd141305141589%_
                                     _%tl141304141591%_
                                     _%e141309141594%_
                                     _%hd141308141597%_
                                     _%tl141307141599%_
                                     _%e141312141602%_
                                     _%hd141311141605%_
                                     _%tl141310141607%_
                                     _%e141315141610%_
                                     _%hd141314141613%_
                                     _%tl141313141615%_
                                     _%e141318141618%_
                                     _%hd141317141621%_
                                     _%tl141316141623%_
                                     _%e141321141626%_
                                     _%hd141320141629%_
                                     _%tl141319141631%_
                                     _%e141324141634%_
                                     _%hd141323141637%_
                                     _%tl141322141639%_))
                                (_%__match143666143667%_
                                 _%e141291141546%_
                                 _%hd141290141549%_
                                 _%tl141289141551%_
                                 _%e141303141578%_
                                 _%hd141302141581%_
                                 _%tl141301141583%_
                                 _%e141306141586%_
                                 _%hd141305141589%_
                                 _%tl141304141591%_
                                 _%e141309141594%_
                                 _%hd141308141597%_
                                 _%tl141307141599%_
                                 _%e141312141602%_
                                 _%hd141311141605%_
                                 _%tl141310141607%_
                                 _%e141315141610%_
                                 _%hd141314141613%_
                                 _%tl141313141615%_
                                 _%e141318141618%_
                                 _%hd141317141621%_
                                 _%tl141316141623%_
                                 _%e141321141626%_
                                 _%hd141320141629%_
                                 _%tl141319141631%_
                                 _%e141324141634%_
                                 _%hd141323141637%_
                                 _%tl141322141639%_))))
                        (_%__match143666143667%_
                         _%e141291141546%_
                         _%hd141290141549%_
                         _%tl141289141551%_
                         _%e141303141578%_
                         _%hd141302141581%_
                         _%tl141301141583%_
                         _%e141306141586%_
                         _%hd141305141589%_
                         _%tl141304141591%_
                         _%e141309141594%_
                         _%hd141308141597%_
                         _%tl141307141599%_
                         _%e141312141602%_
                         _%hd141311141605%_
                         _%tl141310141607%_
                         _%e141315141610%_
                         _%hd141314141613%_
                         _%tl141313141615%_
                         _%e141318141618%_
                         _%hd141317141621%_
                         _%tl141316141623%_
                         _%e141321141626%_
                         _%hd141320141629%_
                         _%tl141319141631%_
                         _%e141324141634%_
                         _%hd141323141637%_
                         _%tl141322141639%_))))
                (let ((_%xarg141333141703%_ (reverse _%xarg141332141676%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141301141583%_))
                      (let ((_%L141706%_ _%hd141341141666%_)
                            (_%L141707%_ _%xarg141333141703%_)
                            (_%L141708%_ _%hd141323141637%_)
                            (_%L141709%_ _%hd141314141613%_)
                            (_%L141710%_ _%tl141294141556%_)
                            (_%L141711%_ _%arg141300141575%_))
                        (if (and (let ((__tmp144836
                                        (let ((__tmp144837
                                               (lambda (_%g141754141757%_
                                                        _%g141755141759%_)
                                                 (cons _%g141754141757%_
                                                       _%g141755141759%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp144837
                                           '()
                                           _%L141711%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp144836))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L141710%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L141709%_
                                    'apply))
                                 (let ((__tmp144840
                                        (length (let ((__tmp144841
                                                       (lambda (_%g141761141764%_
                                                                _%g141762141766%_)
                                                         (cons _%g141761141764%_
                                                               _%g141762141766%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp144841
                                                   '()
                                                   _%L141711%_))))
                                       (__tmp144838
                                        (length (let ((__tmp144839
                                                       (lambda (_%g141768141771%_
                                                                _%g141769141773%_)
                                                         (cons _%g141768141771%_
                                                               _%g141769141773%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp144839
                                                   '()
                                                   _%L141707%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp144840 __tmp144838))
                                 (let ((__tmp144844
                                        (let ((__tmp144845
                                               (lambda (_%g141775141778%_
                                                        _%g141776141780%_)
                                                 (cons _%g141775141778%_
                                                       _%g141776141780%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp144845
                                           '()
                                           _%L141711%_)))
                                       (__tmp144842
                                        (let ((__tmp144843
                                               (lambda (_%g141782141785%_
                                                        _%g141783141787%_)
                                                 (cons _%g141782141785%_
                                                       _%g141783141787%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp144843
                                           '()
                                           _%L141707%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp144844
                                    __tmp144842))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L141710%_
                                    _%L141706%_))
                                 (not (let ((__tmp144849
                                             (lambda (_%g141789141791%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g141789141791%_
                                                  _%L141708%_))))
                                            (__tmp144846
                                             (let ((__tmp144848
                                                    (lambda (_%g141793141796%_
                                                             _%g141794141798%_)
                                                      (cons _%g141793141796%_
                                                            _%g141794141798%_)))
                                                   (__tmp144847
                                                    (cons _%L141710%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp144848
                                                __tmp144847
                                                _%L141711%_))))
                                        (declare (not safe))
                                        (__find __tmp144849 __tmp144846))))
                            (_%__kont143561143562%_
                             _%L141706%_
                             _%L141707%_
                             _%L141708%_
                             _%L141709%_
                             _%L141710%_
                             _%L141711%_)
                            (_%__match143666143667%_
                             _%e141291141546%_
                             _%hd141290141549%_
                             _%tl141289141551%_
                             _%e141303141578%_
                             _%hd141302141581%_
                             _%tl141301141583%_
                             _%e141306141586%_
                             _%hd141305141589%_
                             _%tl141304141591%_
                             _%e141309141594%_
                             _%hd141308141597%_
                             _%tl141307141599%_
                             _%e141312141602%_
                             _%hd141311141605%_
                             _%tl141310141607%_
                             _%e141315141610%_
                             _%hd141314141613%_
                             _%tl141313141615%_
                             _%e141318141618%_
                             _%hd141317141621%_
                             _%tl141316141623%_
                             _%e141321141626%_
                             _%hd141320141629%_
                             _%tl141319141631%_
                             _%e141324141634%_
                             _%hd141323141637%_
                             _%tl141322141639%_)))
                      (_%__match143666143667%_
                       _%e141291141546%_
                       _%hd141290141549%_
                       _%tl141289141551%_
                       _%e141303141578%_
                       _%hd141302141581%_
                       _%tl141301141583%_
                       _%e141306141586%_
                       _%hd141305141589%_
                       _%tl141304141591%_
                       _%e141309141594%_
                       _%hd141308141597%_
                       _%tl141307141599%_
                       _%e141312141602%_
                       _%hd141311141605%_
                       _%tl141310141607%_
                       _%e141315141610%_
                       _%hd141314141613%_
                       _%tl141313141615%_
                       _%e141318141618%_
                       _%hd141317141621%_
                       _%tl141316141623%_
                       _%e141321141626%_
                       _%hd141320141629%_
                       _%tl141319141631%_
                       _%e141324141634%_
                       _%hd141323141637%_
                       _%tl141322141639%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop141328141671%_
                                           _%target141325141642%_
                                           '()))
                                        (_%__match143666143667%_
                                         _%e141291141546%_
                                         _%hd141290141549%_
                                         _%tl141289141551%_
                                         _%e141303141578%_
                                         _%hd141302141581%_
                                         _%tl141301141583%_
                                         _%e141306141586%_
                                         _%hd141305141589%_
                                         _%tl141304141591%_
                                         _%e141309141594%_
                                         _%hd141308141597%_
                                         _%tl141307141599%_
                                         _%e141312141602%_
                                         _%hd141311141605%_
                                         _%tl141310141607%_
                                         _%e141315141610%_
                                         _%hd141314141613%_
                                         _%tl141313141615%_
                                         _%e141318141618%_
                                         _%hd141317141621%_
                                         _%tl141316141623%_
                                         _%e141321141626%_
                                         _%hd141320141629%_
                                         _%tl141319141631%_
                                         _%e141324141634%_
                                         _%hd141323141637%_
                                         _%tl141322141639%_))
                                    (_%__match143666143667%_
                                     _%e141291141546%_
                                     _%hd141290141549%_
                                     _%tl141289141551%_
                                     _%e141303141578%_
                                     _%hd141302141581%_
                                     _%tl141301141583%_
                                     _%e141306141586%_
                                     _%hd141305141589%_
                                     _%tl141304141591%_
                                     _%e141309141594%_
                                     _%hd141308141597%_
                                     _%tl141307141599%_
                                     _%e141312141602%_
                                     _%hd141311141605%_
                                     _%tl141310141607%_
                                     _%e141315141610%_
                                     _%hd141314141613%_
                                     _%tl141313141615%_
                                     _%e141318141618%_
                                     _%hd141317141621%_
                                     _%tl141316141623%_
                                     _%e141321141626%_
                                     _%hd141320141629%_
                                     _%tl141319141631%_
                                     _%e141324141634%_
                                     _%hd141323141637%_
                                     _%tl141322141639%_))))
                            (_%__match143666143667%_
                             _%e141291141546%_
                             _%hd141290141549%_
                             _%tl141289141551%_
                             _%e141303141578%_
                             _%hd141302141581%_
                             _%tl141301141583%_
                             _%e141306141586%_
                             _%hd141305141589%_
                             _%tl141304141591%_
                             _%e141309141594%_
                             _%hd141308141597%_
                             _%tl141307141599%_
                             _%e141312141602%_
                             _%hd141311141605%_
                             _%tl141310141607%_
                             _%e141315141610%_
                             _%hd141314141613%_
                             _%tl141313141615%_
                             _%e141318141618%_
                             _%hd141317141621%_
                             _%tl141316141623%_
                             _%e141321141626%_
                             _%hd141320141629%_
                             _%tl141319141631%_
                             _%e141324141634%_
                             _%hd141323141637%_
                             _%tl141322141639%_))
                        (_%__match143666143667%_
                         _%e141291141546%_
                         _%hd141290141549%_
                         _%tl141289141551%_
                         _%e141303141578%_
                         _%hd141302141581%_
                         _%tl141301141583%_
                         _%e141306141586%_
                         _%hd141305141589%_
                         _%tl141304141591%_
                         _%e141309141594%_
                         _%hd141308141597%_
                         _%tl141307141599%_
                         _%e141312141602%_
                         _%hd141311141605%_
                         _%tl141310141607%_
                         _%e141315141610%_
                         _%hd141314141613%_
                         _%tl141313141615%_
                         _%e141318141618%_
                         _%hd141317141621%_
                         _%tl141316141623%_
                         _%e141321141626%_
                         _%hd141320141629%_
                         _%tl141319141631%_
                         _%e141324141634%_
                         _%hd141323141637%_
                         _%tl141322141639%_))
                    (_%__match143666143667%_
                     _%e141291141546%_
                     _%hd141290141549%_
                     _%tl141289141551%_
                     _%e141303141578%_
                     _%hd141302141581%_
                     _%tl141301141583%_
                     _%e141306141586%_
                     _%hd141305141589%_
                     _%tl141304141591%_
                     _%e141309141594%_
                     _%hd141308141597%_
                     _%tl141307141599%_
                     _%e141312141602%_
                     _%hd141311141605%_
                     _%tl141310141607%_
                     _%e141315141610%_
                     _%hd141314141613%_
                     _%tl141313141615%_
                     _%e141318141618%_
                     _%hd141317141621%_
                     _%tl141316141623%_
                     _%e141321141626%_
                     _%hd141320141629%_
                     _%tl141319141631%_
                     _%e141324141634%_
                     _%hd141323141637%_
                     _%tl141322141639%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match143666143667%_
                                                     _%e141291141546%_
                                                     _%hd141290141549%_
                                                     _%tl141289141551%_
                                                     _%e141303141578%_
                                                     _%hd141302141581%_
                                                     _%tl141301141583%_
                                                     _%e141306141586%_
                                                     _%hd141305141589%_
                                                     _%tl141304141591%_
                                                     _%e141309141594%_
                                                     _%hd141308141597%_
                                                     _%tl141307141599%_
                                                     _%e141312141602%_
                                                     _%hd141311141605%_
                                                     _%tl141310141607%_
                                                     _%e141315141610%_
                                                     _%hd141314141613%_
                                                     _%tl141313141615%_
                                                     _%e141318141618%_
                                                     _%hd141317141621%_
                                                     _%tl141316141623%_
                                                     _%e141321141626%_
                                                     _%hd141320141629%_
                                                     _%tl141319141631%_
                                                     _%e141324141634%_
                                                     _%hd141323141637%_
                                                     _%tl141322141639%_))))
                                            (_%__match143666143667%_
                                             _%e141291141546%_
                                             _%hd141290141549%_
                                             _%tl141289141551%_
                                             _%e141303141578%_
                                             _%hd141302141581%_
                                             _%tl141301141583%_
                                             _%e141306141586%_
                                             _%hd141305141589%_
                                             _%tl141304141591%_
                                             _%e141309141594%_
                                             _%hd141308141597%_
                                             _%tl141307141599%_
                                             _%e141312141602%_
                                             _%hd141311141605%_
                                             _%tl141310141607%_
                                             _%e141315141610%_
                                             _%hd141314141613%_
                                             _%tl141313141615%_
                                             _%e141318141618%_
                                             _%hd141317141621%_
                                             _%tl141316141623%_
                                             _%e141321141626%_
                                             _%hd141320141629%_
                                             _%tl141319141631%_
                                             _%e141324141634%_
                                             _%hd141323141637%_
                                             _%tl141322141639%_))))
                                    (_%__match143666143667%_
                                     _%e141291141546%_
                                     _%hd141290141549%_
                                     _%tl141289141551%_
                                     _%e141303141578%_
                                     _%hd141302141581%_
                                     _%tl141301141583%_
                                     _%e141306141586%_
                                     _%hd141305141589%_
                                     _%tl141304141591%_
                                     _%e141309141594%_
                                     _%hd141308141597%_
                                     _%tl141307141599%_
                                     _%e141312141602%_
                                     _%hd141311141605%_
                                     _%tl141310141607%_
                                     _%e141315141610%_
                                     _%hd141314141613%_
                                     _%tl141313141615%_
                                     _%e141318141618%_
                                     _%hd141317141621%_
                                     _%tl141316141623%_
                                     _%e141321141626%_
                                     _%hd141320141629%_
                                     _%tl141319141631%_
                                     _%e141324141634%_
                                     _%hd141323141637%_
                                     _%tl141322141639%_))
                                (_%__match143666143667%_
                                 _%e141291141546%_
                                 _%hd141290141549%_
                                 _%tl141289141551%_
                                 _%e141303141578%_
                                 _%hd141302141581%_
                                 _%tl141301141583%_
                                 _%e141306141586%_
                                 _%hd141305141589%_
                                 _%tl141304141591%_
                                 _%e141309141594%_
                                 _%hd141308141597%_
                                 _%tl141307141599%_
                                 _%e141312141602%_
                                 _%hd141311141605%_
                                 _%tl141310141607%_
                                 _%e141315141610%_
                                 _%hd141314141613%_
                                 _%tl141313141615%_
                                 _%e141318141618%_
                                 _%hd141317141621%_
                                 _%tl141316141623%_
                                 _%e141321141626%_
                                 _%hd141320141629%_
                                 _%tl141319141631%_
                                 _%e141324141634%_
                                 _%hd141323141637%_
                                 _%tl141322141639%_))
                            (_%__kont143569143570%_))))
                    (_%__kont143569143570%_))
                (_%__kont143569143570%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont143569143570%_))))
                                            (_%__kont143569143570%_))))
                                    (_%__kont143569143570%_))
                                (_%__kont143569143570%_))))
                        (_%__kont143569143570%_))
                    (_%__kont143569143570%_))
                (_%__kont143569143570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont143569143570%_))))
                                        (_%__kont143569143570%_))
                                    (_%__kont143569143570%_))
                                (_%__kont143569143570%_))))
                        (_%__kont143569143570%_))))
                (_%__kont143569143570%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop141295141559%_
                                     _%target141292141554%_
                                     '()))))
                               (_%__match143584143585%_
                                (lambda (_%e141243141806%_
                                         _%hd141242141809%_
                                         _%tl141241141811%_
                                         _%__splice143557143558%_
                                         _%target141244141814%_
                                         _%tl141246141816%_)
                                  (letrec ((_%loop141247141819%_
                                            (lambda (_%hd141245141822%_
                                                     _%arg141251141824%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141245141822%_))
                                                  (let ((_%e141248141827%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141245141822%_))))
                                                    (let ((_%lp-tl141250141832%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141248141827%_)))
                                                          (_%lp-hd141249141830%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141248141827%_))))
                                                      (_%loop141247141819%_
                                                       _%lp-tl141250141832%_
                                                       (cons _%lp-hd141249141830%_
                                                             _%arg141251141824%_))))
                                                  (let ((_%arg141252141835%_
                                                         (reverse _%arg141251141824%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141241141811%_))
                                                        (let ((_%e141255141838%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141241141811%_))))
                  (let ((_%tl141253141843%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141255141838%_)))
                        (_%hd141254141841%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141255141838%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141254141841%_))
                        (let ((_%e141258141846%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141254141841%_))))
                          (let ((_%tl141256141851%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141258141846%_)))
                                (_%hd141257141849%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141258141846%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141257141849%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141257141849%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141256141851%_))
                                        (let ((_%e141261141854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141256141851%_))))
                                          (let ((_%tl141259141859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141261141854%_)))
                                                (_%hd141260141857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141261141854%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141260141857%_))
                                                (let ((_%e141264141862%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141260141857%_))))
                                                  (let ((_%tl141262141867%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141264141862%_)))
                                                        (_%hd141263141865%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141264141862%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141263141865%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141263141865%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141262141867%_))
                        (let ((_%e141267141870%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141262141867%_))))
                          (let ((_%tl141265141875%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141267141870%_)))
                                (_%hd141266141873%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141267141870%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141265141875%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141259141859%_))
                                    (let ((_%__splice143559143560%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141259141859%_
                                              '0))))
                                      (let ((_%tl141270141880%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143559143560%_
                                                '1)))
                                            (_%target141268141878%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143559143560%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141270141880%_))
                                            (letrec ((_%loop141271141883%_
                                                      (lambda (_%hd141269141886%_
                                                               _%xarg141275141888%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141269141886%_))
                                                            (let ((_%e141272141891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141269141886%_))))
                      (let ((_%lp-tl141274141896%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141272141891%_)))
                            (_%lp-hd141273141894%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141272141891%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141273141894%_))
                            (let ((_%e141279141899%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141273141894%_))))
                              (let ((_%tl141277141904%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141279141899%_)))
                                    (_%hd141278141902%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141279141899%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141278141902%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141278141902%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141277141904%_))
                                            (let ((_%e141282141907%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141277141904%_))))
                                              (let ((_%tl141280141912%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141282141907%_)))
                                                    (_%hd141281141910%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141282141907%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141280141912%_))
                                                    (_%loop141271141883%_
                                                     _%lp-tl141274141896%_
                                                     (cons _%hd141281141910%_
                                                           _%xarg141275141888%_))
                                                    (_%__match143596143597%_
                                                     _%e141243141806%_
                                                     _%hd141242141809%_
                                                     _%tl141241141811%_
                                                     _%__splice143557143558%_
                                                     _%target141244141814%_
                                                     _%tl141246141816%_))))
                                            (_%__match143596143597%_
                                             _%e141243141806%_
                                             _%hd141242141809%_
                                             _%tl141241141811%_
                                             _%__splice143557143558%_
                                             _%target141244141814%_
                                             _%tl141246141816%_))
                                        (_%__match143596143597%_
                                         _%e141243141806%_
                                         _%hd141242141809%_
                                         _%tl141241141811%_
                                         _%__splice143557143558%_
                                         _%target141244141814%_
                                         _%tl141246141816%_))
                                    (_%__match143596143597%_
                                     _%e141243141806%_
                                     _%hd141242141809%_
                                     _%tl141241141811%_
                                     _%__splice143557143558%_
                                     _%target141244141814%_
                                     _%tl141246141816%_))))
                            (_%__match143596143597%_
                             _%e141243141806%_
                             _%hd141242141809%_
                             _%tl141241141811%_
                             _%__splice143557143558%_
                             _%target141244141814%_
                             _%tl141246141816%_))))
                    (let ((_%xarg141276141915%_
                           (reverse _%xarg141275141888%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141253141843%_))
                          (let ((_%L141918%_ _%xarg141276141915%_)
                                (_%L141919%_ _%hd141266141873%_)
                                (_%L141920%_ _%arg141252141835%_))
                            (if (and (let ((__tmp144850
                                            (let ((__tmp144851
                                                   (lambda (_%g141948141951%_
                                                            _%g141949141953%_)
                                                     (cons _%g141948141951%_
                                                           _%g141949141953%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp144851
                                               '()
                                               _%L141920%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp144850))
                                     (let ((__tmp144854
                                            (length (let ((__tmp144855
                                                           (lambda (_%g141955141958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g141956141960%_)
                     (cons _%g141955141958%_ _%g141956141960%_))))
              (declare (not safe))
              (__foldr1 __tmp144855 '() _%L141920%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp144852
                                            (length (let ((__tmp144853
                                                           (lambda (_%g141962141965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g141963141967%_)
                     (cons _%g141962141965%_ _%g141963141967%_))))
              (declare (not safe))
              (__foldr1 __tmp144853 '() _%L141918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp144854 __tmp144852))
                                     (let ((__tmp144858
                                            (let ((__tmp144859
                                                   (lambda (_%g141969141972%_
                                                            _%g141970141974%_)
                                                     (cons _%g141969141972%_
                                                           _%g141970141974%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp144859
                                               '()
                                               _%L141920%_)))
                                           (__tmp144856
                                            (let ((__tmp144857
                                                   (lambda (_%g141976141979%_
                                                            _%g141977141981%_)
                                                     (cons _%g141976141979%_
                                                           _%g141977141981%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp144857
                                               '()
                                               _%L141918%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp144858
                                        __tmp144856))
                                     (not (let ((__tmp144862
                                                 (lambda (_%g141983141985%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g141983141985%_
                                                      _%L141919%_))))
                                                (__tmp144860
                                                 (let ((__tmp144861
                                                        (lambda (_%g141987141990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g141988141992%_)
                  (cons _%g141987141990%_ _%g141988141992%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp144861
                                                    '()
                                                    _%L141920%_))))
                                            (declare (not safe))
                                            (__find __tmp144862 __tmp144860))))
                                (_%__kont143555143556%_
                                 _%L141918%_
                                 _%L141919%_
                                 _%L141920%_)
                                (_%__match143596143597%_
                                 _%e141243141806%_
                                 _%hd141242141809%_
                                 _%tl141241141811%_
                                 _%__splice143557143558%_
                                 _%target141244141814%_
                                 _%tl141246141816%_)))
                          (_%__match143596143597%_
                           _%e141243141806%_
                           _%hd141242141809%_
                           _%tl141241141811%_
                           _%__splice143557143558%_
                           _%target141244141814%_
                           _%tl141246141816%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop141271141883%_
                                               _%target141268141878%_
                                               '()))
                                            (_%__match143596143597%_
                                             _%e141243141806%_
                                             _%hd141242141809%_
                                             _%tl141241141811%_
                                             _%__splice143557143558%_
                                             _%target141244141814%_
                                             _%tl141246141816%_))))
                                    (_%__match143596143597%_
                                     _%e141243141806%_
                                     _%hd141242141809%_
                                     _%tl141241141811%_
                                     _%__splice143557143558%_
                                     _%target141244141814%_
                                     _%tl141246141816%_))
                                (_%__match143596143597%_
                                 _%e141243141806%_
                                 _%hd141242141809%_
                                 _%tl141241141811%_
                                 _%__splice143557143558%_
                                 _%target141244141814%_
                                 _%tl141246141816%_))))
                        (_%__match143596143597%_
                         _%e141243141806%_
                         _%hd141242141809%_
                         _%tl141241141811%_
                         _%__splice143557143558%_
                         _%target141244141814%_
                         _%tl141246141816%_))
                    (_%__match143596143597%_
                     _%e141243141806%_
                     _%hd141242141809%_
                     _%tl141241141811%_
                     _%__splice143557143558%_
                     _%target141244141814%_
                     _%tl141246141816%_))
                (_%__match143596143597%_
                 _%e141243141806%_
                 _%hd141242141809%_
                 _%tl141241141811%_
                 _%__splice143557143558%_
                 _%target141244141814%_
                 _%tl141246141816%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match143596143597%_
                                                 _%e141243141806%_
                                                 _%hd141242141809%_
                                                 _%tl141241141811%_
                                                 _%__splice143557143558%_
                                                 _%target141244141814%_
                                                 _%tl141246141816%_))))
                                        (_%__match143596143597%_
                                         _%e141243141806%_
                                         _%hd141242141809%_
                                         _%tl141241141811%_
                                         _%__splice143557143558%_
                                         _%target141244141814%_
                                         _%tl141246141816%_))
                                    (_%__match143596143597%_
                                     _%e141243141806%_
                                     _%hd141242141809%_
                                     _%tl141241141811%_
                                     _%__splice143557143558%_
                                     _%target141244141814%_
                                     _%tl141246141816%_))
                                (_%__match143596143597%_
                                 _%e141243141806%_
                                 _%hd141242141809%_
                                 _%tl141241141811%_
                                 _%__splice143557143558%_
                                 _%target141244141814%_
                                 _%tl141246141816%_))))
                        (_%__match143596143597%_
                         _%e141243141806%_
                         _%hd141242141809%_
                         _%tl141241141811%_
                         _%__splice143557143558%_
                         _%target141244141814%_
                         _%tl141246141816%_))))
                (_%__match143596143597%_
                 _%e141243141806%_
                 _%hd141242141809%_
                 _%tl141241141811%_
                 _%__splice143557143558%_
                 _%target141244141814%_
                 _%tl141246141816%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop141247141819%_
                                     _%target141244141814%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx143553143554%_))
                              (let ((_%e141243141806%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx143553143554%_))))
                                (let ((_%tl141241141811%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141243141806%_)))
                                      (_%hd141242141809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141243141806%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141242141809%_))
                                      (let ((_%__splice143557143558%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141242141809%_
                                                '0))))
                                        (let ((_%tl141246141816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143557143558%_
                                                  '1)))
                                              (_%target141244141814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143557143558%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141246141816%_))
                                              (_%__match143584143585%_
                                               _%e141243141806%_
                                               _%hd141242141809%_
                                               _%tl141241141811%_
                                               _%__splice143557143558%_
                                               _%target141244141814%_
                                               _%tl141246141816%_)
                                              (_%__match143596143597%_
                                               _%e141243141806%_
                                               _%hd141242141809%_
                                               _%tl141241141811%_
                                               _%__splice143557143558%_
                                               _%target141244141814%_
                                               _%tl141246141816%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141241141811%_))
                                          (let ((_%e141358141413%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141241141811%_))))
                                            (let ((_%tl141356141418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141358141413%_)))
                                                  (_%hd141357141416%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141358141413%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141357141416%_))
                                                  (let ((_%e141361141421%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141357141416%_))))
                                                    (let ((_%tl141359141426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141361141421%_)))
                                                          (_%hd141360141424%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141361141421%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141360141424%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141360141424%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141359141426%_))
                          (let ((_%e141364141429%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141359141426%_))))
                            (let ((_%tl141362141434%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141364141429%_)))
                                  (_%hd141363141432%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141364141429%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141363141432%_))
                                  (let ((_%e141367141437%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141363141432%_))))
                                    (let ((_%tl141365141442%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141367141437%_)))
                                          (_%hd141366141440%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141367141437%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141366141440%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141366141440%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141365141442%_))
                                                  (let ((_%e141370141445%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141365141442%_))))
                                                    (let ((_%tl141368141450%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141370141445%_)))
                                                          (_%hd141369141448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141370141445%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141368141450%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141362141434%_))
                      (let ((_%e141373141453%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141362141434%_))))
                        (let ((_%tl141371141458%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141373141453%_)))
                              (_%hd141372141456%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141373141453%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141372141456%_))
                              (let ((_%e141376141461%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141372141456%_))))
                                (let ((_%tl141374141466%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141376141461%_)))
                                      (_%hd141375141464%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141376141461%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141375141464%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141375141464%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141374141466%_))
                                              (let ((_%e141379141469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141374141466%_))))
                                                (let ((_%tl141377141474%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141379141469%_)))
                                                      (_%hd141378141472%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141379141469%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141377141474%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141371141458%_))
                                                          (let ((_%e141382141477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141371141458%_))))
                    (let ((_%tl141380141482%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141382141477%_)))
                          (_%hd141381141480%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141382141477%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd141381141480%_))
                          (let ((_%e141385141485%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd141381141480%_))))
                            (let ((_%tl141383141490%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141385141485%_)))
                                  (_%hd141384141488%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141385141485%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd141384141488%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd141384141488%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141383141490%_))
                                          (let ((_%e141388141493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141383141490%_))))
                                            (let ((_%tl141386141498%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141388141493%_)))
                                                  (_%hd141387141496%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141388141493%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141386141498%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141380141482%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141356141418%_))
                                                          (_%__match143694143695%_
                                                           _%e141243141806%_
                                                           _%hd141242141809%_
                                                           _%tl141241141811%_
                                                           _%e141358141413%_
                                                           _%hd141357141416%_
                                                           _%tl141356141418%_
                                                           _%e141361141421%_
                                                           _%hd141360141424%_
                                                           _%tl141359141426%_
                                                           _%e141364141429%_
                                                           _%hd141363141432%_
                                                           _%tl141362141434%_
                                                           _%e141367141437%_
                                                           _%hd141366141440%_
                                                           _%tl141365141442%_
                                                           _%e141370141445%_
                                                           _%hd141369141448%_
                                                           _%tl141368141450%_
                                                           _%e141373141453%_
                                                           _%hd141372141456%_
                                                           _%tl141371141458%_
                                                           _%e141376141461%_
                                                           _%hd141375141464%_
                                                           _%tl141374141466%_
                                                           _%e141379141469%_
                                                           _%hd141378141472%_
                                                           _%tl141377141474%_
                                                           _%e141382141477%_
                                                           _%hd141381141480%_
                                                           _%tl141380141482%_
                                                           _%e141385141485%_
                                                           _%hd141384141488%_
                                                           _%tl141383141490%_
                                                           _%e141388141493%_
                                                           _%hd141387141496%_
                                                           _%tl141386141498%_)
                                                          (_%__kont143569143570%_))
                                                      (_%__kont143569143570%_))
                                                  (_%__kont143569143570%_))))
                                          (_%__kont143569143570%_))
                                      (_%__kont143569143570%_))
                                  (_%__kont143569143570%_))))
                          (_%__kont143569143570%_))))
                  (_%__kont143569143570%_))
              (_%__kont143569143570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143569143570%_))
                                          (_%__kont143569143570%_))
                                      (_%__kont143569143570%_))))
                              (_%__kont143569143570%_))))
                      (_%__kont143569143570%_))
                  (_%__kont143569143570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143569143570%_))
                                              (_%__kont143569143570%_))
                                          (_%__kont143569143570%_))))
                                  (_%__kont143569143570%_))))
                          (_%__kont143569143570%_))
                      (_%__kont143569143570%_))
                  (_%__kont143569143570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143569143570%_))))
                                          (_%__kont143569143570%_)))))
                              (_%__kont143569143570%_)))))))
                 (_%dispatch-case-e140541%_
                  (lambda (_%hd140692%_ _%body140693%_)
                    (let* ((_%form140695%_
                            (cons _%hd140692%_ (cons _%body140693%_ '())))
                           (_%__stx143697143698%_ _%form140695%_)
                           (_%g140699140823%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx143697143698%_)))))
                      (let ((_%__kont143699143700%_
                             (lambda (_%L141194%_ _%L141195%_ _%L141196%_)
                               (let ((__tmp144863
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141195%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140537%_
                                  __tmp144863))))
                            (_%__kont143705143706%_
                             (lambda (_%L141042%_
                                      _%L141043%_
                                      _%L141044%_
                                      _%L141045%_)
                               (let ((__tmp144864
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141042%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140537%_
                                  __tmp144864))))
                            (_%__kont143709143710%_
                             (lambda (_%L140908%_ _%L140909%_ _%L140910%_)
                               (let ((__tmp144865
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L140908%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140537%_
                                  __tmp144865)))))
                        (let* ((_%__match143806143807%_
                                (lambda (_%e140791140828%_
                                         _%hd140790140831%_
                                         _%tl140789140833%_
                                         _%e140794140836%_
                                         _%hd140793140839%_
                                         _%tl140792140841%_
                                         _%e140797140844%_
                                         _%hd140796140847%_
                                         _%tl140795140849%_
                                         _%e140800140852%_
                                         _%hd140799140855%_
                                         _%tl140798140857%_
                                         _%e140803140860%_
                                         _%hd140802140863%_
                                         _%tl140801140865%_
                                         _%e140806140868%_
                                         _%hd140805140871%_
                                         _%tl140804140873%_
                                         _%e140809140876%_
                                         _%hd140808140879%_
                                         _%tl140807140881%_
                                         _%e140812140884%_
                                         _%hd140811140887%_
                                         _%tl140810140889%_
                                         _%e140815140892%_
                                         _%hd140814140895%_
                                         _%tl140813140897%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140807140881%_))
                                      (let ((_%e140818140900%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140807140881%_))))
                                        (let ((_%tl140816140905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140818140900%_)))
                                              (_%hd140817140903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140818140900%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140816140905%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl140792140841%_))
                                                  (_%__kont143709143710%_
                                                   _%hd140814140895%_
                                                   _%hd140805140871%_
                                                   _%hd140790140831%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140699140823%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g140699140823%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g140699140823%_)))))
                               (_%__match143736143737%_
                                (lambda (_%e140752140946%_
                                         _%hd140751140949%_
                                         _%tl140750140951%_
                                         _%__splice143707143708%_
                                         _%target140753140954%_
                                         _%tl140755140956%_)
                                  (letrec ((_%loop140756140959%_
                                            (lambda (_%hd140754140962%_
                                                     _%arg140760140964%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140754140962%_))
                                                  (let ((_%e140757140967%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140754140962%_))))
                                                    (let ((_%lp-tl140759140972%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140757140967%_)))
                                                          (_%lp-hd140758140970%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140757140967%_))))
                                                      (_%loop140756140959%_
                                                       _%lp-tl140759140972%_
                                                       (cons _%lp-hd140758140970%_
                                                             _%arg140760140964%_))))
                                                  (let ((_%arg140761140975%_
                                                         (reverse _%arg140760140964%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140750140951%_))
                                                        (let ((_%e140764140978%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl140750140951%_))))
                  (let ((_%tl140762140983%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140764140978%_)))
                        (_%hd140763140981%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140764140978%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140763140981%_))
                        (let ((_%e140767140986%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140763140981%_))))
                          (let ((_%tl140765140991%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140767140986%_)))
                                (_%hd140766140989%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140767140986%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd140766140989%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd140766140989%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140765140991%_))
                                        (let ((_%e140770140994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140765140991%_))))
                                          (let ((_%tl140768140999%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140770140994%_)))
                                                (_%hd140769140997%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140770140994%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140769140997%_))
                                                (let ((_%e140773141002%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140769140997%_))))
                                                  (let ((_%tl140771141007%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140773141002%_)))
                                                        (_%hd140772141005%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140773141002%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd140772141005%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd140772141005%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl140771141007%_))
                        (let ((_%e140776141010%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl140771141007%_))))
                          (let ((_%tl140774141015%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140776141010%_)))
                                (_%hd140775141013%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140776141010%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140774141015%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl140768140999%_))
                                    (let ((_%e140779141018%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl140768140999%_))))
                                      (let ((_%tl140777141023%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140779141018%_)))
                                            (_%hd140778141021%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140779141018%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd140778141021%_))
                                            (let ((_%e140782141026%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd140778141021%_))))
                                              (let ((_%tl140780141031%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e140782141026%_)))
                                                    (_%hd140781141029%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e140782141026%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd140781141029%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd140781141029%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl140780141031%_))
                                                            (let ((_%e140785141034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140780141031%_))))
                      (let ((_%tl140783141039%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140785141034%_)))
                            (_%hd140784141037%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140785141034%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140783141039%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140762140983%_))
                                (_%__kont143705143706%_
                                 _%hd140784141037%_
                                 _%hd140775141013%_
                                 _%tl140755140956%_
                                 _%arg140761140975%_)
                                (_%__match143806143807%_
                                 _%e140752140946%_
                                 _%hd140751140949%_
                                 _%tl140750140951%_
                                 _%e140764140978%_
                                 _%hd140763140981%_
                                 _%tl140762140983%_
                                 _%e140767140986%_
                                 _%hd140766140989%_
                                 _%tl140765140991%_
                                 _%e140770140994%_
                                 _%hd140769140997%_
                                 _%tl140768140999%_
                                 _%e140773141002%_
                                 _%hd140772141005%_
                                 _%tl140771141007%_
                                 _%e140776141010%_
                                 _%hd140775141013%_
                                 _%tl140774141015%_
                                 _%e140779141018%_
                                 _%hd140778141021%_
                                 _%tl140777141023%_
                                 _%e140782141026%_
                                 _%hd140781141029%_
                                 _%tl140780141031%_
                                 _%e140785141034%_
                                 _%hd140784141037%_
                                 _%tl140783141039%_))
                            (let ()
                              (declare (not safe))
                              (_%g140699140823%_)))))
                    (let () (declare (not safe)) (_%g140699140823%_)))
                (let () (declare (not safe)) (_%g140699140823%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g140699140823%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g140699140823%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g140699140823%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g140699140823%_)))))
                        (let () (declare (not safe)) (_%g140699140823%_)))
                    (let () (declare (not safe)) (_%g140699140823%_)))
                (let () (declare (not safe)) (_%g140699140823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140699140823%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140699140823%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g140699140823%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g140699140823%_)))))
                        (let () (declare (not safe)) (_%g140699140823%_)))))
                (let () (declare (not safe)) (_%g140699140823%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop140756140959%_
                                     _%target140753140954%_
                                     '()))))
                               (_%__match143724143725%_
                                (lambda (_%e140706141082%_
                                         _%hd140705141085%_
                                         _%tl140704141087%_
                                         _%__splice143701143702%_
                                         _%target140707141090%_
                                         _%tl140709141092%_)
                                  (letrec ((_%loop140710141095%_
                                            (lambda (_%hd140708141098%_
                                                     _%arg140714141100%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140708141098%_))
                                                  (let ((_%e140711141103%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140708141098%_))))
                                                    (let ((_%lp-tl140713141108%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140711141103%_)))
                                                          (_%lp-hd140712141106%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140711141103%_))))
                                                      (_%loop140710141095%_
                                                       _%lp-tl140713141108%_
                                                       (cons _%lp-hd140712141106%_
                                                             _%arg140714141100%_))))
                                                  (let ((_%arg140715141111%_
                                                         (reverse _%arg140714141100%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140704141087%_))
                                                        (let ((_%e140718141114%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl140704141087%_))))
                  (let ((_%tl140716141119%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140718141114%_)))
                        (_%hd140717141117%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140718141114%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140717141117%_))
                        (let ((_%e140721141122%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140717141117%_))))
                          (let ((_%tl140719141127%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140721141122%_)))
                                (_%hd140720141125%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140721141122%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd140720141125%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd140720141125%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140719141127%_))
                                        (let ((_%e140724141130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140719141127%_))))
                                          (let ((_%tl140722141135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140724141130%_)))
                                                (_%hd140723141133%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140724141130%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140723141133%_))
                                                (let ((_%e140727141138%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140723141133%_))))
                                                  (let ((_%tl140725141143%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140727141138%_)))
                                                        (_%hd140726141141%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140727141138%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd140726141141%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd140726141141%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl140725141143%_))
                        (let ((_%e140730141146%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl140725141143%_))))
                          (let ((_%tl140728141151%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140730141146%_)))
                                (_%hd140729141149%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140730141146%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140728141151%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl140722141135%_))
                                    (let ((_%__splice143703143704%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl140722141135%_
                                              '0))))
                                      (let ((_%tl140733141156%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143703143704%_
                                                '1)))
                                            (_%target140731141154%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143703143704%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl140733141156%_))
                                            (letrec ((_%loop140734141159%_
                                                      (lambda (_%hd140732141162%_
                                                               _%xarg140738141164%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd140732141162%_))
                                                            (let ((_%e140735141167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd140732141162%_))))
                      (let ((_%lp-tl140737141172%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140735141167%_)))
                            (_%lp-hd140736141170%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140735141167%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd140736141170%_))
                            (let ((_%e140742141175%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd140736141170%_))))
                              (let ((_%tl140740141180%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e140742141175%_)))
                                    (_%hd140741141178%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e140742141175%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd140741141178%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd140741141178%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl140740141180%_))
                                            (let ((_%e140745141183%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl140740141180%_))))
                                              (let ((_%tl140743141188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e140745141183%_)))
                                                    (_%hd140744141186%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e140745141183%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl140743141188%_))
                                                    (_%loop140734141159%_
                                                     _%lp-tl140737141172%_
                                                     (cons _%hd140744141186%_
                                                           _%xarg140738141164%_))
                                                    (_%__match143736143737%_
                                                     _%e140706141082%_
                                                     _%hd140705141085%_
                                                     _%tl140704141087%_
                                                     _%__splice143701143702%_
                                                     _%target140707141090%_
                                                     _%tl140709141092%_))))
                                            (_%__match143736143737%_
                                             _%e140706141082%_
                                             _%hd140705141085%_
                                             _%tl140704141087%_
                                             _%__splice143701143702%_
                                             _%target140707141090%_
                                             _%tl140709141092%_))
                                        (_%__match143736143737%_
                                         _%e140706141082%_
                                         _%hd140705141085%_
                                         _%tl140704141087%_
                                         _%__splice143701143702%_
                                         _%target140707141090%_
                                         _%tl140709141092%_))
                                    (_%__match143736143737%_
                                     _%e140706141082%_
                                     _%hd140705141085%_
                                     _%tl140704141087%_
                                     _%__splice143701143702%_
                                     _%target140707141090%_
                                     _%tl140709141092%_))))
                            (_%__match143736143737%_
                             _%e140706141082%_
                             _%hd140705141085%_
                             _%tl140704141087%_
                             _%__splice143701143702%_
                             _%target140707141090%_
                             _%tl140709141092%_))))
                    (let ((_%xarg140739141191%_
                           (reverse _%xarg140738141164%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl140716141119%_))
                          (_%__kont143699143700%_
                           _%xarg140739141191%_
                           _%hd140729141149%_
                           _%arg140715141111%_)
                          (_%__match143736143737%_
                           _%e140706141082%_
                           _%hd140705141085%_
                           _%tl140704141087%_
                           _%__splice143701143702%_
                           _%target140707141090%_
                           _%tl140709141092%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop140734141159%_
                                               _%target140731141154%_
                                               '()))
                                            (_%__match143736143737%_
                                             _%e140706141082%_
                                             _%hd140705141085%_
                                             _%tl140704141087%_
                                             _%__splice143701143702%_
                                             _%target140707141090%_
                                             _%tl140709141092%_))))
                                    (_%__match143736143737%_
                                     _%e140706141082%_
                                     _%hd140705141085%_
                                     _%tl140704141087%_
                                     _%__splice143701143702%_
                                     _%target140707141090%_
                                     _%tl140709141092%_))
                                (_%__match143736143737%_
                                 _%e140706141082%_
                                 _%hd140705141085%_
                                 _%tl140704141087%_
                                 _%__splice143701143702%_
                                 _%target140707141090%_
                                 _%tl140709141092%_))))
                        (_%__match143736143737%_
                         _%e140706141082%_
                         _%hd140705141085%_
                         _%tl140704141087%_
                         _%__splice143701143702%_
                         _%target140707141090%_
                         _%tl140709141092%_))
                    (_%__match143736143737%_
                     _%e140706141082%_
                     _%hd140705141085%_
                     _%tl140704141087%_
                     _%__splice143701143702%_
                     _%target140707141090%_
                     _%tl140709141092%_))
                (_%__match143736143737%_
                 _%e140706141082%_
                 _%hd140705141085%_
                 _%tl140704141087%_
                 _%__splice143701143702%_
                 _%target140707141090%_
                 _%tl140709141092%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match143736143737%_
                                                 _%e140706141082%_
                                                 _%hd140705141085%_
                                                 _%tl140704141087%_
                                                 _%__splice143701143702%_
                                                 _%target140707141090%_
                                                 _%tl140709141092%_))))
                                        (_%__match143736143737%_
                                         _%e140706141082%_
                                         _%hd140705141085%_
                                         _%tl140704141087%_
                                         _%__splice143701143702%_
                                         _%target140707141090%_
                                         _%tl140709141092%_))
                                    (_%__match143736143737%_
                                     _%e140706141082%_
                                     _%hd140705141085%_
                                     _%tl140704141087%_
                                     _%__splice143701143702%_
                                     _%target140707141090%_
                                     _%tl140709141092%_))
                                (_%__match143736143737%_
                                 _%e140706141082%_
                                 _%hd140705141085%_
                                 _%tl140704141087%_
                                 _%__splice143701143702%_
                                 _%target140707141090%_
                                 _%tl140709141092%_))))
                        (_%__match143736143737%_
                         _%e140706141082%_
                         _%hd140705141085%_
                         _%tl140704141087%_
                         _%__splice143701143702%_
                         _%target140707141090%_
                         _%tl140709141092%_))))
                (_%__match143736143737%_
                 _%e140706141082%_
                 _%hd140705141085%_
                 _%tl140704141087%_
                 _%__splice143701143702%_
                 _%target140707141090%_
                 _%tl140709141092%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop140710141095%_
                                     _%target140707141090%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx143697143698%_))
                              (let ((_%e140706141082%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx143697143698%_))))
                                (let ((_%tl140704141087%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140706141082%_)))
                                      (_%hd140705141085%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140706141082%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd140705141085%_))
                                      (let ((_%__splice143701143702%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd140705141085%_
                                                '0))))
                                        (let ((_%tl140709141092%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143701143702%_
                                                  '1)))
                                              (_%target140707141090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143701143702%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140709141092%_))
                                              (_%__match143724143725%_
                                               _%e140706141082%_
                                               _%hd140705141085%_
                                               _%tl140704141087%_
                                               _%__splice143701143702%_
                                               _%target140707141090%_
                                               _%tl140709141092%_)
                                              (_%__match143736143737%_
                                               _%e140706141082%_
                                               _%hd140705141085%_
                                               _%tl140704141087%_
                                               _%__splice143701143702%_
                                               _%target140707141090%_
                                               _%tl140709141092%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl140704141087%_))
                                          (let ((_%e140794140836%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl140704141087%_))))
                                            (let ((_%tl140792140841%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e140794140836%_)))
                                                  (_%hd140793140839%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e140794140836%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140793140839%_))
                                                  (let ((_%e140797140844%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140793140839%_))))
                                                    (let ((_%tl140795140849%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140797140844%_)))
                                                          (_%hd140796140847%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140797140844%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd140796140847%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd140796140847%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140795140849%_))
                          (let ((_%e140800140852%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140795140849%_))))
                            (let ((_%tl140798140857%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140800140852%_)))
                                  (_%hd140799140855%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140800140852%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd140799140855%_))
                                  (let ((_%e140803140860%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd140799140855%_))))
                                    (let ((_%tl140801140865%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140803140860%_)))
                                          (_%hd140802140863%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140803140860%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd140802140863%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd140802140863%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl140801140865%_))
                                                  (let ((_%e140806140868%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl140801140865%_))))
                                                    (let ((_%tl140804140873%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140806140868%_)))
                                                          (_%hd140805140871%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140806140868%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl140804140873%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl140798140857%_))
                      (let ((_%e140809140876%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl140798140857%_))))
                        (let ((_%tl140807140881%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140809140876%_)))
                              (_%hd140808140879%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140809140876%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd140808140879%_))
                              (let ((_%e140812140884%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd140808140879%_))))
                                (let ((_%tl140810140889%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140812140884%_)))
                                      (_%hd140811140887%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140812140884%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd140811140887%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd140811140887%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140810140889%_))
                                              (let ((_%e140815140892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140810140889%_))))
                                                (let ((_%tl140813140897%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140815140892%_)))
                                                      (_%hd140814140895%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140815140892%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl140813140897%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl140807140881%_))
                                                          (let ((_%e140818140900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl140807140881%_))))
                    (let ((_%tl140816140905%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140818140900%_)))
                          (_%hd140817140903%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140818140900%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl140816140905%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl140792140841%_))
                              (_%__kont143709143710%_
                               _%hd140814140895%_
                               _%hd140805140871%_
                               _%hd140705141085%_)
                              (let ()
                                (declare (not safe))
                                (_%g140699140823%_)))
                          (let () (declare (not safe)) (_%g140699140823%_)))))
                  (let () (declare (not safe)) (_%g140699140823%_)))
              (let () (declare (not safe)) (_%g140699140823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g140699140823%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140699140823%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g140699140823%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g140699140823%_)))))
                      (let () (declare (not safe)) (_%g140699140823%_)))
                  (let () (declare (not safe)) (_%g140699140823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140699140823%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g140699140823%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140699140823%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g140699140823%_)))))
                          (let () (declare (not safe)) (_%g140699140823%_)))
                      (let () (declare (not safe)) (_%g140699140823%_)))
                  (let () (declare (not safe)) (_%g140699140823%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140699140823%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140699140823%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g140699140823%_))))))))
                 (_%generate1140542%_
                  (lambda (_%args140677%_
                           _%arglen140678%_
                           _%hd140679%_
                           _%body140680%_)
                    (let* ((_%len140682%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd140679%_)))
                           (_%condition140687%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd140679%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen140678%_
                                                (cons _%len140682%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen140678%_ (cons _%len140682%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len140682%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen140678%_
                                                    (cons _%len140682%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen140678%_ (cons _%len140682%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch140689%_
                            (if (_%dispatch-case?140540%_
                                 _%hd140679%_
                                 _%body140680%_)
                                (_%dispatch-case-e140541%_
                                 _%hd140679%_
                                 _%body140680%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self140537%_
                                 _%hd140679%_
                                 _%body140680%_))))
                      (cons _%condition140687%_
                            (cons (cons 'apply
                                        (cons _%dispatch140689%_
                                              (cons _%args140677%_ '())))
                                  '()))))))
          (let* ((_%g140544140572%_
                  (lambda (_%g140545140569%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140545140569%_))))
                 (_%g140543140674%_
                  (lambda (_%g140545140575%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140545140575%_))
                        (let ((_%e140550140577%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140545140575%_))))
                          (let ((_%hd140549140580%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140550140577%_)))
                                (_%tl140548140582%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140550140577%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl140548140582%_))
                                (let ((_g144866_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl140548140582%_
                                          '0))))
                                  (begin
                                    (let ((_g144867_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144866_)
                                                 (##vector-length _g144866_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144867_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144867_)))
                                    (let ((_%target140551140585%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g144866_ 0)))
                                          (_%tl140553140587%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g144866_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140553140587%_))
                                          (letrec ((_%loop140554140590%_
                                                    (lambda (_%hd140552140593%_
                                                             _%body140558140595%_
                                                             _%hd140559140597%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd140552140593%_))
                                                          (let ((_%e140555140600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd140552140593%_))))
                    (let ((_%lp-hd140556140603%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140555140600%_)))
                          (_%lp-tl140557140605%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140555140600%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd140556140603%_))
                          (let ((_%e140564140608%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd140556140603%_))))
                            (let ((_%hd140563140611%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140564140608%_)))
                                  (_%tl140562140613%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140564140608%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl140562140613%_))
                                  (let ((_%e140567140616%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl140562140613%_))))
                                    (let ((_%hd140566140619%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140567140616%_)))
                                          (_%tl140565140621%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140567140616%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140565140621%_))
                                          (_%loop140554140590%_
                                           _%lp-tl140557140605%_
                                           (cons _%hd140566140619%_
                                                 _%body140558140595%_)
                                           (cons _%hd140563140611%_
                                                 _%hd140559140597%_))
                                          (_%g140544140572%_
                                           _%g140545140575%_))))
                                  (_%g140544140572%_ _%g140545140575%_))))
                          (_%g140544140572%_ _%g140545140575%_))))
                  (let ((_%body140560140624%_ (reverse _%body140558140595%_))
                        (_%hd140561140626%_ (reverse _%hd140559140597%_)))
                    ((lambda (_%L140629%_ _%L140630%_)
                       (let ((_%args140649%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen140650%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name140651%_
                              (let ((_%$e140646%_
                                     (let ((__tmp144868
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp144868 _%stx140538%_))))
                                (if _%$e140646%_
                                    _%$e140646%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args140649%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen140650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args140649%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args140649%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp144872
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name140651%_
                                                                (cons _%args140649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp144869
                                  (map (lambda (_%g140652140655%_
                                                _%g140653140657%_)
                                         (_%generate1140542%_
                                          _%args140649%_
                                          _%arglen140650%_
                                          _%g140652140655%_
                                          _%g140653140657%_))
                                       (let ((__tmp144870
                                              (lambda (_%g140659140662%_
                                                       _%g140660140664%_)
                                                (cons _%g140659140662%_
                                                      _%g140660140664%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp144870
                                          '()
                                          _%L140630%_))
                                       (let ((__tmp144871
                                              (lambda (_%g140666140669%_
                                                       _%g140667140671%_)
                                                (cons _%g140666140669%_
                                                      _%g140667140671%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp144871
                                          '()
                                          _%L140629%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp144872 __tmp144869)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body140560140624%_
                     _%hd140561140626%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop140554140590%_
                                             _%target140551140585%_
                                             '()
                                             '()))
                                          (_%g140544140572%_
                                           _%g140545140575%_)))))
                                (_%g140544140572%_ _%g140545140575%_))))
                        (_%g140544140572%_ _%g140545140575%_)))))
            (_%g140543140674%_ _%stx140538%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self139774%_ _%stx139775%_ _%compiled-body?139776%_)
        (letrec ((_%generate-simple139778%_
                  (lambda (_%hd140522%_ _%body140523%_)
                    (_%coalesce-boolean139779%_
                     (_%simplify-let139780%_
                      (gxc#generate-runtime-simple-let
                       _%self139774%_
                       'let
                       _%hd140522%_
                       _%body140523%_
                       _%compiled-body?139776%_)))))
                 (_%coalesce-boolean139779%_
                  (lambda (_%code140383%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code140384140410%_ _%code140383%_)
                               (_%else140386140418%_
                                (lambda () _%code140383%_))
                               (_%K140388140455%_
                                (lambda (_%expr2140421%_
                                         _%expr1140422%_
                                         _%id140423%_)
                                  (let* ((_%expr2140424140432%_
                                          _%expr2140421%_)
                                         (_%else140426140440%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1140422%_
                                                        (cons _%expr2140421%_
                                                              '())))))
                                         (_%K140428140445%_
                                          (lambda (_%exprs140443%_)
                                            (cons 'or
                                                  (cons _%expr1140422%_
                                                        _%exprs140443%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2140424140432%_))
                                        (let ((_%hd140429140448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2140424140432%_)))
                                              (_%tl140430140450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2140424140432%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140429140448%_ 'or))
                                              (let ((_%exprs140453%_
                                                     _%tl140430140450%_))
                                                (_%K140428140445%_
                                                 _%exprs140453%_))
                                              (_%else140426140440%_)))
                                        (_%else140426140440%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code140384140410%_))
                              (let ((_%hd140389140458%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code140384140410%_)))
                                    (_%tl140390140460%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code140384140410%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd140389140458%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl140390140460%_))
                                        (let ((_%hd140391140463%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl140390140460%_)))
                                              (_%tl140392140465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl140390140460%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd140391140463%_))
                                              (let ((_%hd140403140468%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd140391140463%_)))
                                                    (_%tl140404140470%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd140391140463%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd140403140468%_))
                                                    (let ((_%hd140405140473%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd140403140468%_)))
                                                          (_%tl140406140475%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd140403140468%_))))
                                                      (let ((_%id140478%_
                                                             _%hd140405140473%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl140406140475%_))
                                                            (let ((_%hd140407140480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl140406140475%_)))
                          (_%tl140408140482%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140406140475%_))))
                      (let ((_%expr1140485%_ _%hd140407140480%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl140408140482%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl140404140470%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140392140465%_))
                                    (let ((_%hd140393140487%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140392140465%_)))
                                          (_%tl140394140489%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140392140465%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd140393140487%_))
                                          (let ((_%hd140395140492%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd140393140487%_)))
                                                (_%tl140396140494%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd140393140487%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd140395140492%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140396140494%_))
                                                    (let ((_%hd140397140497%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140396140494%_)))
                                                          (_%tl140398140499%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140396140494%_))))
                                                      (if ((lambda (_%g140501140503%_)
                                                             (eq? _%g140501140503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id140478%_))
                   _%hd140397140497%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl140398140499%_))
                      (let ((_%hd140399140506%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl140398140499%_)))
                            (_%tl140400140508%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl140398140499%_))))
                        (if ((lambda (_%g140510140512%_)
                               (eq? _%g140510140512%_ _%id140478%_))
                             _%hd140399140506%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140400140508%_))
                                (let ((_%hd140401140515%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140400140508%_)))
                                      (_%tl140402140517%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140400140508%_))))
                                  (let ((_%expr2140520%_ _%hd140401140515%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl140402140517%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl140394140489%_))
                                            (_%K140388140455%_
                                             _%expr2140520%_
                                             _%expr1140485%_
                                             _%id140478%_)
                                            (_%else140386140418%_))
                                        (_%else140386140418%_))))
                                (_%else140386140418%_))
                            (_%else140386140418%_)))
                      (_%else140386140418%_))
                  (_%else140386140418%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140386140418%_))
                                                (_%else140386140418%_)))
                                          (_%else140386140418%_)))
                                    (_%else140386140418%_))
                                (_%else140386140418%_))
                            (_%else140386140418%_))))
                    (_%else140386140418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140386140418%_)))
                                              (_%else140386140418%_)))
                                        (_%else140386140418%_))
                                    (_%else140386140418%_)))
                              (_%else140386140418%_)))
                        _%code140383%_)))
                 (_%simplify-let139780%_
                  (lambda (_%code140082%_)
                    (let* ((_%code140083140155%_ _%code140082%_)
                           (_%else140088140163%_ (lambda () _%code140082%_)))
                      (let ((_%K140147140363%_
                             (lambda (_%expr140361%_) _%expr140361%_))
                            (_%K140130140309%_
                             (lambda (_%body140305%_
                                      _%expr140306%_
                                      _%id140307%_)
                               (cons 'let
                                     (cons (cons (cons _%id140307%_
                                                       (cons _%expr140306%_
                                                             '()))
                                                 '())
                                           _%body140305%_))))
                            (_%K140107140233%_
                             (lambda (_%body140227%_
                                      _%expr2140228%_
                                      _%id2140229%_
                                      _%expr1140230%_
                                      _%id1140231%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140231%_
                                                       (cons _%expr1140230%_
                                                             '()))
                                                 (cons (cons _%id2140229%_
                                                             (cons _%expr2140228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body140227%_))))
                            (_%K140090140172%_
                             (lambda (_%body140167%_
                                      _%bind140168%_
                                      _%expr1140169%_
                                      _%id1140170%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140170%_
                                                       (cons _%expr1140169%_
                                                             '()))
                                                 _%bind140168%_)
                                           _%body140167%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code140083140155%_))
                            (let ((_%tl140149140368%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code140083140155%_)))
                                  (_%hd140148140366%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code140083140155%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140148140366%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl140149140368%_))
                                      (let ((_%tl140151140373%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl140149140368%_)))
                                            (_%hd140150140371%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl140149140368%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd140150140371%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl140151140373%_))
                                                (let ((_%tl140153140378%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl140151140373%_)))
                                                      (_%hd140152140376%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl140151140373%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl140153140378%_))
                                                      (let ((_%expr140381%_
                                                             _%hd140152140376%_))
                                                        (_%K140147140363%_
                                                         _%expr140381%_))
                                                      (_%else140088140163%_)))
                                                (_%else140088140163%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd140150140371%_))
                                                (let ((_%tl140142140324%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd140150140371%_)))
                                                      (_%hd140141140322%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd140150140371%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd140141140322%_))
                                                      (let ((_%tl140144140329%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd140141140322%_)))
                    (_%hd140143140327%_
                     (let () (declare (not safe)) (##car _%hd140141140322%_))))
                (if (let () (declare (not safe)) (##pair? _%tl140144140329%_))
                    (let ((_%tl140146140336%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140144140329%_)))
                          (_%hd140145140334%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl140144140329%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl140146140336%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl140142140324%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl140151140373%_))
                                  (let ((_%tl140136140343%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl140151140373%_)))
                                        (_%hd140135140341%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl140151140373%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd140135140341%_))
                                        (let ((_%tl140138140348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd140135140341%_)))
                                              (_%hd140137140346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd140135140341%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140137140346%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl140138140348%_))
                                                  (let ((_%tl140140140353%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl140138140348%_)))
                                                        (_%hd140139140351%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl140138140348%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd140139140351%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl140136140343%_))
                                                            (let ((_%id140332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd140143140327%_)
                          (_%expr140339%_ _%hd140145140334%_)
                          (_%body140356%_ _%tl140140140353%_))
                      (_%K140130140309%_
                       _%body140356%_
                       _%expr140339%_
                       _%id140332%_))
                    (_%else140088140163%_))
                (if (let () (declare (not safe)) (##pair? _%hd140139140351%_))
                    (let ((_%tl140119140282%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd140139140351%_)))
                          (_%hd140118140280%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd140139140351%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd140118140280%_))
                          (let ((_%tl140121140287%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd140118140280%_)))
                                (_%hd140120140285%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd140118140280%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140121140287%_))
                                (let ((_%tl140123140294%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140121140287%_)))
                                      (_%hd140122140292%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140121140287%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140123140294%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140119140282%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl140136140343%_))
                                              (let ((_%id1140256%_
                                                     _%hd140143140327%_)
                                                    (_%expr1140263%_
                                                     _%hd140145140334%_)
                                                    (_%id2140290%_
                                                     _%hd140120140285%_)
                                                    (_%expr2140297%_
                                                     _%hd140122140292%_)
                                                    (_%body140299%_
                                                     _%tl140140140353%_))
                                                (_%K140107140233%_
                                                 _%body140299%_
                                                 _%expr2140297%_
                                                 _%id2140290%_
                                                 _%expr1140263%_
                                                 _%id1140256%_))
                                              (_%else140088140163%_))
                                          (_%else140088140163%_))
                                      (_%else140088140163%_)))
                                (_%else140088140163%_)))
                          (_%else140088140163%_)))
                    (_%else140088140163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else140088140163%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd140137140346%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl140138140348%_))
                                                      (let ((_%tl140100140216%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl140138140348%_)))
                    (_%hd140099140214%_
                     (let () (declare (not safe)) (##car _%tl140138140348%_))))
                (if (let () (declare (not safe)) (##null? _%tl140136140343%_))
                    (let ((_%id1140195%_ _%hd140143140327%_)
                          (_%expr1140202%_ _%hd140145140334%_)
                          (_%bind140219%_ _%hd140099140214%_)
                          (_%body140221%_ _%tl140100140216%_))
                      (_%K140090140172%_
                       _%body140221%_
                       _%bind140219%_
                       _%expr1140202%_
                       _%id1140195%_))
                    (_%else140088140163%_)))
              (_%else140088140163%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else140088140163%_))))
                                        (_%else140088140163%_)))
                                  (_%else140088140163%_))
                              (_%else140088140163%_))
                          (_%else140088140163%_)))
                    (_%else140088140163%_)))
              (_%else140088140163%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else140088140163%_))))
                                      (_%else140088140163%_))
                                  (_%else140088140163%_)))
                            (_%else140088140163%_))))))
                 (_%generate-values139781%_
                  (lambda (_%hd139895%_ _%body139896%_)
                    (let _%lp139898%_ ((_%rest139900%_ _%hd139895%_)
                                       (_%bind139901%_ '())
                                       (_%check139902%_ '())
                                       (_%post139903%_ '()))
                      (let* ((_%__stx144026144027%_ _%rest139900%_)
                             (_%g139906139917%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144026144027%_)))))
                        (let ((_%__kont144028144029%_
                               (lambda (_%L139944%_ _%L139945%_)
                                 (let* ((_%__stx143982143983%_ _%L139945%_)
                                        (_%g139960139985%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx143982143983%_)))))
                                   (let ((_%__kont143984143985%_
                                          (lambda (_%L140058%_ _%L140059%_)
                                            (let ((_%eid140073%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140059%_)))
                                                  (_%expr140074%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139774%_
                                                      _%L140058%_))))
                                              (_%lp139898%_
                                               _%L139944%_
                                               (cons (cons _%eid140073%_
                                                           (cons _%expr140074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind139901%_)
                                               _%check139902%_
                                               _%post139903%_))))
                                         (_%__kont143986143987%_
                                          (lambda (_%L140006%_ _%L140007%_)
                                            (let* ((_%vals140020%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140022%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals140020%_
                                                     _%L140007%_
                                                     _%L140006%_))
                                                   (_%refs140024%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals140020%_
                                                     _%L140007%_))
                                                   (_%expr140026%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self139774%_
                                                       _%L140006%_))))
                                              (_%lp139898%_
                                               _%L139944%_
                                               (cons (cons _%vals140020%_
                                                           (cons _%expr140026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind139901%_)
                                               (cons _%check-values140022%_
                                                     _%check139902%_)
                                               (cons _%refs140024%_
                                                     _%post139903%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx143982143983%_))
                                         (let ((_%e139966140034%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx143982143983%_))))
                                           (let ((_%tl139964140039%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139966140034%_)))
                                                 (_%hd139965140037%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139966140034%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd139965140037%_))
                                                 (let ((_%e139969140042%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd139965140037%_))))
                                                   (let ((_%tl139967140047%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139969140042%_)))
                                                         (_%hd139968140045%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139969140042%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139967140047%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139964140039%_))
                     (let ((_%e139972140050%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139964140039%_))))
                       (let ((_%tl139970140055%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139972140050%_)))
                             (_%hd139971140053%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139972140050%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139970140055%_))
                             (_%__kont143984143985%_
                              _%hd139971140053%_
                              _%hd139968140045%_)
                             (let ()
                               (declare (not safe))
                               (_%g139960139985%_)))))
                     (let () (declare (not safe)) (_%g139960139985%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl139964140039%_))
                     (let ((_%e139980139998%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139964140039%_))))
                       (let ((_%tl139978140003%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139980139998%_)))
                             (_%hd139979140001%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139980139998%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139978140003%_))
                             (_%__kont143986143987%_
                              _%hd139979140001%_
                              _%hd139965140037%_)
                             (let ()
                               (declare (not safe))
                               (_%g139960139985%_)))))
                     (let () (declare (not safe)) (_%g139960139985%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139964140039%_))
                                                     (let ((_%e139980139998%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139964140039%_))))
                                                       (let ((_%tl139978140003%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139980139998%_)))
                     (_%hd139979140001%_
                      (let () (declare (not safe)) (##car _%e139980139998%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139978140003%_))
                     (_%__kont143986143987%_
                      _%hd139979140001%_
                      _%hd139965140037%_)
                     (let () (declare (not safe)) (_%g139960139985%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g139960139985%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g139960139985%_)))))))
                              (_%__kont144030144031%_
                               (lambda ()
                                 (let* ((_%body139924%_
                                         (if _%compiled-body?139776%_
                                             _%body139896%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self139774%_
                                                _%body139896%_))))
                                        (_%body139926%_
                                         (_%generate-values-post139782%_
                                          _%post139903%_
                                          _%body139924%_))
                                        (_%body139928%_
                                         (_%generate-values-check139783%_
                                          _%check139902%_
                                          _%body139926%_)))
                                   (cons 'let
                                         (cons (reverse _%bind139901%_)
                                               (cons _%body139928%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144026144027%_))
                              (let ((_%e139912139936%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144026144027%_))))
                                (let ((_%tl139910139941%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139912139936%_)))
                                      (_%hd139911139939%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139912139936%_))))
                                  (_%__kont144028144029%_
                                   _%tl139910139941%_
                                   _%hd139911139939%_)))
                              (_%__kont144030144031%_)))))))
                 (_%generate-values-post139782%_
                  (lambda (_%post139854%_ _%body139855%_)
                    (let _%lp139857%_ ((_%rest139859%_ _%post139854%_)
                                       (_%body139860%_ _%body139855%_))
                      (let* ((_%rest139861139869%_ _%rest139859%_)
                             (_%else139863139877%_ (lambda () _%body139860%_))
                             (_%K139865139883%_
                              (lambda (_%rest139880%_ _%bind139881%_)
                                (_%lp139857%_
                                 _%rest139880%_
                                 (cons 'let
                                       (cons _%bind139881%_
                                             (cons _%body139860%_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139861139869%_))
                            (let ((_%hd139866139886%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139861139869%_)))
                                  (_%tl139867139888%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139861139869%_))))
                              (let* ((_%bind139891%_ _%hd139866139886%_)
                                     (_%rest139893%_ _%tl139867139888%_))
                                (_%K139865139883%_
                                 _%rest139893%_
                                 _%bind139891%_)))
                            (_%else139863139877%_))))))
                 (_%generate-values-check139783%_
                  (lambda (_%check139851%_ _%body139852%_)
                    (cons 'begin
                          (let ((__tmp144874 (cons _%body139852%_ '()))
                                (__tmp144873 (reverse _%check139851%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp144874 __tmp144873))))))
          (let* ((_%g139785139802%_
                  (lambda (_%g139786139799%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139786139799%_))))
                 (_%g139784139848%_
                  (lambda (_%g139786139805%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139786139805%_))
                        (let ((_%e139791139807%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139786139805%_))))
                          (let ((_%hd139790139810%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139791139807%_)))
                                (_%tl139789139812%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139791139807%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139789139812%_))
                                (let ((_%e139794139815%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139789139812%_))))
                                  (let ((_%hd139793139818%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139794139815%_)))
                                        (_%tl139792139820%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139794139815%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139792139820%_))
                                        (let ((_%e139797139823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139792139820%_))))
                                          (let ((_%hd139796139826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139797139823%_)))
                                                (_%tl139795139828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139797139823%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139795139828%_))
                                                ((lambda (_%L139831%_
                                                          _%L139832%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L139832%_)
                                                       (_%generate-simple139778%_
                                                        _%L139832%_
                                                        _%L139831%_)
                                                       (_%generate-values139781%_
                                                        _%L139832%_
                                                        _%L139831%_)))
                                                 _%hd139796139826%_
                                                 _%hd139793139818%_)
                                                (_%g139785139802%_
                                                 _%g139786139805%_))))
                                        (_%g139785139802%_
                                         _%g139786139805%_))))
                                (_%g139785139802%_ _%g139786139805%_))))
                        (_%g139785139802%_ _%g139786139805%_)))))
            (_%g139784139848%_ _%stx139775%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self140528%_ _%stx140529%_)
        (let ((_%compiled-body?140531%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self140528%_
           _%stx140529%_
           _%compiled-body?140531%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g144876_
        (let ((_g144875_ (let () (declare (not safe)) (##length _g144876_))))
          (cond ((let () (declare (not safe)) (##fx= _g144875_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g144876_))
                ((let () (declare (not safe)) (##fx= _g144875_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g144876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g144876_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals139668%_ _%hd139669%_)
        (let _%lp139671%_ ((_%rest139673%_ _%hd139669%_)
                           (_%k139674%_ '0)
                           (_%r139675%_ '()))
          (let* ((_%__stx144040144041%_ _%rest139673%_)
                 (_%g139680139697%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx144040144041%_)))))
            (let ((_%__kont144042144043%_
                   (lambda (_%L139760%_)
                     (_%lp139671%_
                      _%L139760%_
                      (let () (declare (not safe)) (##fx+ _%k139674%_ '1))
                      _%r139675%_)))
                  (_%__kont144044144045%_
                   (lambda (_%L139733%_ _%L139734%_)
                     (_%lp139671%_
                      _%L139733%_
                      (let () (declare (not safe)) (##fx+ _%k139674%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L139734%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals139668%_
                                         _%k139674%_
                                         _%L139733%_)
                                        '()))
                            _%r139675%_))))
                  (_%__kont144046144047%_
                   (lambda (_%L139709%_)
                     (let ((__tmp144877
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L139709%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals139668%_
                                               _%k139674%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp144877 _%r139675%_))))
                  (_%__kont144048144049%_ (lambda () (reverse _%r139675%_))))
              (let ((_%g139678139720%_
                     (lambda ()
                       (let ((_%L139709%_ _%__stx144040144041%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L139709%_))
                             (_%__kont144046144047%_ _%L139709%_)
                             (_%__kont144048144049%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx144040144041%_))
                    (let ((_%e139685139749%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx144040144041%_))))
                      (let ((_%tl139683139754%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139685139749%_)))
                            (_%hd139684139752%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139685139749%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd139684139752%_))
                            (let ((_%e139686139757%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd139684139752%_))))
                              (if (equal? _%e139686139757%_ '#f)
                                  (_%__kont144042144043%_ _%tl139683139754%_)
                                  (_%__kont144044144045%_
                                   _%tl139683139754%_
                                   _%hd139684139752%_)))
                            (_%__kont144044144045%_
                             _%tl139683139754%_
                             _%hd139684139752%_))))
                    (let () (declare (not safe)) (_%g139678139720%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self139347%_ _%stx139348%_ _%compiled-body?139349%_)
        (letrec ((_%generate-simple139351%_
                  (lambda (_%hd139653%_ _%body139654%_)
                    (gxc#generate-runtime-simple-let
                     _%self139347%_
                     'letrec
                     _%hd139653%_
                     _%body139654%_
                     _%compiled-body?139349%_)))
                 (_%generate-values139352%_
                  (lambda (_%hd139432%_ _%body139433%_)
                    (let _%lp139435%_ ((_%rest139437%_ _%hd139432%_)
                                       (_%bind139438%_ '())
                                       (_%check139439%_ '())
                                       (_%post139440%_ '()))
                      (let* ((_%__stx144114144115%_ _%rest139437%_)
                             (_%g139443139454%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144114144115%_)))))
                        (let ((_%__kont144116144117%_
                               (lambda (_%L139481%_ _%L139482%_)
                                 (let* ((_%__stx144070144071%_ _%L139482%_)
                                        (_%g139497139522%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144070144071%_)))))
                                   (let ((_%__kont144072144073%_
                                          (lambda (_%L139629%_ _%L139630%_)
                                            (let ((_%eid139644%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L139630%_)))
                                                  (_%expr139645%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139347%_
                                                      _%L139629%_))))
                                              (_%lp139435%_
                                               _%L139481%_
                                               (cons (cons _%eid139644%_
                                                           (cons _%expr139645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind139438%_)
                                               _%check139439%_
                                               _%post139440%_))))
                                         (_%__kont144074144075%_
                                          (lambda (_%L139543%_ _%L139544%_)
                                            (let* ((_%vals139557%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values139559%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals139557%_
                                                     _%L139544%_
                                                     _%L139543%_))
                                                   (_%refs139561%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals139557%_
                                                     _%L139544%_))
                                                   (_%expr139563%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self139347%_
                                                       _%L139543%_))))
                                              (_%lp139435%_
                                               _%L139481%_
                                               (let ((__tmp144879
                                                      (cons (cons _%vals139557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr139563%_ '()))
                    _%bind139438%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp144878
                                                      (map (lambda (_%e139565139567%_)
                                                             (let* ((_%g139569139578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e139565139567%_)
                            (_%E139571139582%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g139569139578%_
                                        '([eid _])))
                               '#!void))
                            (_%K139572139587%_
                             (lambda (_%eid139585%_)
                               (cons _%eid139585%_ (cons '#!void '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g139569139578%_))
                           (let ((_%hd139573139590%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g139569139578%_)))
                                 (_%tl139574139592%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g139569139578%_))))
                             (let ((_%eid139595%_ _%hd139573139590%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%tl139574139592%_))
                                   (let ((_%tl139576139597%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl139574139592%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _%tl139576139597%_))
                                         (_%K139572139587%_ _%eid139595%_)
                                         (_%E139571139582%_)))
                                   (_%E139571139582%_))))
                           (_%E139571139582%_))))
                   _%refs139561%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp144879
                                                  __tmp144878))
                                               (cons _%check-values139559%_
                                                     _%check139439%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs139561%_
                                                  _%post139440%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144070144071%_))
                                         (let ((_%e139503139605%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144070144071%_))))
                                           (let ((_%tl139501139610%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139503139605%_)))
                                                 (_%hd139502139608%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139503139605%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd139502139608%_))
                                                 (let ((_%e139506139613%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd139502139608%_))))
                                                   (let ((_%tl139504139618%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139506139613%_)))
                                                         (_%hd139505139616%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139506139613%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139504139618%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139501139610%_))
                     (let ((_%e139509139621%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139501139610%_))))
                       (let ((_%tl139507139626%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139509139621%_)))
                             (_%hd139508139624%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139509139621%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139507139626%_))
                             (_%__kont144072144073%_
                              _%hd139508139624%_
                              _%hd139505139616%_)
                             (let ()
                               (declare (not safe))
                               (_%g139497139522%_)))))
                     (let () (declare (not safe)) (_%g139497139522%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl139501139610%_))
                     (let ((_%e139517139535%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139501139610%_))))
                       (let ((_%tl139515139540%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139517139535%_)))
                             (_%hd139516139538%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139517139535%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139515139540%_))
                             (_%__kont144074144075%_
                              _%hd139516139538%_
                              _%hd139502139608%_)
                             (let ()
                               (declare (not safe))
                               (_%g139497139522%_)))))
                     (let () (declare (not safe)) (_%g139497139522%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139501139610%_))
                                                     (let ((_%e139517139535%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139501139610%_))))
                                                       (let ((_%tl139515139540%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139517139535%_)))
                     (_%hd139516139538%_
                      (let () (declare (not safe)) (##car _%e139517139535%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139515139540%_))
                     (_%__kont144074144075%_
                      _%hd139516139538%_
                      _%hd139502139608%_)
                     (let () (declare (not safe)) (_%g139497139522%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g139497139522%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g139497139522%_)))))))
                              (_%__kont144118144119%_
                               (lambda ()
                                 (let* ((_%body139461%_
                                         (if _%compiled-body?139349%_
                                             _%body139433%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self139347%_
                                                _%body139433%_))))
                                        (_%body139463%_
                                         (_%generate-values-post139354%_
                                          _%post139440%_
                                          _%body139461%_))
                                        (_%body139465%_
                                         (_%generate-values-check139353%_
                                          _%check139439%_
                                          _%body139463%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind139438%_)
                                               (cons _%body139465%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144114144115%_))
                              (let ((_%e139449139473%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144114144115%_))))
                                (let ((_%tl139447139478%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139449139473%_)))
                                      (_%hd139448139476%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139449139473%_))))
                                  (_%__kont144116144117%_
                                   _%tl139447139478%_
                                   _%hd139448139476%_)))
                              (_%__kont144118144119%_)))))))
                 (_%generate-values-check139353%_
                  (lambda (_%check139429%_ _%body139430%_)
                    (cons 'begin
                          (let ((__tmp144881 (cons _%body139430%_ '()))
                                (__tmp144880 (reverse _%check139429%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp144881 __tmp144880)))))
                 (_%generate-values-post139354%_
                  (lambda (_%post139422%_ _%body139423%_)
                    (cons 'begin
                          (let ((__tmp144885 (cons _%body139423%_ '()))
                                (__tmp144882
                                 (let ((__tmp144884
                                        (lambda (_%g139424139426%_)
                                          (cons 'set! _%g139424139426%_)))
                                       (__tmp144883 (reverse _%post139422%_)))
                                   (declare (not safe))
                                   (##map __tmp144884 __tmp144883))))
                            (declare (not safe))
                            (__foldr1 cons __tmp144885 __tmp144882))))))
          (let* ((_%g139356139373%_
                  (lambda (_%g139357139370%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139357139370%_))))
                 (_%g139355139419%_
                  (lambda (_%g139357139376%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139357139376%_))
                        (let ((_%e139362139378%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139357139376%_))))
                          (let ((_%hd139361139381%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139362139378%_)))
                                (_%tl139360139383%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139362139378%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139360139383%_))
                                (let ((_%e139365139386%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139360139383%_))))
                                  (let ((_%hd139364139389%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139365139386%_)))
                                        (_%tl139363139391%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139365139386%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139363139391%_))
                                        (let ((_%e139368139394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139363139391%_))))
                                          (let ((_%hd139367139397%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139368139394%_)))
                                                (_%tl139366139399%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139368139394%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139366139399%_))
                                                ((lambda (_%L139402%_
                                                          _%L139403%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L139403%_)
                                                       (_%generate-simple139351%_
                                                        _%L139403%_
                                                        _%L139402%_)
                                                       (_%generate-values139352%_
                                                        _%L139403%_
                                                        _%L139402%_)))
                                                 _%hd139367139397%_
                                                 _%hd139364139389%_)
                                                (_%g139356139373%_
                                                 _%g139357139376%_))))
                                        (_%g139356139373%_
                                         _%g139357139376%_))))
                                (_%g139356139373%_ _%g139357139376%_))))
                        (_%g139356139373%_ _%g139357139376%_)))))
            (_%g139355139419%_ _%stx139348%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self139659%_ _%stx139660%_)
        (let ((_%compiled-body?139662%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self139659%_
           _%stx139660%_
           _%compiled-body?139662%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g144887_
        (let ((_g144886_ (let () (declare (not safe)) (##length _g144887_))))
          (cond ((let () (declare (not safe)) (##fx= _g144886_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g144887_))
                ((let () (declare (not safe)) (##fx= _g144886_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g144887_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g144887_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self138928%_ _%stx138929%_)
        (letrec ((_%generate-values138931%_
                  (lambda (_%hd139174%_ _%body139175%_)
                    (let _%lp139177%_ ((_%rest139179%_ _%hd139174%_)
                                       (_%bind139180%_ '()))
                      (let* ((_%rest139181139189%_ _%rest139179%_)
                             (_%else139183139200%_
                              (lambda ()
                                (let ((_%bind139197%_ (reverse _%bind139180%_))
                                      (_%body139198%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self138928%_
                                          _%body139175%_))))
                                  (cons 'letrec*
                                        (cons _%bind139197%_
                                              (cons _%body139198%_ '()))))))
                             (_%K139185139334%_
                              (lambda (_%rest139203%_ _%hd-bind139204%_)
                                (let* ((_%__stx144128144129%_
                                        _%hd-bind139204%_)
                                       (_%g139207139232%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx144128144129%_)))))
                                  (let ((_%__kont144130144131%_
                                         (lambda (_%L139313%_ _%L139314%_)
                                           (let ((_%eid139328%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L139314%_)))
                                                 (_%expr139329%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self138928%_
                                                     _%L139313%_))))
                                             (_%lp139177%_
                                              _%rest139203%_
                                              (cons (cons _%eid139328%_
                                                          (cons _%expr139329%_
                                                                '()))
                                                    _%bind139180%_)))))
                                        (_%__kont144132144133%_
                                         (lambda (_%L139253%_ _%L139254%_)
                                           (let* ((_%vals139273%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp139275%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values139277%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp139275%_
                                                    _%L139254%_
                                                    _%L139253%_))
                                                  (_%refs139279%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals139273%_
                                                    _%L139254%_))
                                                  (_%expr139281%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self138928%_
                                                      _%L139253%_))))
                                             (_%lp139177%_
                                              _%rest139203%_
                                              (let ((__tmp144888
                                                     (cons (cons _%vals139273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp139275%_
                                                       (cons _%expr139281%_
                                                             '()))
                                                 '())
                                           (cons _%check-values139277%_
                                                 (cons _%tmp139275%_ '()))))
                               '()))
                   _%bind139180%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp144888
                                                 _%refs139279%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144128144129%_))
                                        (let ((_%e139213139289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144128144129%_))))
                                          (let ((_%tl139211139294%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139213139289%_)))
                                                (_%hd139212139292%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139213139289%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd139212139292%_))
                                                (let ((_%e139216139297%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd139212139292%_))))
                                                  (let ((_%tl139214139302%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139216139297%_)))
                                                        (_%hd139215139300%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139216139297%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139214139302%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl139211139294%_))
                                                            (let ((_%e139219139305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139211139294%_))))
                      (let ((_%tl139217139310%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139219139305%_)))
                            (_%hd139218139308%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139219139305%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139217139310%_))
                            (_%__kont144130144131%_
                             _%hd139218139308%_
                             _%hd139215139300%_)
                            (let ()
                              (declare (not safe))
                              (_%g139207139232%_)))))
                    (let () (declare (not safe)) (_%g139207139232%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl139211139294%_))
                    (let ((_%e139227139245%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139211139294%_))))
                      (let ((_%tl139225139250%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139227139245%_)))
                            (_%hd139226139248%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139227139245%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139225139250%_))
                            (_%__kont144132144133%_
                             _%hd139226139248%_
                             _%hd139212139292%_)
                            (let ()
                              (declare (not safe))
                              (_%g139207139232%_)))))
                    (let () (declare (not safe)) (_%g139207139232%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139211139294%_))
                                                    (let ((_%e139227139245%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139211139294%_))))
                                                      (let ((_%tl139225139250%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139227139245%_)))
                    (_%hd139226139248%_
                     (let () (declare (not safe)) (##car _%e139227139245%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139225139250%_))
                    (_%__kont144132144133%_
                     _%hd139226139248%_
                     _%hd139212139292%_)
                    (let () (declare (not safe)) (_%g139207139232%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g139207139232%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139207139232%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139181139189%_))
                            (let ((_%hd139186139337%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139181139189%_)))
                                  (_%tl139187139339%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139181139189%_))))
                              (let* ((_%hd-bind139342%_ _%hd139186139337%_)
                                     (_%rest139344%_ _%tl139187139339%_))
                                (_%K139185139334%_
                                 _%rest139344%_
                                 _%hd-bind139342%_)))
                            (_%else139183139200%_))))))
                 (_%generate-letrec?138932%_
                  (lambda (_%hd139064%_)
                    (let _%lp139066%_ ((_%rest139068%_ _%hd139064%_))
                      (let* ((_%rest139069139077%_ _%rest139068%_)
                             (_%else139071139085%_ (lambda () '#t))
                             (_%K139073139162%_
                              (lambda (_%rest139088%_ _%hd-bind139089%_)
                                (let* ((_%g139091139108%_
                                        (lambda (_%g139092139105%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g139092139105%_))))
                                       (_%g139090139159%_
                                        (lambda (_%g139092139111%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g139092139111%_))
                                              (let ((_%e139097139113%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g139092139111%_))))
                                                (let ((_%hd139096139116%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139097139113%_)))
                                                      (_%tl139095139118%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139097139113%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd139096139116%_))
                                                      (let ((_%e139100139121%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd139096139116%_))))
                (let ((_%hd139099139124%_
                       (let () (declare (not safe)) (##car _%e139100139121%_)))
                      (_%tl139098139126%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139100139121%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139098139126%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139095139118%_))
                          (let ((_%e139103139129%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139095139118%_))))
                            (let ((_%hd139102139132%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139103139129%_)))
                                  (_%tl139101139134%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139103139129%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl139101139134%_))
                                  ((lambda (_%L139137%_ _%L139138%_)
                                     (if (_%is-lambda-expr?138933%_
                                          _%L139137%_)
                                         (_%lp139066%_ _%rest139088%_)
                                         '#f))
                                   _%hd139102139132%_
                                   _%hd139099139124%_)
                                  (_%g139091139108%_ _%g139092139111%_))))
                          (_%g139091139108%_ _%g139092139111%_))
                      (_%g139091139108%_ _%g139092139111%_))))
              (_%g139091139108%_ _%g139092139111%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139091139108%_
                                               _%g139092139111%_)))))
                                  (_%g139090139159%_ _%hd-bind139089%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139069139077%_))
                            (let ((_%hd139074139165%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139069139077%_)))
                                  (_%tl139075139167%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139069139077%_))))
                              (let* ((_%hd-bind139170%_ _%hd139074139165%_)
                                     (_%rest139172%_ _%tl139075139167%_))
                                (_%K139073139162%_
                                 _%rest139172%_
                                 _%hd-bind139170%_)))
                            (_%else139071139085%_))))))
                 (_%is-lambda-expr?138933%_
                  (lambda (_%expr139001%_)
                    (let* ((_%__stx144172144173%_ _%expr139001%_)
                           (_%g139004139018%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144172144173%_)))))
                      (let ((_%__kont144174144175%_
                             (lambda (_%L139046%_ _%L139047%_) '#t))
                            (_%__kont144176144177%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx144172144173%_))
                            (let ((_%e139010139030%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx144172144173%_))))
                              (let ((_%tl139008139035%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139010139030%_)))
                                    (_%hd139009139033%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139010139030%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd139009139033%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd139009139033%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl139008139035%_))
                                            (let ((_%e139013139038%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl139008139035%_))))
                                              (let ((_%tl139011139043%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139013139038%_)))
                                                    (_%hd139012139041%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139013139038%_))))
                                                (_%__kont144174144175%_
                                                 _%tl139011139043%_
                                                 _%hd139012139041%_)))
                                            (_%__kont144176144177%_))
                                        (_%__kont144176144177%_))
                                    (_%__kont144176144177%_))))
                            (_%__kont144176144177%_)))))))
          (let* ((_%g138935138952%_
                  (lambda (_%g138936138949%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138936138949%_))))
                 (_%g138934138998%_
                  (lambda (_%g138936138955%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138936138955%_))
                        (let ((_%e138941138957%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138936138955%_))))
                          (let ((_%hd138940138960%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138941138957%_)))
                                (_%tl138939138962%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138941138957%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138939138962%_))
                                (let ((_%e138944138965%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138939138962%_))))
                                  (let ((_%hd138943138968%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138944138965%_)))
                                        (_%tl138942138970%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138944138965%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138942138970%_))
                                        (let ((_%e138947138973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138942138970%_))))
                                          (let ((_%hd138946138976%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138947138973%_)))
                                                (_%tl138945138978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138947138973%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl138945138978%_))
                                                ((lambda (_%L138981%_
                                                          _%L138982%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L138982%_)
                                                       (if (_%generate-letrec?138932%_
                                                            _%L138982%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self138928%_
                                                            'letrec
                                                            _%L138982%_
                                                            _%L138981%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self138928%_
                                                            'letrec*
                                                            _%L138982%_
                                                            _%L138981%_
                                                            '#f))
                                                       (_%generate-values138931%_
                                                        _%L138982%_
                                                        _%L138981%_)))
                                                 _%hd138946138976%_
                                                 _%hd138943138968%_)
                                                (_%g138935138952%_
                                                 _%g138936138955%_))))
                                        (_%g138935138952%_
                                         _%g138936138955%_))))
                                (_%g138935138952%_ _%g138936138955%_))))
                        (_%g138935138952%_ _%g138936138955%_)))))
            (_%g138934138998%_ _%stx138929%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd138865%_)
        (let _%lp138867%_ ((_%rest138869%_ _%hd138865%_))
          (let* ((_%rest138870138886%_ _%rest138869%_)
                 (_%else138873138894%_ (lambda () '#f)))
            (let ((_%K138876138907%_
                   (lambda (_%rest138905%_) (_%lp138867%_ _%rest138905%_)))
                  (_%K138875138899%_ (lambda () '#t)))
              (let ((_%try-match138872138902%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest138870138886%_))
                           (_%K138875138899%_)
                           (_%else138873138894%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest138870138886%_))
                    (let ((_%tl138878138912%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest138870138886%_)))
                          (_%hd138877138910%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest138870138886%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd138877138910%_))
                          (let ((_%tl138880138917%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd138877138910%_)))
                                (_%hd138879138915%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd138877138910%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd138879138915%_))
                                (let ((_%tl138884138920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd138879138915%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl138884138920%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl138880138917%_))
                                          (let ((_%tl138882138923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl138880138917%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl138882138923%_))
                                                (let ((_%rest138926%_
                                                       _%tl138878138912%_))
                                                  (_%lp138867%_
                                                   _%rest138926%_))
                                                (_%else138873138894%_)))
                                          (_%else138873138894%_))
                                      (_%else138873138894%_)))
                                (_%else138873138894%_)))
                          (_%else138873138894%_)))
                    (_%try-match138872138902%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self138776%_
               _%form138777%_
               _%hd138778%_
               _%body138779%_
               _%compiled-body?138780%_)
        (letrec ((_%generate1138782%_
                  (lambda (_%bind138821%_)
                    (let* ((_%bind138822138833%_ _%bind138821%_)
                           (_%E138824138837%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind138822138833%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K138825138843%_
                            (lambda (_%expr138840%_ _%id138841%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id138841%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self138776%_
                                             _%expr138840%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind138822138833%_))
                          (let ((_%hd138826138846%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind138822138833%_)))
                                (_%tl138827138848%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind138822138833%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd138826138846%_))
                                (let ((_%hd138830138851%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd138826138846%_)))
                                      (_%tl138831138853%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd138826138846%_))))
                                  (let ((_%id138856%_ _%hd138830138851%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl138831138853%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl138827138848%_))
                                            (let ((_%hd138828138858%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl138827138848%_)))
                                                  (_%tl138829138860%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl138827138848%_))))
                                              (let ((_%expr138863%_
                                                     _%hd138828138858%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl138829138860%_))
                                                    (_%K138825138843%_
                                                     _%expr138863%_
                                                     _%id138856%_)
                                                    (_%E138824138837%_))))
                                            (_%E138824138837%_))
                                        (_%E138824138837%_))))
                                (_%E138824138837%_)))
                          (_%E138824138837%_))))))
          (let* ((_%bind138784%_ (map _%generate1138782%_ _%hd138778%_))
                 (_%body138786%_
                  (if _%compiled-body?138780%_
                      _%body138779%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self138776%_ _%body138779%_))))
                 (_%body138818%_
                  (let* ((_%body138787138795%_ _%body138786%_)
                         (_%else138789138803%_
                          (lambda () (cons _%body138786%_ '())))
                         (_%K138791138808%_
                          (lambda (_%exprs138806%_) _%exprs138806%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body138787138795%_))
                        (let ((_%hd138792138811%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body138787138795%_)))
                              (_%tl138793138813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body138787138795%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd138792138811%_ 'begin))
                              (let ((_%exprs138816%_ _%tl138793138813%_))
                                (_%K138791138808%_ _%exprs138816%_))
                              (_%else138789138803%_)))
                        (_%else138789138803%_)))))
            (cons _%form138777%_ (cons _%bind138784%_ _%body138818%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self138676%_ _%stx138677%_)
        (letrec ((_%generate1138679%_
                  (lambda (_%datum138731%_)
                    (if (or (null? _%datum138731%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum138731%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum138731%_))
                            (eof-object? _%datum138731%_))
                        _%datum138731%_
                        (if (uninterned-symbol? _%datum138731%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum138731%_
                               '#t))
                            (if (pair? _%datum138731%_)
                                (cons (_%generate1138679%_
                                       (car _%datum138731%_))
                                      (_%generate1138679%_
                                       (cdr _%datum138731%_)))
                                (if (box? _%datum138731%_)
                                    (box (_%generate1138679%_
                                          (unbox _%datum138731%_)))
                                    (if (vector? _%datum138731%_)
                                        (vector-map
                                         _%generate1138679%_
                                         _%datum138731%_)
                                        (if (or (s8vector? _%datum138731%_)
                                                (u8vector? _%datum138731%_)
                                                (s16vector? _%datum138731%_)
                                                (u16vector? _%datum138731%_)
                                                (s32vector? _%datum138731%_)
                                                (u32vector? _%datum138731%_)
                                                (s64vector? _%datum138731%_)
                                                (u64vector? _%datum138731%_)
                                                (f32vector? _%datum138731%_)
                                                (f64vector? _%datum138731%_))
                                            _%datum138731%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx138677%_)))))))))))
          (let* ((_%g138681138694%_
                  (lambda (_%g138682138691%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138682138691%_))))
                 (_%g138680138728%_
                  (lambda (_%g138682138697%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138682138697%_))
                        (let ((_%e138686138699%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138682138697%_))))
                          (let ((_%hd138685138702%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138686138699%_)))
                                (_%tl138684138704%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138686138699%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138684138704%_))
                                (let ((_%e138689138707%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138684138704%_))))
                                  (let ((_%hd138688138710%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138689138707%_)))
                                        (_%tl138687138712%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138689138707%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138687138712%_))
                                        ((lambda (_%L138715%_)
                                           (cons 'quote
                                                 (cons (_%generate1138679%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L138715%_)))
                                                       '())))
                                         _%hd138688138710%_)
                                        (_%g138681138694%_
                                         _%g138682138697%_))))
                                (_%g138681138694%_ _%g138682138697%_))))
                        (_%g138681138694%_ _%g138682138697%_)))))
            (_%g138680138728%_ _%stx138677%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self138117%_ _%stx138118%_)
        (letrec ((_%compile-call138120%_
                  (lambda (_%rator138409%_ _%rands138410%_)
                    (let ((_%rator138416%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self138117%_
                              _%rator138409%_)))
                          (_%rands138417%_
                           (map (lambda (_%g138411138413%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self138117%_
                                     _%g138411138413%_)))
                                _%rands138410%_)))
                      (let* ((_%__stx144219144220%_ _%rator138416%_)
                             (_%g138420138472%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144219144220%_)))))
                        (let ((_%__kont144221144222%_
                               (lambda (_%L138596%_
                                        _%L138597%_
                                        _%L138598%_
                                        _%L138599%_)
                                 (if (let ((__tmp144891
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands138417%_)))
                                           (__tmp144889
                                            (length (let ((__tmp144890
                                                           (lambda (_%g138635138638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g138636138640%_)
                     (cons _%g138635138638%_ _%g138636138640%_))))
              (declare (not safe))
              (__foldr1 __tmp144890 '() _%L138598%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp144891 __tmp144889))
                                     (let* ((_%id138643%_ _%L138599%_)
                                            (_%args138652%_
                                             (let ((__tmp144892
                                                    (lambda (_%g138644138647%_
                                                             _%g138645138649%_)
                                                      (cons _%g138644138647%_
                                                            _%g138645138649%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp144892
                                                '()
                                                _%L138598%_)))
                                            (_%body138661%_
                                             (let ((__tmp144893
                                                    (lambda (_%g138653138656%_
                                                             _%g138654138658%_)
                                                      (cons _%g138653138656%_
                                                            _%g138654138658%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp144893
                                                '()
                                                _%L138597%_)))
                                            (_%init138663%_
                                             (map list
                                                  _%args138652%_
                                                  _%rands138417%_)))
                                       (cons 'let
                                             (cons _%id138643%_
                                                   (cons _%init138663%_
                                                         _%body138661%_))))
                                     (let ((__tmp144894
                                            (let ((__tmp144895
                                                   (lambda (_%g138665138668%_
                                                            _%g138666138670%_)
                                                     (cons _%g138665138668%_
                                                           _%g138666138670%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp144895
                                               '()
                                               _%L138598%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx138118%_
                                        __tmp144894
                                        _%rands138417%_)))))
                              (_%__kont144227144228%_
                               (lambda ()
                                 (cons _%rator138416%_ _%rands138417%_))))
                          (let ((_%__match144286144287%_
                                 (lambda (_%e138428138484%_
                                          _%hd138427138487%_
                                          _%tl138426138489%_
                                          _%e138431138492%_
                                          _%hd138430138495%_
                                          _%tl138429138497%_
                                          _%e138434138500%_
                                          _%hd138433138503%_
                                          _%tl138432138505%_
                                          _%e138437138508%_
                                          _%hd138436138511%_
                                          _%tl138435138513%_
                                          _%e138440138516%_
                                          _%hd138439138519%_
                                          _%tl138438138521%_
                                          _%e138443138524%_
                                          _%hd138442138527%_
                                          _%tl138441138529%_
                                          _%e138446138532%_
                                          _%hd138445138535%_
                                          _%tl138444138537%_
                                          _%__splice144223144224%_
                                          _%target138447138540%_
                                          _%tl138449138542%_)
                                   (letrec ((_%loop138450138545%_
                                             (lambda (_%hd138448138548%_
                                                      _%arg138454138550%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd138448138548%_))
                                                   (let ((_%e138451138553%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd138448138548%_))))
                                                     (let ((_%lp-tl138453138558%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e138451138553%_)))
                                                           (_%lp-hd138452138556%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e138451138553%_))))
                                                       (_%loop138450138545%_
                                                        _%lp-tl138453138558%_
                                                        (cons _%lp-hd138452138556%_
                                                              _%arg138454138550%_))))
                                                   (let ((_%arg138455138561%_
                                                          (reverse _%arg138454138550%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl138444138537%_))
                                                         (let ((_%__splice144225144226%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl138444138537%_ '0))))
                   (let ((_%tl138458138566%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144225144226%_ '1)))
                         (_%target138456138564%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144225144226%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl138458138566%_))
                         (letrec ((_%loop138459138569%_
                                   (lambda (_%hd138457138572%_
                                            _%body138463138574%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd138457138572%_))
                                         (let ((_%e138460138577%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd138457138572%_))))
                                           (let ((_%lp-tl138462138582%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e138460138577%_)))
                                                 (_%lp-hd138461138580%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e138460138577%_))))
                                             (_%loop138459138569%_
                                              _%lp-tl138462138582%_
                                              (cons _%lp-hd138461138580%_
                                                    _%body138463138574%_))))
                                         (let ((_%body138464138585%_
                                                (reverse _%body138463138574%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl138438138521%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl138432138505%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl138429138497%_))
                                                       (let ((_%e138467138588%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl138429138497%_))))
                 (let ((_%tl138465138593%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e138467138588%_)))
                       (_%hd138466138591%_
                        (let ()
                          (declare (not safe))
                          (##car _%e138467138588%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl138465138593%_))
                       (let ((_%L138596%_ _%hd138466138591%_)
                             (_%L138597%_ _%body138464138585%_)
                             (_%L138598%_ _%arg138455138561%_)
                             (_%L138599%_ _%hd138436138511%_))
                         (if (eq? _%L138599%_ _%L138596%_)
                             (_%__kont144221144222%_
                              _%L138596%_
                              _%L138597%_
                              _%L138598%_
                              _%L138599%_)
                             (_%__kont144227144228%_)))
                       (_%__kont144227144228%_))))
               (_%__kont144227144228%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144227144228%_))
                                               (_%__kont144227144228%_)))))))
                           (_%loop138459138569%_ _%target138456138564%_ '()))
                         (_%__kont144227144228%_))))
                 (_%__kont144227144228%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop138450138545%_
                                      _%target138447138540%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144219144220%_))
                                (let ((_%e138428138484%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144219144220%_))))
                                  (let ((_%tl138426138489%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138428138484%_)))
                                        (_%hd138427138487%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138428138484%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138427138487%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd138427138487%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138426138489%_))
                                                (let ((_%e138431138492%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138426138489%_))))
                                                  (let ((_%tl138429138497%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138431138492%_)))
                                                        (_%hd138430138495%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138431138492%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd138430138495%_))
                                                        (let ((_%e138434138500%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd138430138495%_))))
                  (let ((_%tl138432138505%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138434138500%_)))
                        (_%hd138433138503%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138434138500%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd138433138503%_))
                        (let ((_%e138437138508%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd138433138503%_))))
                          (let ((_%tl138435138513%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138437138508%_)))
                                (_%hd138436138511%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138437138508%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138435138513%_))
                                (let ((_%e138440138516%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138435138513%_))))
                                  (let ((_%tl138438138521%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138440138516%_)))
                                        (_%hd138439138519%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138440138516%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd138439138519%_))
                                        (let ((_%e138443138524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd138439138519%_))))
                                          (let ((_%tl138441138529%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138443138524%_)))
                                                (_%hd138442138527%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138443138524%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd138442138527%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd138442138527%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl138441138529%_))
                                                        (let ((_%e138446138532%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl138441138529%_))))
                  (let ((_%tl138444138537%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138446138532%_)))
                        (_%hd138445138535%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138446138532%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd138445138535%_))
                        (let ((_%__splice144223144224%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd138445138535%_
                                  '0))))
                          (let ((_%tl138449138542%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice144223144224%_ '1)))
                                (_%target138447138540%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice144223144224%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl138449138542%_))
                                (_%__match144286144287%_
                                 _%e138428138484%_
                                 _%hd138427138487%_
                                 _%tl138426138489%_
                                 _%e138431138492%_
                                 _%hd138430138495%_
                                 _%tl138429138497%_
                                 _%e138434138500%_
                                 _%hd138433138503%_
                                 _%tl138432138505%_
                                 _%e138437138508%_
                                 _%hd138436138511%_
                                 _%tl138435138513%_
                                 _%e138440138516%_
                                 _%hd138439138519%_
                                 _%tl138438138521%_
                                 _%e138443138524%_
                                 _%hd138442138527%_
                                 _%tl138441138529%_
                                 _%e138446138532%_
                                 _%hd138445138535%_
                                 _%tl138444138537%_
                                 _%__splice144223144224%_
                                 _%target138447138540%_
                                 _%tl138449138542%_)
                                (_%__kont144227144228%_))))
                        (_%__kont144227144228%_))))
                (_%__kont144227144228%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144227144228%_))
                                                (_%__kont144227144228%_))))
                                        (_%__kont144227144228%_))))
                                (_%__kont144227144228%_))))
                        (_%__kont144227144228%_))))
                (_%__kont144227144228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144227144228%_))
                                            (_%__kont144227144228%_))
                                        (_%__kont144227144228%_))))
                                (_%__kont144227144228%_)))))))))
          (let* ((_%g138122138145%_
                  (lambda (_%g138123138142%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138123138142%_))))
                 (_%g138121138406%_
                  (lambda (_%g138123138148%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138123138148%_))
                        (let ((_%e138128138150%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138123138148%_))))
                          (let ((_%hd138127138153%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138128138150%_)))
                                (_%tl138126138155%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138128138150%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138126138155%_))
                                (let ((_%e138131138158%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138126138155%_))))
                                  (let ((_%hd138130138161%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138131138158%_)))
                                        (_%tl138129138163%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138131138158%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl138129138163%_))
                                        (let ((_g144896_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl138129138163%_
                                                  '0))))
                                          (begin
                                            (let ((_g144897_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g144896_)
                                                         (##vector-length
                                                          _g144896_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g144897_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g144897_)))
                                            (let ((_%target138132138166%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g144896_
                                                      0)))
                                                  (_%tl138134138168%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g144896_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl138134138168%_))
                                                  (letrec ((_%loop138135138171%_
                                                            (lambda (_%hd138133138174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand138139138176%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd138133138174%_))
                          (let ((_%e138136138179%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd138133138174%_))))
                            (let ((_%lp-hd138137138182%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138136138179%_)))
                                  (_%lp-tl138138138184%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138136138179%_))))
                              (_%loop138135138171%_
                               _%lp-tl138138138184%_
                               (cons _%lp-hd138137138182%_
                                     _%rand138139138176%_))))
                          (let ((_%rand138140138187%_
                                 (reverse _%rand138139138176%_)))
                            ((lambda (_%L138190%_ _%L138191%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call138120%_
                                    _%L138191%_
                                    (let ((__tmp144898
                                           (lambda (_%g138208138211%_
                                                    _%g138209138213%_)
                                             (cons _%g138208138211%_
                                                   _%g138209138213%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp144898 '() _%L138190%_)))
                                   (let* ((_%__stx144335144336%_ _%L138191%_)
                                          (_%g138217138229%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx144335144336%_)))))
                                     (let ((_%__kont144337144338%_
                                            (lambda ()
                                              (let ((_%f138266%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138117%_
                                                        _%L138191%_))))
                                                (if (and (let ((__tmp144899
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f138266%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp144899))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f138266%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp138268%_ ((_%rest138271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp144901
                                                (lambda (_%g138388138391%_
                                                         _%g138389138393%_)
                                                  (cons _%g138388138391%_
                                                        _%g138389138393%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp144901
                                            '()
                                            _%L138190%_))))
                               (_%bind138273%_ '())
                               (_%args138274%_ '()))
              (let* ((_%rest138275138283%_ _%rest138271%_)
                     (_%else138277138291%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind138273%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f138266%_
                                                      _%args138274%_)
                                                '()))))))
                     (_%K138279138377%_
                      (lambda (_%rest138294%_ _%e138295%_)
                        (let* ((_%__stx144289144290%_ _%e138295%_)
                               (_%g138300138318%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx144289144290%_)))))
                          (let ((_%__kont144291144292%_
                                 (lambda ()
                                   (_%lp138268%_
                                    _%rest138294%_
                                    _%bind138273%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e138295%_))
                                          _%args138274%_))))
                                (_%__kont144293144294%_
                                 (lambda ()
                                   (_%lp138268%_
                                    _%rest138294%_
                                    _%bind138273%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e138295%_))
                                          _%args138274%_))))
                                (_%__kont144295144296%_
                                 (lambda ()
                                   (let ((_%tmp138325%_
                                          (let ((__tmp144900
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp144900))))
                                     (_%lp138268%_
                                      _%rest138294%_
                                      (cons (cons _%tmp138325%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e138295%_))
                                                        '()))
                                            _%bind138273%_)
                                      (cons _%tmp138325%_ _%args138274%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144289144290%_))
                                (let ((_%e138304138356%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144289144290%_))))
                                  (let ((_%tl138302138361%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138304138356%_)))
                                        (_%hd138303138359%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138304138356%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138303138359%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd138303138359%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138302138361%_))
                                                (let ((_%e138307138364%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138302138361%_))))
                                                  (let ((_%tl138305138369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138307138364%_)))
                                                        (_%hd138306138367%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138307138364%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138305138369%_))
                                                        (_%__kont144291144292%_)
                                                        (_%__kont144295144296%_))))
                                                (_%__kont144295144296%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd138303138359%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl138302138361%_))
                                                    (let ((_%e138313138341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl138302138361%_))))
                                                      (let ((_%tl138311138346%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e138313138341%_)))
                    (_%hd138312138344%_
                     (let () (declare (not safe)) (##car _%e138313138341%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl138311138346%_))
                    (_%__kont144293144294%_)
                    (_%__kont144295144296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144295144296%_))
                                                (_%__kont144295144296%_)))
                                        (_%__kont144295144296%_))))
                                (_%__kont144295144296%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest138275138283%_))
                    (let ((_%hd138280138380%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest138275138283%_)))
                          (_%tl138281138382%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest138275138283%_))))
                      (let* ((_%e138385%_ _%hd138280138380%_)
                             (_%rest138387%_ _%tl138281138382%_))
                        (_%K138279138377%_ _%rest138387%_ _%e138385%_)))
                    (_%else138277138291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call138120%_
                                                     _%L138191%_
                                                     (let ((__tmp144902
                                                            (lambda (_%g138395138398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g138396138400%_)
                      (cons _%g138395138398%_ _%g138396138400%_))))
               (declare (not safe))
               (__foldr1 __tmp144902 '() _%L138190%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont144339144340%_
                                            (lambda ()
                                              (_%compile-call138120%_
                                               _%L138191%_
                                               (let ((__tmp144903
                                                      (lambda (_%g138235138238%_
                                                               _%g138236138240%_)
                                                        (cons _%g138235138238%_
                                                              _%g138236138240%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp144903
                                                  '()
                                                  _%L138190%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx144335144336%_))
                                           (let ((_%e138221138248%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx144335144336%_))))
                                             (let ((_%tl138219138253%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138221138248%_)))
                                                   (_%hd138220138251%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138221138248%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138220138251%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd138220138251%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl138219138253%_))
                                                           (let ((_%e138224138256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl138219138253%_))))
                     (let ((_%tl138222138261%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e138224138256%_)))
                           (_%hd138223138259%_
                            (let ()
                              (declare (not safe))
                              (##car _%e138224138256%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl138222138261%_))
                           (_%__kont144337144338%_)
                           (_%__kont144339144340%_))))
                   (_%__kont144339144340%_))
               (_%__kont144339144340%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144339144340%_))))
                                           (_%__kont144339144340%_))))))
                             _%rand138140138187%_
                             _%hd138130138161%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop138135138171%_
                                                     _%target138132138166%_
                                                     '()))
                                                  (_%g138122138145%_
                                                   _%g138123138148%_)))))
                                        (_%g138122138145%_
                                         _%g138123138148%_))))
                                (_%g138122138145%_ _%g138123138148%_))))
                        (_%g138122138145%_ _%g138123138148%_)))))
            (_%g138121138406%_ _%stx138118%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self137860%_ _%stx137861%_)
        (let* ((_%__stx144407144408%_ _%stx137861%_)
               (_%g137864137893%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144407144408%_)))))
          (let ((_%__kont144409144410%_
                 (lambda (_%L137961%_ _%L137962%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self137860%_
                        _%stx137861%_)
                       (let ((_%f137984%_
                              (let ((__tmp144904
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L137962%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self137860%_
                                 __tmp144904))))
                         (let _%lp137986%_ ((_%rest137989%_
                                             (reverse (let ((__tmp144906
                                                             (lambda (_%g138106138109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g138107138111%_)
                       (cons _%g138106138109%_ _%g138107138111%_))))
                (declare (not safe))
                (__foldr1 __tmp144906 '() _%L137961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind137991%_ '())
                                            (_%args137992%_ '()))
                           (let* ((_%rest137993138001%_ _%rest137989%_)
                                  (_%else137995138009%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind137991%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f137984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args137992%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K137997138095%_
                                   (lambda (_%rest138012%_ _%e138013%_)
                                     (let* ((_%__stx144361144362%_ _%e138013%_)
                                            (_%g138018138036%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx144361144362%_)))))
                                       (let ((_%__kont144363144364%_
                                              (lambda ()
                                                (_%lp137986%_
                                                 _%rest138012%_
                                                 _%bind137991%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e138013%_))
                                                       _%args137992%_))))
                                             (_%__kont144365144366%_
                                              (lambda ()
                                                (_%lp137986%_
                                                 _%rest138012%_
                                                 _%bind137991%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e138013%_))
                                                       _%args137992%_))))
                                             (_%__kont144367144368%_
                                              (lambda ()
                                                (let ((_%tmp138043%_
                                                       (let ((__tmp144905
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp144905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp137986%_
                                                   _%rest138012%_
                                                   (cons (cons _%tmp138043%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e138013%_))
                             '()))
                 _%bind137991%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp138043%_
                                                         _%args137992%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx144361144362%_))
                                             (let ((_%e138022138074%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx144361144362%_))))
                                               (let ((_%tl138020138079%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e138022138074%_)))
                                                     (_%hd138021138077%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e138022138074%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd138021138077%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd138021138077%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138020138079%_))
                     (let ((_%e138025138082%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138020138079%_))))
                       (let ((_%tl138023138087%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138025138082%_)))
                             (_%hd138024138085%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138025138082%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138023138087%_))
                             (_%__kont144363144364%_)
                             (_%__kont144367144368%_))))
                     (_%__kont144367144368%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd138021138077%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138020138079%_))
                         (let ((_%e138031138059%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138020138079%_))))
                           (let ((_%tl138029138064%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138031138059%_)))
                                 (_%hd138030138062%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138031138059%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138029138064%_))
                                 (_%__kont144365144366%_)
                                 (_%__kont144367144368%_))))
                         (_%__kont144367144368%_))
                     (_%__kont144367144368%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144367144368%_))))
                                             (_%__kont144367144368%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest137993138001%_))
                                 (let ((_%hd137998138098%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest137993138001%_)))
                                       (_%tl137999138100%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest137993138001%_))))
                                   (let* ((_%e138103%_ _%hd137998138098%_)
                                          (_%rest138105%_ _%tl137999138100%_))
                                     (_%K137997138095%_
                                      _%rest138105%_
                                      _%e138103%_)))
                                 (_%else137995138009%_))))))))
                (_%__kont144413144414%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self137860%_ _%stx137861%_))))
            (let ((_%__match144452144453%_
                   (lambda (_%e137870137905%_
                            _%hd137869137908%_
                            _%tl137868137910%_
                            _%e137873137913%_
                            _%hd137872137916%_
                            _%tl137871137918%_
                            _%e137876137921%_
                            _%hd137875137924%_
                            _%tl137874137926%_
                            _%e137879137929%_
                            _%hd137878137932%_
                            _%tl137877137934%_
                            _%__splice144411144412%_
                            _%target137880137937%_
                            _%tl137882137939%_)
                     (letrec ((_%loop137883137942%_
                               (lambda (_%hd137881137945%_
                                        _%rand137887137947%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd137881137945%_))
                                     (let ((_%e137884137950%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd137881137945%_))))
                                       (let ((_%lp-tl137886137955%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e137884137950%_)))
                                             (_%lp-hd137885137953%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e137884137950%_))))
                                         (_%loop137883137942%_
                                          _%lp-tl137886137955%_
                                          (cons _%lp-hd137885137953%_
                                                _%rand137887137947%_))))
                                     (let ((_%rand137888137958%_
                                            (reverse _%rand137887137947%_)))
                                       (_%__kont144409144410%_
                                        _%rand137888137958%_
                                        _%hd137878137932%_))))))
                       (_%loop137883137942%_ _%target137880137937%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144407144408%_))
                  (let ((_%e137870137905%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144407144408%_))))
                    (let ((_%tl137868137910%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e137870137905%_)))
                          (_%hd137869137908%_
                           (let ()
                             (declare (not safe))
                             (##car _%e137870137905%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl137868137910%_))
                          (let ((_%e137873137913%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl137868137910%_))))
                            (let ((_%tl137871137918%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e137873137913%_)))
                                  (_%hd137872137916%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e137873137913%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd137872137916%_))
                                  (let ((_%e137876137921%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd137872137916%_))))
                                    (let ((_%tl137874137926%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137876137921%_)))
                                          (_%hd137875137924%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137876137921%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd137875137924%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd137875137924%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl137874137926%_))
                                                  (let ((_%e137879137929%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl137874137926%_))))
                                                    (let ((_%tl137877137934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e137879137929%_)))
                                                          (_%hd137878137932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e137879137929%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl137877137934%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl137871137918%_))
                      (let ((_%__splice144411144412%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl137871137918%_
                                '0))))
                        (let ((_%tl137882137939%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144411144412%_ '1)))
                              (_%target137880137937%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144411144412%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl137882137939%_))
                              (_%__match144452144453%_
                               _%e137870137905%_
                               _%hd137869137908%_
                               _%tl137868137910%_
                               _%e137873137913%_
                               _%hd137872137916%_
                               _%tl137871137918%_
                               _%e137876137921%_
                               _%hd137875137924%_
                               _%tl137874137926%_
                               _%e137879137929%_
                               _%hd137878137932%_
                               _%tl137877137934%_
                               _%__splice144411144412%_
                               _%target137880137937%_
                               _%tl137882137939%_)
                              (_%__kont144413144414%_))))
                      (_%__kont144413144414%_))
                  (_%__kont144413144414%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144413144414%_))
                                              (_%__kont144413144414%_))
                                          (_%__kont144413144414%_))))
                                  (_%__kont144413144414%_))))
                          (_%__kont144413144414%_))))
                  (_%__kont144413144414%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self137672%_ _%stx137673%_)
        (letrec ((_%simplify137675%_
                  (lambda (_%code137760%_)
                    (let* ((_%code137761137779%_ _%code137760%_)
                           (_%else137763137787%_ (lambda () _%code137760%_))
                           (_%K137765137823%_
                            (lambda (_%expr137790%_ _%test137791%_)
                              (let* ((_%expr137792137800%_ _%expr137790%_)
                                     (_%else137794137808%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test137791%_
                                                    (cons _%expr137790%_
                                                          '())))))
                                     (_%K137796137813%_
                                      (lambda (_%exprs137811%_)
                                        (cons 'and
                                              (cons _%test137791%_
                                                    _%exprs137811%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr137792137800%_))
                                    (let ((_%hd137797137816%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr137792137800%_)))
                                          (_%tl137798137818%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr137792137800%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd137797137816%_ 'and))
                                          (let ((_%exprs137821%_
                                                 _%tl137798137818%_))
                                            (_%K137796137813%_
                                             _%exprs137821%_))
                                          (_%else137794137808%_)))
                                    (_%else137794137808%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code137761137779%_))
                          (let ((_%hd137766137826%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code137761137779%_)))
                                (_%tl137767137828%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code137761137779%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd137766137826%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl137767137828%_))
                                    (let ((_%hd137768137831%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl137767137828%_)))
                                          (_%tl137769137833%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl137767137828%_))))
                                      (let ((_%test137836%_
                                             _%hd137768137831%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl137769137833%_))
                                            (let ((_%hd137770137838%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl137769137833%_)))
                                                  (_%tl137771137840%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl137769137833%_))))
                                              (let ((_%expr137843%_
                                                     _%hd137770137838%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl137771137840%_))
                                                    (let ((_%hd137772137845%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl137771137840%_)))
                                                          (_%tl137773137847%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl137771137840%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd137772137845%_))
                                                          (let ((_%hd137774137850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd137772137845%_)))
                        (_%tl137775137852%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd137772137845%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd137774137850%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl137775137852%_))
                            (let ((_%hd137776137855%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl137775137852%_)))
                                  (_%tl137777137857%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl137775137852%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd137776137855%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl137777137857%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl137773137847%_))
                                          (_%K137765137823%_
                                           _%expr137843%_
                                           _%test137836%_)
                                          (_%else137763137787%_))
                                      (_%else137763137787%_))
                                  (_%else137763137787%_)))
                            (_%else137763137787%_))
                        (_%else137763137787%_)))
                  (_%else137763137787%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else137763137787%_))))
                                            (_%else137763137787%_))))
                                    (_%else137763137787%_))
                                (_%else137763137787%_)))
                          (_%else137763137787%_))))))
          (let* ((_%g137677137698%_
                  (lambda (_%g137678137695%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137678137695%_))))
                 (_%g137676137757%_
                  (lambda (_%g137678137701%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137678137701%_))
                        (let ((_%e137684137703%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137678137701%_))))
                          (let ((_%hd137683137706%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137684137703%_)))
                                (_%tl137682137708%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137684137703%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137682137708%_))
                                (let ((_%e137687137711%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137682137708%_))))
                                  (let ((_%hd137686137714%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137687137711%_)))
                                        (_%tl137685137716%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137687137711%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137685137716%_))
                                        (let ((_%e137690137719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137685137716%_))))
                                          (let ((_%hd137689137722%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137690137719%_)))
                                                (_%tl137688137724%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137690137719%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl137688137724%_))
                                                (let ((_%e137693137727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl137688137724%_))))
                                                  (let ((_%hd137692137730%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e137693137727%_)))
                                                        (_%tl137691137732%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e137693137727%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl137691137732%_))
                                                        ((lambda (_%L137735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L137736%_
                          _%L137737%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify137675%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self137672%_
                                       _%L137737%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self137672%_
                                             _%L137736%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self137672%_
                                                   _%L137735%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp144907
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self137672%_
                                               _%L137737%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp144907
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137672%_
                                            _%L137736%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self137672%_
                                                  _%L137735%_))
                                               '()))))))
                 _%hd137692137730%_
                 _%hd137689137722%_
                 _%hd137686137714%_)
                (_%g137677137698%_ _%g137678137701%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g137677137698%_
                                                 _%g137678137701%_))))
                                        (_%g137677137698%_
                                         _%g137678137701%_))))
                                (_%g137677137698%_ _%g137678137701%_))))
                        (_%g137677137698%_ _%g137678137701%_)))))
            (_%g137676137757%_ _%stx137673%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self137620%_ _%stx137621%_)
        (let* ((_%g137623137636%_
                (lambda (_%g137624137633%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137624137633%_))))
               (_%g137622137669%_
                (lambda (_%g137624137639%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137624137639%_))
                      (let ((_%e137628137641%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137624137639%_))))
                        (let ((_%hd137627137644%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137628137641%_)))
                              (_%tl137626137646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137628137641%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137626137646%_))
                              (let ((_%e137631137649%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137626137646%_))))
                                (let ((_%hd137630137652%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137631137649%_)))
                                      (_%tl137629137654%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137631137649%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl137629137654%_))
                                      ((lambda (_%L137657%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L137657%_)))
                                       _%hd137630137652%_)
                                      (_%g137623137636%_ _%g137624137639%_))))
                              (_%g137623137636%_ _%g137624137639%_))))
                      (_%g137623137636%_ _%g137624137639%_)))))
          (_%g137622137669%_ _%stx137621%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self137552%_ _%stx137553%_)
        (let* ((_%g137555137572%_
                (lambda (_%g137556137569%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137556137569%_))))
               (_%g137554137617%_
                (lambda (_%g137556137575%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137556137575%_))
                      (let ((_%e137561137577%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137556137575%_))))
                        (let ((_%hd137560137580%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137561137577%_)))
                              (_%tl137559137582%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137561137577%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137559137582%_))
                              (let ((_%e137564137585%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137559137582%_))))
                                (let ((_%hd137563137588%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137564137585%_)))
                                      (_%tl137562137590%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137564137585%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137562137590%_))
                                      (let ((_%e137567137593%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137562137590%_))))
                                        (let ((_%hd137566137596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137567137593%_)))
                                              (_%tl137565137598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137567137593%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137565137598%_))
                                              ((lambda (_%L137601%_
                                                        _%L137602%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L137602%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self137552%_ _%L137601%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137566137596%_
                                               _%hd137563137588%_)
                                              (_%g137555137572%_
                                               _%g137556137575%_))))
                                      (_%g137555137572%_ _%g137556137575%_))))
                              (_%g137555137572%_ _%g137556137575%_))))
                      (_%g137555137572%_ _%g137556137575%_)))))
          (_%g137554137617%_ _%stx137553%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self137363%_ _%stx137364%_)
        (let* ((_%g137366137383%_
                (lambda (_%g137367137380%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137367137380%_))))
               (_%g137365137549%_
                (lambda (_%g137367137386%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137367137386%_))
                      (let ((_%e137372137388%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137367137386%_))))
                        (let ((_%hd137371137391%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137372137388%_)))
                              (_%tl137370137393%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137372137388%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137370137393%_))
                              (let ((_%e137375137396%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137370137393%_))))
                                (let ((_%hd137374137399%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137375137396%_)))
                                      (_%tl137373137401%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137375137396%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137373137401%_))
                                      (let ((_%e137378137404%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137373137401%_))))
                                        (let ((_%hd137377137407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137378137404%_)))
                                              (_%tl137376137409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137378137404%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137376137409%_))
                                              ((lambda (_%L137412%_
                                                        _%L137413%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137363%_ _%L137412%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137363%_ _%L137413%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137428%_ ((_%rest137431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137413%_ (cons _%L137412%_ '())))
                                (_%bind137433%_ '())
                                (_%args137434%_ '()))
               (let* ((_%rest137435137443%_ _%rest137431%_)
                      (_%else137437137451%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137433%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args137434%_)
                                                 '()))))))
                      (_%K137439137537%_
                       (lambda (_%rest137454%_ _%e137455%_)
                         (let* ((_%__stx144455144456%_ _%e137455%_)
                                (_%g137460137478%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144455144456%_)))))
                           (let ((_%__kont144457144458%_
                                  (lambda ()
                                    (_%lp137428%_
                                     _%rest137454%_
                                     _%bind137433%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137455%_))
                                           _%args137434%_))))
                                 (_%__kont144459144460%_
                                  (lambda ()
                                    (_%lp137428%_
                                     _%rest137454%_
                                     _%bind137433%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137455%_))
                                           _%args137434%_))))
                                 (_%__kont144461144462%_
                                  (lambda ()
                                    (let ((_%tmp137485%_
                                           (let ((__tmp144908
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp144908))))
                                      (_%lp137428%_
                                       _%rest137454%_
                                       (cons (cons _%tmp137485%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137455%_))
                                                         '()))
                                             _%bind137433%_)
                                       (cons _%tmp137485%_ _%args137434%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144455144456%_))
                                 (let ((_%e137464137516%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144455144456%_))))
                                   (let ((_%tl137462137521%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137464137516%_)))
                                         (_%hd137463137519%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137464137516%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137463137519%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137463137519%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137462137521%_))
                                                 (let ((_%e137467137524%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137462137521%_))))
                                                   (let ((_%tl137465137529%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137467137524%_)))
                                                         (_%hd137466137527%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137467137524%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137465137529%_))
                                                         (_%__kont144457144458%_)
                                                         (_%__kont144461144462%_))))
                                                 (_%__kont144461144462%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137463137519%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137462137521%_))
                                                     (let ((_%e137473137501%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137462137521%_))))
                                                       (let ((_%tl137471137506%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137473137501%_)))
                     (_%hd137472137504%_
                      (let () (declare (not safe)) (##car _%e137473137501%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137471137506%_))
                     (_%__kont144459144460%_)
                     (_%__kont144461144462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144461144462%_))
                                                 (_%__kont144461144462%_)))
                                         (_%__kont144461144462%_))))
                                 (_%__kont144461144462%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137435137443%_))
                     (let ((_%hd137440137540%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137435137443%_)))
                           (_%tl137441137542%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137435137443%_))))
                       (let* ((_%e137545%_ _%hd137440137540%_)
                              (_%rest137547%_ _%tl137441137542%_))
                         (_%K137439137537%_ _%rest137547%_ _%e137545%_)))
                     (_%else137437137451%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137377137407%_
                                               _%hd137374137399%_)
                                              (_%g137366137383%_
                                               _%g137367137386%_))))
                                      (_%g137366137383%_ _%g137367137386%_))))
                              (_%g137366137383%_ _%g137367137386%_))))
                      (_%g137366137383%_ _%g137367137386%_)))))
          (_%g137365137549%_ _%stx137364%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self137174%_ _%stx137175%_)
        (let* ((_%g137177137194%_
                (lambda (_%g137178137191%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137178137191%_))))
               (_%g137176137360%_
                (lambda (_%g137178137197%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137178137197%_))
                      (let ((_%e137183137199%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137178137197%_))))
                        (let ((_%hd137182137202%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137183137199%_)))
                              (_%tl137181137204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137183137199%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137181137204%_))
                              (let ((_%e137186137207%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137181137204%_))))
                                (let ((_%hd137185137210%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137186137207%_)))
                                      (_%tl137184137212%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137186137207%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137184137212%_))
                                      (let ((_%e137189137215%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137184137212%_))))
                                        (let ((_%hd137188137218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137189137215%_)))
                                              (_%tl137187137220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137189137215%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137187137220%_))
                                              ((lambda (_%L137223%_
                                                        _%L137224%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137174%_ _%L137223%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137174%_ _%L137224%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137239%_ ((_%rest137242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137224%_ (cons _%L137223%_ '())))
                                (_%bind137244%_ '())
                                (_%args137245%_ '()))
               (let* ((_%rest137246137254%_ _%rest137242%_)
                      (_%else137248137262%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137244%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args137245%_)
                                                 '()))))))
                      (_%K137250137348%_
                       (lambda (_%rest137265%_ _%e137266%_)
                         (let* ((_%__stx144501144502%_ _%e137266%_)
                                (_%g137271137289%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144501144502%_)))))
                           (let ((_%__kont144503144504%_
                                  (lambda ()
                                    (_%lp137239%_
                                     _%rest137265%_
                                     _%bind137244%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137266%_))
                                           _%args137245%_))))
                                 (_%__kont144505144506%_
                                  (lambda ()
                                    (_%lp137239%_
                                     _%rest137265%_
                                     _%bind137244%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137266%_))
                                           _%args137245%_))))
                                 (_%__kont144507144508%_
                                  (lambda ()
                                    (let ((_%tmp137296%_
                                           (let ((__tmp144909
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp144909))))
                                      (_%lp137239%_
                                       _%rest137265%_
                                       (cons (cons _%tmp137296%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137266%_))
                                                         '()))
                                             _%bind137244%_)
                                       (cons _%tmp137296%_ _%args137245%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144501144502%_))
                                 (let ((_%e137275137327%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144501144502%_))))
                                   (let ((_%tl137273137332%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137275137327%_)))
                                         (_%hd137274137330%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137275137327%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137274137330%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137274137330%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137273137332%_))
                                                 (let ((_%e137278137335%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137273137332%_))))
                                                   (let ((_%tl137276137340%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137278137335%_)))
                                                         (_%hd137277137338%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137278137335%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137276137340%_))
                                                         (_%__kont144503144504%_)
                                                         (_%__kont144507144508%_))))
                                                 (_%__kont144507144508%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137274137330%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137273137332%_))
                                                     (let ((_%e137284137312%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137273137332%_))))
                                                       (let ((_%tl137282137317%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137284137312%_)))
                     (_%hd137283137315%_
                      (let () (declare (not safe)) (##car _%e137284137312%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137282137317%_))
                     (_%__kont144505144506%_)
                     (_%__kont144507144508%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144507144508%_))
                                                 (_%__kont144507144508%_)))
                                         (_%__kont144507144508%_))))
                                 (_%__kont144507144508%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137246137254%_))
                     (let ((_%hd137251137351%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137246137254%_)))
                           (_%tl137252137353%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137246137254%_))))
                       (let* ((_%e137356%_ _%hd137251137351%_)
                              (_%rest137358%_ _%tl137252137353%_))
                         (_%K137250137348%_ _%rest137358%_ _%e137356%_)))
                     (_%else137248137262%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137188137218%_
                                               _%hd137185137210%_)
                                              (_%g137177137194%_
                                               _%g137178137197%_))))
                                      (_%g137177137194%_ _%g137178137197%_))))
                              (_%g137177137194%_ _%g137178137197%_))))
                      (_%g137177137194%_ _%g137178137197%_)))))
          (_%g137176137360%_ _%stx137175%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self137090%_ _%stx137091%_)
        (let* ((_%g137093137114%_
                (lambda (_%g137094137111%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137094137111%_))))
               (_%g137092137171%_
                (lambda (_%g137094137117%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137094137117%_))
                      (let ((_%e137100137119%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137094137117%_))))
                        (let ((_%hd137099137122%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137100137119%_)))
                              (_%tl137098137124%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137100137119%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137098137124%_))
                              (let ((_%e137103137127%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137098137124%_))))
                                (let ((_%hd137102137130%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137103137127%_)))
                                      (_%tl137101137132%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137103137127%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137101137132%_))
                                      (let ((_%e137106137135%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137101137132%_))))
                                        (let ((_%hd137105137138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137106137135%_)))
                                              (_%tl137104137140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137106137135%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137104137140%_))
                                              (let ((_%e137109137143%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137104137140%_))))
                                                (let ((_%hd137108137146%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137109137143%_)))
                                                      (_%tl137107137148%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137109137143%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137107137148%_))
                                                      ((lambda (_%L137151%_
                                                                _%L137152%_
                                                                _%L137153%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137090%_ _%L137151%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137090%_
                                      _%L137152%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137090%_
                                            _%L137153%_))
                                         (cons ''#f '()))))))
               _%hd137108137146%_
               _%hd137105137138%_
               _%hd137102137130%_)
              (_%g137093137114%_ _%g137094137117%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137093137114%_
                                               _%g137094137117%_))))
                                      (_%g137093137114%_ _%g137094137117%_))))
                              (_%g137093137114%_ _%g137094137117%_))))
                      (_%g137093137114%_ _%g137094137117%_)))))
          (_%g137092137171%_ _%stx137091%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self136990%_ _%stx136991%_)
        (let* ((_%g136993137018%_
                (lambda (_%g136994137015%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136994137015%_))))
               (_%g136992137087%_
                (lambda (_%g136994137021%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136994137021%_))
                      (let ((_%e137001137023%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136994137021%_))))
                        (let ((_%hd137000137026%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137001137023%_)))
                              (_%tl136999137028%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137001137023%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136999137028%_))
                              (let ((_%e137004137031%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136999137028%_))))
                                (let ((_%hd137003137034%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137004137031%_)))
                                      (_%tl137002137036%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137004137031%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137002137036%_))
                                      (let ((_%e137007137039%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137002137036%_))))
                                        (let ((_%hd137006137042%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137007137039%_)))
                                              (_%tl137005137044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137007137039%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137005137044%_))
                                              (let ((_%e137010137047%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137005137044%_))))
                                                (let ((_%hd137009137050%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137010137047%_)))
                                                      (_%tl137008137052%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137010137047%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137008137052%_))
                                                      (let ((_%e137013137055%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137008137052%_))))
                (let ((_%hd137012137058%_
                       (let () (declare (not safe)) (##car _%e137013137055%_)))
                      (_%tl137011137060%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137013137055%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137011137060%_))
                      ((lambda (_%L137063%_
                                _%L137064%_
                                _%L137065%_
                                _%L137066%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self136990%_
                                        _%L137064%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self136990%_
                                              _%L137063%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self136990%_
                                                    _%L137065%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self136990%_
                                                          _%L137066%_))
                                                       (cons ''#f '())))))))
                       _%hd137012137058%_
                       _%hd137009137050%_
                       _%hd137006137042%_
                       _%hd137003137034%_)
                      (_%g136993137018%_ _%g136994137021%_))))
              (_%g136993137018%_ _%g136994137021%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136993137018%_
                                               _%g136994137021%_))))
                                      (_%g136993137018%_ _%g136994137021%_))))
                              (_%g136993137018%_ _%g136994137021%_))))
                      (_%g136993137018%_ _%g136994137021%_)))))
          (_%g136992137087%_ _%stx136991%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self136906%_ _%stx136907%_)
        (let* ((_%g136909136930%_
                (lambda (_%g136910136927%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136910136927%_))))
               (_%g136908136987%_
                (lambda (_%g136910136933%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136910136933%_))
                      (let ((_%e136916136935%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136910136933%_))))
                        (let ((_%hd136915136938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136916136935%_)))
                              (_%tl136914136940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136916136935%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136914136940%_))
                              (let ((_%e136919136943%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136914136940%_))))
                                (let ((_%hd136918136946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136919136943%_)))
                                      (_%tl136917136948%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136919136943%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136917136948%_))
                                      (let ((_%e136922136951%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136917136948%_))))
                                        (let ((_%hd136921136954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136922136951%_)))
                                              (_%tl136920136956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136922136951%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136920136956%_))
                                              (let ((_%e136925136959%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136920136956%_))))
                                                (let ((_%hd136924136962%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136925136959%_)))
                                                      (_%tl136923136964%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136925136959%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl136923136964%_))
                                                      ((lambda (_%L136967%_
                                                                _%L136968%_
                                                                _%L136969%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self136906%_ _%L136967%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self136906%_
                                      _%L136968%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self136906%_
                                            _%L136969%_))
                                         (cons ''#f '()))))))
               _%hd136924136962%_
               _%hd136921136954%_
               _%hd136918136946%_)
              (_%g136909136930%_ _%g136910136933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136909136930%_
                                               _%g136910136933%_))))
                                      (_%g136909136930%_ _%g136910136933%_))))
                              (_%g136909136930%_ _%g136910136933%_))))
                      (_%g136909136930%_ _%g136910136933%_)))))
          (_%g136908136987%_ _%stx136907%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self136806%_ _%stx136807%_)
        (let* ((_%g136809136834%_
                (lambda (_%g136810136831%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136810136831%_))))
               (_%g136808136903%_
                (lambda (_%g136810136837%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136810136837%_))
                      (let ((_%e136817136839%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136810136837%_))))
                        (let ((_%hd136816136842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136817136839%_)))
                              (_%tl136815136844%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136817136839%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136815136844%_))
                              (let ((_%e136820136847%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136815136844%_))))
                                (let ((_%hd136819136850%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136820136847%_)))
                                      (_%tl136818136852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136820136847%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136818136852%_))
                                      (let ((_%e136823136855%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136818136852%_))))
                                        (let ((_%hd136822136858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136823136855%_)))
                                              (_%tl136821136860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136823136855%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136821136860%_))
                                              (let ((_%e136826136863%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136821136860%_))))
                                                (let ((_%hd136825136866%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136826136863%_)))
                                                      (_%tl136824136868%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136826136863%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl136824136868%_))
                                                      (let ((_%e136829136871%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl136824136868%_))))
                (let ((_%hd136828136874%_
                       (let () (declare (not safe)) (##car _%e136829136871%_)))
                      (_%tl136827136876%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e136829136871%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136827136876%_))
                      ((lambda (_%L136879%_
                                _%L136880%_
                                _%L136881%_
                                _%L136882%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self136806%_
                                        _%L136880%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self136806%_
                                              _%L136879%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self136806%_
                                                    _%L136881%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self136806%_
                                                          _%L136882%_))
                                                       (cons ''#f '())))))))
                       _%hd136828136874%_
                       _%hd136825136866%_
                       _%hd136822136858%_
                       _%hd136819136850%_)
                      (_%g136809136834%_ _%g136810136837%_))))
              (_%g136809136834%_ _%g136810136837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136809136834%_
                                               _%g136810136837%_))))
                                      (_%g136809136834%_ _%g136810136837%_))))
                              (_%g136809136834%_ _%g136810136837%_))))
                      (_%g136809136834%_ _%g136810136837%_)))))
          (_%g136808136903%_ _%stx136807%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self136601%_ _%stx136602%_)
        (let* ((_%g136604136625%_
                (lambda (_%g136605136622%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136605136622%_))))
               (_%g136603136803%_
                (lambda (_%g136605136628%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136605136628%_))
                      (let ((_%e136611136630%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136605136628%_))))
                        (let ((_%hd136610136633%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136611136630%_)))
                              (_%tl136609136635%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136611136630%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136609136635%_))
                              (let ((_%e136614136638%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136609136635%_))))
                                (let ((_%hd136613136641%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136614136638%_)))
                                      (_%tl136612136643%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136614136638%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136612136643%_))
                                      (let ((_%e136617136646%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136612136643%_))))
                                        (let ((_%hd136616136649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136617136646%_)))
                                              (_%tl136615136651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136617136646%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136615136651%_))
                                              (let ((_%e136620136654%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136615136651%_))))
                                                (let ((_%hd136619136657%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136620136654%_)))
                                                      (_%tl136618136659%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136620136654%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl136618136659%_))
                                                      ((lambda (_%L136662%_
                                                                _%L136663%_
                                                                _%L136664%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self136601%_
                                    _%L136662%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self136601%_
                                          _%L136663%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp136682%_ ((_%rest136685%_
                                         (cons _%L136663%_
                                               (cons _%L136662%_ '())))
                                        (_%bind136687%_ '())
                                        (_%args136688%_ '()))
                       (let* ((_%rest136689136697%_ _%rest136685%_)
                              (_%else136691136705%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind136687%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp144910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp144910 _%args136688%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K136693136791%_
                               (lambda (_%rest136708%_ _%e136709%_)
                                 (let* ((_%__stx144547144548%_ _%e136709%_)
                                        (_%g136714136732%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144547144548%_)))))
                                   (let ((_%__kont144549144550%_
                                          (lambda ()
                                            (_%lp136682%_
                                             _%rest136708%_
                                             _%bind136687%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e136709%_))
                                                   _%args136688%_))))
                                         (_%__kont144551144552%_
                                          (lambda ()
                                            (_%lp136682%_
                                             _%rest136708%_
                                             _%bind136687%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e136709%_))
                                                   _%args136688%_))))
                                         (_%__kont144553144554%_
                                          (lambda ()
                                            (let ((_%tmp136739%_
                                                   (let ((__tmp144911
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp144911))))
                                              (_%lp136682%_
                                               _%rest136708%_
                                               (cons (cons _%tmp136739%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e136709%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind136687%_)
                                               (cons _%tmp136739%_
                                                     _%args136688%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144547144548%_))
                                         (let ((_%e136718136770%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144547144548%_))))
                                           (let ((_%tl136716136775%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e136718136770%_)))
                                                 (_%hd136717136773%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e136718136770%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd136717136773%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd136717136773%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl136716136775%_))
                                                         (let ((_%e136721136778%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl136716136775%_))))
                   (let ((_%tl136719136783%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e136721136778%_)))
                         (_%hd136720136781%_
                          (let ()
                            (declare (not safe))
                            (##car _%e136721136778%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl136719136783%_))
                         (_%__kont144549144550%_)
                         (_%__kont144553144554%_))))
                 (_%__kont144553144554%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd136717136773%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl136716136775%_))
                     (let ((_%e136727136755%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl136716136775%_))))
                       (let ((_%tl136725136760%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e136727136755%_)))
                             (_%hd136726136758%_
                              (let ()
                                (declare (not safe))
                                (##car _%e136727136755%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl136725136760%_))
                             (_%__kont144551144552%_)
                             (_%__kont144553144554%_))))
                     (_%__kont144553144554%_))
                 (_%__kont144553144554%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144553144554%_))))
                                         (_%__kont144553144554%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest136689136697%_))
                             (let ((_%hd136694136794%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest136689136697%_)))
                                   (_%tl136695136796%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest136689136697%_))))
                               (let* ((_%e136799%_ _%hd136694136794%_)
                                      (_%rest136801%_ _%tl136695136796%_))
                                 (_%K136693136791%_
                                  _%rest136801%_
                                  _%e136799%_)))
                             (_%else136691136705%_))))))
               _%hd136619136657%_
               _%hd136616136649%_
               _%hd136613136641%_)
              (_%g136604136625%_ _%g136605136628%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136604136625%_
                                               _%g136605136628%_))))
                                      (_%g136604136625%_ _%g136605136628%_))))
                              (_%g136604136625%_ _%g136605136628%_))))
                      (_%g136604136625%_ _%g136605136628%_)))))
          (_%g136603136803%_ _%stx136602%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self136380%_ _%stx136381%_)
        (let* ((_%g136383136408%_
                (lambda (_%g136384136405%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136384136405%_))))
               (_%g136382136598%_
                (lambda (_%g136384136411%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136384136411%_))
                      (let ((_%e136391136413%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136384136411%_))))
                        (let ((_%hd136390136416%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136391136413%_)))
                              (_%tl136389136418%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136391136413%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136389136418%_))
                              (let ((_%e136394136421%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136389136418%_))))
                                (let ((_%hd136393136424%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136394136421%_)))
                                      (_%tl136392136426%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136394136421%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136392136426%_))
                                      (let ((_%e136397136429%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136392136426%_))))
                                        (let ((_%hd136396136432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136397136429%_)))
                                              (_%tl136395136434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136397136429%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136395136434%_))
                                              (let ((_%e136400136437%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136395136434%_))))
                                                (let ((_%hd136399136440%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136400136437%_)))
                                                      (_%tl136398136442%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136400136437%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl136398136442%_))
                                                      (let ((_%e136403136445%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl136398136442%_))))
                (let ((_%hd136402136448%_
                       (let () (declare (not safe)) (##car _%e136403136445%_)))
                      (_%tl136401136450%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e136403136445%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136401136450%_))
                      ((lambda (_%L136453%_
                                _%L136454%_
                                _%L136455%_
                                _%L136456%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self136380%_
                                            _%L136454%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self136380%_
                                                  _%L136453%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self136380%_
                                                        _%L136455%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp136477%_ ((_%rest136480%_
                                                 (cons _%L136455%_
                                                       (cons _%L136453%_
                                                             (cons _%L136454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind136482%_ '())
                                                (_%args136483%_ '()))
                               (let* ((_%rest136484136492%_ _%rest136480%_)
                                      (_%else136486136500%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind136482%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp144912 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp144912 _%args136483%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K136488136586%_
                                       (lambda (_%rest136503%_ _%e136504%_)
                                         (let* ((_%__stx144593144594%_
                                                 _%e136504%_)
                                                (_%g136509136527%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx144593144594%_)))))
                                           (let ((_%__kont144595144596%_
                                                  (lambda ()
                                                    (_%lp136477%_
                                                     _%rest136503%_
                                                     _%bind136482%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e136504%_))
                                                           _%args136483%_))))
                                                 (_%__kont144597144598%_
                                                  (lambda ()
                                                    (_%lp136477%_
                                                     _%rest136503%_
                                                     _%bind136482%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e136504%_))
                                                           _%args136483%_))))
                                                 (_%__kont144599144600%_
                                                  (lambda ()
                                                    (let ((_%tmp136534%_
                                                           (let ((__tmp144913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp144913))))
              (_%lp136477%_
               _%rest136503%_
               (cons (cons _%tmp136534%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e136504%_))
                                 '()))
                     _%bind136482%_)
               (cons _%tmp136534%_ _%args136483%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx144593144594%_))
                                                 (let ((_%e136513136565%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx144593144594%_))))
                                                   (let ((_%tl136511136570%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e136513136565%_)))
                                                         (_%hd136512136568%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e136513136565%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd136512136568%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd136512136568%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl136511136570%_))
                         (let ((_%e136516136573%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl136511136570%_))))
                           (let ((_%tl136514136578%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e136516136573%_)))
                                 (_%hd136515136576%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e136516136573%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl136514136578%_))
                                 (_%__kont144595144596%_)
                                 (_%__kont144599144600%_))))
                         (_%__kont144599144600%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd136512136568%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl136511136570%_))
                             (let ((_%e136522136550%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl136511136570%_))))
                               (let ((_%tl136520136555%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e136522136550%_)))
                                     (_%hd136521136553%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e136522136550%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl136520136555%_))
                                     (_%__kont144597144598%_)
                                     (_%__kont144599144600%_))))
                             (_%__kont144599144600%_))
                         (_%__kont144599144600%_)))
                 (_%__kont144599144600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144599144600%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest136484136492%_))
                                     (let ((_%hd136489136589%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest136484136492%_)))
                                           (_%tl136490136591%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest136484136492%_))))
                                       (let* ((_%e136594%_ _%hd136489136589%_)
                                              (_%rest136596%_
                                               _%tl136490136591%_))
                                         (_%K136488136586%_
                                          _%rest136596%_
                                          _%e136594%_)))
                                     (_%else136486136500%_))))))
                       _%hd136402136448%_
                       _%hd136399136440%_
                       _%hd136396136432%_
                       _%hd136393136424%_)
                      (_%g136383136408%_ _%g136384136411%_))))
              (_%g136383136408%_ _%g136384136411%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136383136408%_
                                               _%g136384136411%_))))
                                      (_%g136383136408%_ _%g136384136411%_))))
                              (_%g136383136408%_ _%g136384136411%_))))
                      (_%g136383136408%_ _%g136384136411%_)))))
          (_%g136382136598%_ _%stx136381%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self136219%_ _%stx136220%_)
        (letrec ((_%import-set-template136222%_
                  (lambda (_%in136325%_ _%phi136326%_)
                    (let ((_%iphi136328%_
                           (fx+ _%phi136326%_
                                (##direct-structure-ref
                                 _%in136325%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports136329%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in136325%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp136331%_ ((_%rest136333%_ _%imports136329%_)
                                         (_%r136334%_ '()))
                        (let* ((_%rest136335136343%_ _%rest136333%_)
                               (_%else136337136351%_ (lambda () _%r136334%_))
                               (_%K136339136368%_
                                (lambda (_%rest136354%_ _%in136355%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in136355%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi136328%_))
                                          (_%lp136331%_
                                           _%rest136354%_
                                           (cons _%in136355%_ _%r136334%_))
                                          (_%lp136331%_
                                           _%rest136354%_
                                           _%r136334%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in136355%_
                                             'gx#module-import::t))
                                          (let ((_%iphi136359%_
                                                 (fx+ _%phi136326%_
                                                      (##direct-structure-ref
                                                       _%in136355%_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi136359%_))
                                                (_%lp136331%_
                                                 _%rest136354%_
                                                 (cons (##direct-structure-ref
                                                        (##direct-structure-ref
                                                         _%in136355%_
                                                         '1
                                                         gx#module-import::t
                                                         '#f)
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r136334%_))
                                                (_%lp136331%_
                                                 _%rest136354%_
                                                 _%r136334%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in136355%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi136362%_
                                                     (fx+ _%iphi136328%_
                                                          (##direct-structure-ref
                                                           _%in136355%_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi136362%_))
                                                    (_%lp136331%_
                                                     _%rest136354%_
                                                     (cons (##direct-structure-ref
                                                            _%in136355%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f)
                                                           _%r136334%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi136362%_))
                                                        (_%lp136331%_
                                                         _%rest136354%_
                                                         (let ((__tmp144914
                                                                (_%import-set-template136222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in136355%_
                         _%iphi136328%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r136334%_ __tmp144914)))
                (_%lp136331%_ _%rest136354%_ _%r136334%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp136331%_
                                               _%rest136354%_
                                               _%r136334%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest136335136343%_))
                              (let ((_%hd136340136371%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest136335136343%_)))
                                    (_%tl136341136373%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest136335136343%_))))
                                (let* ((_%in136376%_ _%hd136340136371%_)
                                       (_%rest136378%_ _%tl136341136373%_))
                                  (_%K136339136368%_
                                   _%rest136378%_
                                   _%in136376%_)))
                              (_%else136337136351%_))))))))
          (let* ((_%g136224136234%_
                  (lambda (_%g136225136231%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136225136231%_))))
                 (_%g136223136322%_
                  (lambda (_%g136225136237%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136225136237%_))
                        (let ((_%e136229136239%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136225136237%_))))
                          (let ((_%hd136228136242%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136229136239%_)))
                                (_%tl136227136244%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136229136239%_))))
                            ((lambda (_%L136247%_)
                               (let ((_%ht136258%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp136260%_ ((_%rest136262%_
                                                     _%L136247%_)
                                                    (_%loads136263%_ '()))
                                   (letrec ((_%K136265%_
                                             (lambda (_%ctx136315%_
                                                      _%rest136316%_)
                                               (let ((_%id136318%_
                                                      (##structure-ref
                                                       _%ctx136315%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht136258%_
                                                        _%id136318%_))
                                                     (_%lp136260%_
                                                      _%rest136316%_
                                                      _%loads136263%_)
                                                     (let ((_%rt136320%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id136318%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht136258%_
                                                          _%id136318%_
                                                          _%rt136320%_))
                                                       (_%lp136260%_
                                                        _%rest136316%_
                                                        (cons _%rt136320%_
                                                              _%loads136263%_))))))))
                                     (let* ((_%rest136266136274%_
                                             _%rest136262%_)
                                            (_%else136268136286%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp144916
                                                            (lambda (_%g136281136283%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g136281136283%_)))
                   (__tmp144915 (reverse _%loads136263%_)))
               (declare (not safe))
               (##map __tmp144916 __tmp144915)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K136270136303%_
                                             (lambda (_%rest136289%_
                                                      _%in136290%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in136290%_
                                                      'gx#module-context::t))
                                                   (_%K136265%_
                                                    _%in136290%_
                                                    _%rest136289%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in136290%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in136290%_
                             '3
                             gx#module-import::t
                             '#f))
                   (_%K136265%_
                    (##direct-structure-ref
                     (##direct-structure-ref
                      _%in136290%_
                      '1
                      gx#module-import::t
                      '#f)
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest136289%_)
                   (_%lp136260%_ _%rest136289%_ _%loads136263%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in136290%_
                      'gx#import-set::t))
                   (let ((_%phi136295%_
                          (##direct-structure-ref
                           _%in136290%_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _%phi136295%_)
                         (_%K136265%_
                          (##direct-structure-ref
                           _%in136290%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%rest136289%_)
                         (if (fxpositive? _%phi136295%_)
                             (let ((_%deps136299%_
                                    (_%import-set-template136222%_
                                     _%in136290%_
                                     '0)))
                               (_%lp136260%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest136289%_
                                   _%deps136299%_))
                                _%loads136263%_))
                             (_%lp136260%_ _%rest136289%_ _%loads136263%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx136220%_
                      _%in136290%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest136266136274%_))
                                           (let ((_%hd136271136306%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest136266136274%_)))
                                                 (_%tl136272136308%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest136266136274%_))))
                                             (let* ((_%in136311%_
                                                     _%hd136271136306%_)
                                                    (_%rest136313%_
                                                     _%tl136272136308%_))
                                               (_%K136270136303%_
                                                _%rest136313%_
                                                _%in136311%_)))
                                           (_%else136268136286%_)))))))
                             _%tl136227136244%_)))
                        (_%g136224136234%_ _%g136225136237%_)))))
            (_%g136223136322%_ _%stx136220%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self136032%_ _%stx136033%_)
        (letrec ((_%add-lift!136035%_
                  (lambda (_%expr136217%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr136217%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote136036%_
                  (lambda (_%id136214%_ _%marks136215%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id136214%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks136215%_
                                                        '()))))))))
                 (_%generate-simple136037%_
                  (lambda (_%stxq136209%_)
                    (let ((_%gid136211%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid136212%_
                           (gxc#generate-runtime-identifier _%stxq136209%_)))
                      (_%add-lift!136035%_
                       (cons 'define
                             (cons _%gid136211%_
                                   (cons (_%generate-syntax-quote136036%_
                                          _%qid136212%_
                                          ''())
                                         '()))))
                      (let ((__tmp144917
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp144917 _%stxq136209%_ _%gid136211%_))
                      _%gid136211%_)))
                 (_%generate-serialized136038%_
                  (lambda (_%stxq136199%_ _%marks136200%_)
                    (let* ((_%mark-refs136202%_
                            (map _%generate-mark136039%_ _%marks136200%_))
                           (_%gid136204%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid136206%_
                            (gxc#generate-runtime-identifier _%stxq136199%_)))
                      (_%add-lift!136035%_
                       (cons 'define
                             (cons _%gid136204%_
                                   (cons (_%generate-syntax-quote136036%_
                                          _%qid136206%_
                                          (cons 'list _%mark-refs136202%_))
                                         '()))))
                      (let ((__tmp144918
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp144918 _%stxq136199%_ _%gid136204%_))
                      _%gid136204%_)))
                 (_%generate-mark136039%_
                  (lambda (_%mark136184%_)
                    (let ((_%$e136186%_
                           (let ((__tmp144919
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp144919 _%mark136184%_))))
                      (if _%$e136186%_
                          (values _%$e136186%_)
                          (let* ((_%gid136190%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr136192%_
                                  (_%serialize-mark136040%_ _%mark136184%_))
                                 (_%ctx136194%_
                                  (let ((__tmp144920
                                         (##structure-ref
                                          _%mark136184%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp144920)))
                                 (_%ctx-ref136196%_
                                  (if (eq? _%ctx136194%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref136041%_
                                                               _%ctx136194%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp144921
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp144921
                               _%mark136184%_
                               _%gid136190%_))
                            (_%add-lift!136035%_
                             (cons 'define
                                   (cons _%gid136190%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr136192%_ '()))
                   (cons _%ctx-ref136196%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid136190%_)))))
                 (_%serialize-mark136040%_
                  (lambda (_%mark136131%_)
                    (letrec ((_%quote-e136133%_
                              (lambda (_%sym136182%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym136182%_))
                                    _%sym136182%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym136182%_))))))
                      (let* ((_%mark136134136143%_ _%mark136131%_)
                             (_%E136136136147%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark136134136143%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K136137136159%_
                              (lambda (_%trace136150%_
                                       _%phi136151%_
                                       _%ctx136152%_
                                       _%subst136153%_)
                                (let ((_%subs136155%_
                                       (if _%subst136153%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst136153%_))
                                           '())))
                                  (cons _%phi136151%_
                                        (map (lambda (_%pair136157%_)
                                               (cons (_%quote-e136133%_
                                                      (car _%pair136157%_))
                                                     (_%quote-e136133%_
                                                      (cdr _%pair136157%_))))
                                             _%subs136155%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark136134136143%_
                               'gx#expander-mark::t))
                            (let* ((_%e136138136162%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136134136143%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst136165%_ _%e136138136162%_)
                                   (_%e136139136167%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136134136143%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx136170%_ _%e136139136167%_)
                                   (_%e136140136172%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136134136143%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi136175%_ _%e136140136172%_)
                                   (_%e136141136177%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136134136143%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace136180%_ _%e136141136177%_))
                              (_%K136137136159%_
                               _%trace136180%_
                               _%phi136175%_
                               _%ctx136170%_
                               _%subst136165%_))
                            (_%E136136136147%_))))))
                 (_%context-ref136041%_
                  (lambda (_%ctx136118%_)
                    (if (let ((__tmp144922
                               (##structure-ref
                                _%ctx136118%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp144922
                           'gx#module-context::t))
                        (let ((_%ctx-ref136120%_
                               (_%context-ref-nested136043%_ _%ctx136118%_))
                              (_%ctx-origin136121%_
                               (_%context-ref-origin136042%_ _%ctx136118%_))
                              (_%origin136122%_
                               (_%context-ref-origin136042%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin136122%_ _%ctx-origin136121%_)
                              (let ((_%ref136124%_
                                     (_%context-ref-nested136043%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp136126%_ ((_%ref136128%_
                                                    (cdr _%ref136124%_))
                                                   (_%ctx-ref136129%_
                                                    (cdr _%ctx-ref136120%_)))
                                  (if (and (pair? _%ref136128%_)
                                           (eq? (car _%ref136128%_)
                                                (car _%ctx-ref136129%_)))
                                      (_%lp136126%_
                                       (cdr _%ref136128%_)
                                       (cdr _%ctx-ref136129%_))
                                      (cons '#f _%ctx-ref136129%_))))
                              _%ctx-ref136120%_))
                        (let ((__tmp144923
                               (##structure-ref
                                _%ctx136118%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp144923)))))
                 (_%context-ref-origin136042%_
                  (lambda (_%ctx136110%_)
                    (let _%lp136112%_ ((_%ctx136114%_ _%ctx136110%_))
                      (let ((_%super136116%_
                             (##structure-ref
                              _%ctx136114%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136116%_
                               'gx#module-context::t))
                            (_%lp136112%_ _%super136116%_)
                            _%ctx136114%_)))))
                 (_%context-ref-nested136043%_
                  (lambda (_%ctx136101%_)
                    (let _%lp136103%_ ((_%ctx136105%_ _%ctx136101%_)
                                       (_%r136106%_ '()))
                      (let ((_%super136108%_
                             (##structure-ref
                              _%ctx136105%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136108%_
                               'gx#module-context::t))
                            (_%lp136103%_
                             _%super136108%_
                             (cons (car (##structure-ref
                                         _%ctx136105%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r136106%_))
                            (cons (let ((__tmp144924
                                         (##structure-ref
                                          _%ctx136105%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp144924))
                                  _%r136106%_)))))))
          (let* ((_%g136045136058%_
                  (lambda (_%g136046136055%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136046136055%_))))
                 (_%g136044136098%_
                  (lambda (_%g136046136061%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136046136061%_))
                        (let ((_%e136050136063%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136046136061%_))))
                          (let ((_%hd136049136066%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136050136063%_)))
                                (_%tl136048136068%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136050136063%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136048136068%_))
                                (let ((_%e136053136071%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136048136068%_))))
                                  (let ((_%hd136052136074%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136053136071%_)))
                                        (_%tl136051136076%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136053136071%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136051136076%_))
                                        ((lambda (_%L136079%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L136079%_))
                                               (let ((_%$e136092%_
                                                      (let ((__tmp144925
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp144925 _%L136079%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e136092%_
                                                     (values _%$e136092%_)
                                                     (let ((_%marks136096%_
                                                            (##direct-structure-ref
                                                             _%L136079%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks136096%_)
                                                           (_%generate-simple136037%_
                                                            _%L136079%_)
                                                           (_%generate-serialized136038%_
                                                            _%L136079%_
                                                            _%marks136096%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L136079%_))))
                                         _%hd136052136074%_)
                                        (_%g136045136058%_
                                         _%g136046136061%_))))
                                (_%g136045136058%_ _%g136046136061%_))))
                        (_%g136045136058%_ _%g136046136061%_)))))
            (_%g136044136098%_ _%stx136033%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self135964%_ _%stx135965%_)
        (let* ((_%g135967135984%_
                (lambda (_%g135968135981%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135968135981%_))))
               (_%g135966136029%_
                (lambda (_%g135968135987%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135968135987%_))
                      (let ((_%e135973135989%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135968135987%_))))
                        (let ((_%hd135972135992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135973135989%_)))
                              (_%tl135971135994%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135973135989%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135971135994%_))
                              (let ((_%e135976135997%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135971135994%_))))
                                (let ((_%hd135975136000%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135976135997%_)))
                                      (_%tl135974136002%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135976135997%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135974136002%_))
                                      (let ((_%e135979136005%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135974136002%_))))
                                        (let ((_%hd135978136008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135979136005%_)))
                                              (_%tl135977136010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135979136005%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135977136010%_))
                                              ((lambda (_%L136013%_
                                                        _%L136014%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136014%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self135964%_ _%L136013%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135978136008%_
                                               _%hd135975136000%_)
                                              (_%g135967135984%_
                                               _%g135968135987%_))))
                                      (_%g135967135984%_ _%g135968135987%_))))
                              (_%g135967135984%_ _%g135968135987%_))))
                      (_%g135967135984%_ _%g135968135987%_)))))
          (_%g135966136029%_ _%stx135965%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self135913%_ _%stx135914%_)
        (let* ((_%g135916135926%_
                (lambda (_%g135917135923%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135917135923%_))))
               (_%g135915135961%_
                (lambda (_%g135917135929%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135917135929%_))
                      (let ((_%e135921135931%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135917135929%_))))
                        (let ((_%hd135920135934%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135921135931%_)))
                              (_%tl135919135936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135921135931%_))))
                          ((lambda (_%L135939%_)
                             (let* ((_%c-body135953%_
                                     (map (lambda (_%g135948135950%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self135913%_
                                               _%g135948135950%_)))
                                          _%L135939%_))
                                    (_%c-body135958%_
                                     (let ((__tmp144926
                                            (lambda (_%$obj135955%_)
                                              (not (eq? _%$obj135955%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp144926
                                        _%c-body135953%_))))
                               (cons '%#begin _%c-body135958%_)))
                           _%tl135919135936%_)))
                      (_%g135916135926%_ _%g135917135929%_)))))
          (_%g135915135961%_ _%stx135914%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self135818%_ _%stx135819%_)
        (let* ((_%g135821135831%_
                (lambda (_%g135822135828%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135822135828%_))))
               (_%g135820135910%_
                (lambda (_%g135822135834%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135822135834%_))
                      (let ((_%e135826135836%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135822135834%_))))
                        (let ((_%hd135825135839%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135826135836%_)))
                              (_%tl135824135841%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135826135836%_))))
                          ((lambda (_%L135844%_)
                             (let* ((_%phi135854%_
                                     (let ((__tmp144927
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp144927 '1)))
                                    (_%block135856%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self135818%_ 'state))
                                      _%phi135854%_))
                                    (_%compiled135859%_
                                     (let ((__tmp144928
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self135818%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L135844%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp144928
                                        gx#current-expander-phi
                                        _%phi135854%_)))
                                    (_%g135862135872%_
                                     (lambda (_%g135863135869%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g135863135869%_))))
                                    (_%g135861135907%_
                                     (lambda (_%g135863135875%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g135863135875%_))
                                           (let ((_%e135867135877%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g135863135875%_))))
                                             (let ((_%hd135866135880%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e135867135877%_)))
                                                   (_%tl135865135882%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e135867135877%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd135866135880%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd135866135880%_))
                                                       ((lambda (_%L135885%_)
                                                          (let ((_%c-body135902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj135899%_)
                                   (not (eq? _%$obj135899%_ '#!void)))
                                 _%L135885%_)))
                    (if _%block135856%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block135856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body135902%_))
                        (if (null? _%c-body135902%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body135902%_)))))
                _%tl135865135882%_)
               (_%g135862135872%_ _%g135863135875%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g135862135872%_
                                                    _%g135863135875%_))))
                                           (_%g135862135872%_
                                            _%g135863135875%_)))))
                               (_%g135861135907%_ _%compiled135859%_)))
                           _%tl135824135841%_)))
                      (_%g135821135831%_ _%g135822135834%_)))))
          (_%g135820135910%_ _%stx135819%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self135749%_ _%stx135750%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self135749%_ 'state)))
        (let* ((_%g135752135766%_
                (lambda (_%g135753135763%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135753135763%_))))
               (_%g135751135815%_
                (lambda (_%g135753135769%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135753135769%_))
                      (let ((_%e135758135771%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135753135769%_))))
                        (let ((_%hd135757135774%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135758135771%_)))
                              (_%tl135756135776%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135758135771%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135756135776%_))
                              (let ((_%e135761135779%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135756135776%_))))
                                (let ((_%hd135760135782%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135761135779%_)))
                                      (_%tl135759135784%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135761135779%_))))
                                  ((lambda (_%L135787%_ _%L135788%_)
                                     (let ((_%key135801%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L135788%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key135801%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx135750%_
                                              _%L135788%_
                                              _%key135801%_)))
                                       (let* ((_%ctx135803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L135788%_)))
                                              (_%code135806%_
                                               (let ((__tmp144929
                                                      (lambda ()
                                                        (let ((__tmp144930
                                                               (##structure-ref
                                                                _%ctx135803%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self135749%_
                                                           __tmp144930)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp144929
                                                  gx#current-expander-context
                                                  _%ctx135803%_)))
                                              (_%rt135808%_
                                               (let ((__tmp144931
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp144931
                                                  _%ctx135803%_)))
                                              (_%loader135810%_
                                               (if _%rt135808%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt135808%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid135812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L135788%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self135749%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid135812%_
                                                     (cons _%code135806%_
                                                           _%loader135810%_))))))
                                   _%tl135759135784%_
                                   _%hd135760135782%_)))
                              (_%g135752135766%_ _%g135753135769%_))))
                      (_%g135752135766%_ _%g135753135769%_)))))
          (_%g135751135815%_ _%stx135750%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx135736%_ _%context-chain135737%_)
        (let _%lp135739%_ ((_%ctx135741%_ _%ctx135736%_) (_%path135742%_ '()))
          (let ((_%super135744%_
                 (##structure-ref _%ctx135741%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super135744%_ _%context-chain135737%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx135741%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path135742%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super135744%_
                       'gx#module-context::t))
                    (_%lp135739%_
                     _%super135744%_
                     (cons (car (##structure-ref
                                 _%ctx135741%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path135742%_))
                    (cons (let ((__tmp144932
                                 (##structure-ref
                                  _%ctx135741%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp144932))
                          _%path135742%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp135729%_ ((_%ctx135731%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r135732%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx135731%_ 'gx#module-context::t))
              (_%lp135729%_
               (##structure-ref _%ctx135731%_ '3 gx#phi-context::t '#f)
               (cons _%ctx135731%_ _%r135732%_))
              _%r135732%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self135492%_ _%stx135493%_)
        (letrec* ((_%context-chain135495%_ (gxc#current-context-chain))
                  (_%make-import-spec135496%_
                   (lambda (_%in135665%_)
                     (let* ((_%in135666135678%_ _%in135665%_)
                            (_%E135668135682%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in135666135678%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K135669135692%_
                             (lambda (_%phi135685%_
                                      _%name135686%_
                                      _%src-name135687%_
                                      _%src-phi135688%_
                                      _%src-key135689%_
                                      _%src-ctx135690%_)
                               (cons _%phi135685%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name135686%_)
                                           (cons _%src-phi135688%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name135687%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in135666135678%_
                              'gx#module-import::t))
                           (let ((_%e135670135695%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in135666135678%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e135670135695%_
                                    'gx#module-export::t))
                                 (let* ((_%e135673135698%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135670135695%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx135701%_ _%e135673135698%_)
                                        (_%e135674135703%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135670135695%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key135706%_ _%e135674135703%_)
                                        (_%e135675135708%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135670135695%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi135711%_ _%e135675135708%_)
                                        (_%e135676135713%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135670135695%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name135716%_ _%e135676135713%_)
                                        (_%e135671135718%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in135666135678%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name135721%_ _%e135671135718%_)
                                        (_%e135672135723%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in135666135678%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi135726%_ _%e135672135723%_))
                                   (_%K135669135692%_
                                    _%phi135726%_
                                    _%name135721%_
                                    _%src-name135716%_
                                    _%src-phi135711%_
                                    _%src-key135706%_
                                    _%src-ctx135701%_))
                                 (_%E135668135682%_)))
                           (_%E135668135682%_)))))
                  (_%make-import-path135497%_
                   (lambda (_%ctx135663%_)
                     (gxc#generate-meta-import-path
                      _%ctx135663%_
                      _%context-chain135495%_)))
                  (_%make-import-spec-in135498%_
                   (lambda (_%ctx135660%_ _%in135661%_)
                     (cons 'spec:
                           (cons (_%make-import-path135497%_ _%ctx135660%_)
                                 (reverse _%in135661%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self135492%_ 'state)))
          (let* ((_%g135500135510%_
                  (lambda (_%g135501135507%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135501135507%_))))
                 (_%g135499135657%_
                  (lambda (_%g135501135513%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135501135513%_))
                        (let ((_%e135505135515%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135501135513%_))))
                          (let ((_%hd135504135518%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135505135515%_)))
                                (_%tl135503135520%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135505135515%_))))
                            ((lambda (_%L135523%_)
                               (let _%lp135534%_ ((_%rest135536%_ _%L135523%_)
                                                  (_%current-src135537%_ '#f)
                                                  (_%current-in135538%_ '())
                                                  (_%r135539%_ '()))
                                 (let* ((_%rest135540135548%_ _%rest135536%_)
                                        (_%else135542135558%_
                                         (lambda ()
                                           (let ((_%r135556%_
                                                  (if _%current-src135537%_
                                                      (cons (_%make-import-spec-in135498%_
                                                             _%current-src135537%_
                                                             _%current-in135538%_)
                                                            _%r135539%_)
                                                      _%r135539%_)))
                                             (cons '%#import
                                                   (reverse _%r135556%_)))))
                                        (_%K135544135645%_
                                         (lambda (_%rest135561%_ _%in135562%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in135562%_
                                                  'gx#module-import::t))
                                               (let* ((_%in135564135571%_
                                                       _%in135562%_)
                                                      (_%E135566135575%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in135564135571%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K135567135583%_
               (lambda (_%src-ctx135578%_)
                 (if (eq? _%current-src135537%_ _%src-ctx135578%_)
                     (_%lp135534%_
                      _%rest135561%_
                      _%current-src135537%_
                      (cons (_%make-import-spec135496%_ _%in135562%_)
                            _%current-in135538%_)
                      _%r135539%_)
                     (if _%current-src135537%_
                         (_%lp135534%_
                          _%rest135561%_
                          _%src-ctx135578%_
                          (cons (_%make-import-spec135496%_ _%in135562%_) '())
                          (cons (_%make-import-spec-in135498%_
                                 _%current-src135537%_
                                 _%current-in135538%_)
                                _%r135539%_))
                         (_%lp135534%_
                          _%rest135561%_
                          _%src-ctx135578%_
                          (cons (_%make-import-spec135496%_ _%in135562%_) '())
                          _%r135539%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%in135564135571%_
                                                        'gx#module-import::t))
                                                     (let ((_%e135568135586%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in135564135571%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _%e135568135586%_
                                                              'gx#module-export::t))
                                                           (let* ((_%e135569135589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%e135568135586%_
                              '1
                              '#f
                              '#f)))
                          (_%src-ctx135592%_ _%e135569135589%_))
                     (_%K135567135583%_ _%src-ctx135592%_))
                   (_%E135566135575%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E135566135575%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in135562%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi135595%_
                                                           (##direct-structure-ref
                                                            _%in135562%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src135597%_
                                                           (##direct-structure-ref
                                                            _%in135562%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src-in135637%_
                                                           (let* ((_%g135598135607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path135497%_ _%src135597%_))
                          (_%E135601135611%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g135598135607%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K135603135627%_
                            (lambda (_%path135625%_) _%path135625%_))
                           (_%K135602135617%_
                            (lambda (_%path135615%_)
                              (cons 'in: _%path135615%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g135598135607%_))
                           (let ((_%tl135605135632%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g135598135607%_)))
                                 (_%hd135604135630%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g135598135607%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tl135605135632%_))
                                 (let ((_%path135635%_ _%hd135604135630%_))
                                   (_%K135603135627%_ _%path135635%_))
                                 (let ((_%path135620%_ _%g135598135607%_))
                                   (_%K135602135617%_ _%path135620%_))))
                           (let ((_%path135620%_ _%g135598135607%_))
                             (_%K135602135617%_ _%path135620%_))))))
                  (_%r135639%_
                   (if _%current-src135537%_
                       (cons (_%make-import-spec-in135498%_
                              _%current-src135537%_
                              _%current-in135538%_)
                             _%r135539%_)
                       _%r135539%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp135534%_
                                                      _%rest135561%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi135595%_)
                                                                _%src-in135637%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi135595%_
                                    (cons _%src-in135637%_ '()))))
                    _%r135639%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in135562%_
                                                          'gx#module-context::t))
                                                       (let ((_%r135643%_
                                                              (if _%current-src135537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in135498%_
                                 _%current-src135537%_
                                 _%current-in135538%_)
                                _%r135539%_)
                          _%r135539%_)))
                 (_%lp135534%_
                  _%rest135561%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path135497%_ _%in135562%_))
                        _%r135643%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135540135548%_))
                                       (let ((_%hd135545135648%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135540135548%_)))
                                             (_%tl135546135650%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135540135548%_))))
                                         (let* ((_%in135653%_
                                                 _%hd135545135648%_)
                                                (_%rest135655%_
                                                 _%tl135546135650%_))
                                           (_%K135544135645%_
                                            _%rest135655%_
                                            _%in135653%_)))
                                       (_%else135542135558%_)))))
                             _%tl135503135520%_)))
                        (_%g135500135510%_ _%g135501135513%_)))))
            (_%g135499135657%_ _%stx135493%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self135302%_ _%stx135303%_)
        (letrec* ((_%context-chain135305%_ (gxc#current-context-chain))
                  (_%make-import-path135306%_
                   (lambda (_%ctx135490%_)
                     (gxc#generate-meta-import-path
                      _%ctx135490%_
                      _%context-chain135305%_))))
          (let* ((_%g135308135318%_
                  (lambda (_%g135309135315%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135309135315%_))))
                 (_%g135307135487%_
                  (lambda (_%g135309135321%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135309135321%_))
                        (let ((_%e135313135323%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135309135321%_))))
                          (let ((_%hd135312135326%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135313135323%_)))
                                (_%tl135311135328%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135313135323%_))))
                            ((lambda (_%L135331%_)
                               (let _%lp135342%_ ((_%rest135344%_ _%L135331%_)
                                                  (_%r135345%_ '()))
                                 (let* ((_%rest135346135354%_ _%rest135344%_)
                                        (_%else135348135362%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r135345%_))))
                                        (_%K135350135475%_
                                         (lambda (_%rest135365%_ _%out135366%_)
                                           (let* ((_%out135367135380%_
                                                   _%out135366%_)
                                                  (_%E135370135384%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out135367135380%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K135374135454%_
                                                    (lambda (_%name135450%_
                                                             _%phi135451%_
                                                             _%key135452%_)
                                                      (_%lp135342%_
                                                       _%rest135365%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi135451%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key135452%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name135450%_)
                                             '()))))
                     _%r135345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K135371135434%_
                                                    (lambda (_%phi135388%_
                                                             _%src135389%_)
                                                      (let* ((_%out135429%_
                                                              (if _%src135389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g135390135399%_
                                              (_%make-import-path135306%_
                                               _%src135389%_))
                                             (_%E135393135403%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g135390135399%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K135395135419%_
                                               (lambda (_%path135417%_)
                                                 _%path135417%_))
                                              (_%K135394135409%_
                                               (lambda (_%path135407%_)
                                                 (cons 'in: _%path135407%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g135390135399%_))
                                              (let ((_%tl135397135424%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g135390135399%_)))
                                                    (_%hd135396135422%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g135390135399%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl135397135424%_))
                                                    (let ((_%path135427%_
                                                           _%hd135396135422%_))
                                                      (_%K135395135419%_
                                                       _%path135427%_))
                                                    (let ((_%path135412%_
                                                           _%g135390135399%_))
                                                      (_%K135394135409%_
                                                       _%path135412%_))))
                                              (let ((_%path135412%_
                                                     _%g135390135399%_))
                                                (_%K135394135409%_
                                                 _%path135412%_)))))
                                      '()))
                          '#t))
                     (_%out135431%_
                      (if (fxzero? _%phi135388%_)
                          _%out135429%_
                          (cons 'phi:
                                (cons _%phi135388%_
                                      (cons _%out135429%_ '()))))))
                (_%lp135342%_
                 _%rest135365%_
                 (cons _%out135431%_ _%r135345%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match135369135447%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out135367135380%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e135372135437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135367135380%_
                               '1
                               '#f
                               '#f)))
                           (_%e135373135442%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135367135380%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src135440%_ _%e135372135437%_)
                            (_%phi135445%_ _%e135373135442%_))
                        (_%K135371135434%_ _%phi135445%_ _%src135440%_)))
                    (_%E135370135384%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out135367135380%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e135375135457%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out135367135380%_
                        '1
                        '#f
                        '#f)))
                    (_%e135376135460%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135367135380%_
                        '2
                        '#f
                        '#f)))
                    (_%e135377135465%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135367135380%_
                        '3
                        '#f
                        '#f)))
                    (_%e135378135470%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135367135380%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key135463%_ _%e135376135460%_)
                     (_%phi135468%_ _%e135377135465%_)
                     (_%name135473%_ _%e135378135470%_))
                 (_%K135374135454%_
                  _%name135473%_
                  _%phi135468%_
                  _%key135463%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match135369135447%_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135346135354%_))
                                       (let ((_%hd135351135478%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135346135354%_)))
                                             (_%tl135352135480%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135346135354%_))))
                                         (let* ((_%out135483%_
                                                 _%hd135351135478%_)
                                                (_%rest135485%_
                                                 _%tl135352135480%_))
                                           (_%K135350135475%_
                                            _%rest135485%_
                                            _%out135483%_)))
                                       (_%else135348135362%_)))))
                             _%tl135311135328%_)))
                        (_%g135308135318%_ _%g135309135321%_)))))
            (_%g135307135487%_ _%stx135303%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self135263%_ _%stx135264%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self135263%_ 'state)))
        (let* ((_%g135266135276%_
                (lambda (_%g135267135273%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135267135273%_))))
               (_%g135265135299%_
                (lambda (_%g135267135279%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135267135279%_))
                      (let ((_%e135271135281%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135267135279%_))))
                        (let ((_%hd135270135284%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135271135281%_)))
                              (_%tl135269135286%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135271135281%_))))
                          ((lambda (_%L135289%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L135289%_)))
                           _%tl135269135286%_)))
                      (_%g135266135276%_ _%g135267135279%_)))))
          (_%g135265135299%_ _%stx135264%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self135134%_ _%stx135135%_)
        (letrec ((_%generate1135137%_
                  (lambda (_%id135258%_ _%eid135259%_)
                    (let ((_%eid135261%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid135259%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid135261%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx135135%_
                             _%eid135261%_)))
                      (cons (gxc#generate-runtime-identifier _%id135258%_)
                            (cons _%eid135261%_ '()))))))
          (let* ((_%g135139135167%_
                  (lambda (_%g135140135164%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135140135164%_))))
                 (_%g135138135255%_
                  (lambda (_%g135140135170%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135140135170%_))
                        (let ((_%e135145135172%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135140135170%_))))
                          (let ((_%hd135144135175%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135145135172%_)))
                                (_%tl135143135177%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135145135172%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl135143135177%_))
                                (let ((_g144933_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl135143135177%_
                                          '0))))
                                  (begin
                                    (let ((_g144934_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144933_)
                                                 (##vector-length _g144933_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144934_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144934_)))
                                    (let ((_%target135146135180%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g144933_ 0)))
                                          (_%tl135148135182%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g144933_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135148135182%_))
                                          (letrec ((_%loop135149135185%_
                                                    (lambda (_%hd135147135188%_
                                                             _%eid135153135190%_
                                                             _%id135154135192%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd135147135188%_))
                                                          (let ((_%e135150135195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd135147135188%_))))
                    (let ((_%lp-hd135151135198%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135150135195%_)))
                          (_%lp-tl135152135200%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135150135195%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd135151135198%_))
                          (let ((_%e135159135203%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd135151135198%_))))
                            (let ((_%hd135158135206%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135159135203%_)))
                                  (_%tl135157135208%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135159135203%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl135157135208%_))
                                  (let ((_%e135162135211%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl135157135208%_))))
                                    (let ((_%hd135161135214%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135162135211%_)))
                                          (_%tl135160135216%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135162135211%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135160135216%_))
                                          (_%loop135149135185%_
                                           _%lp-tl135152135200%_
                                           (cons _%hd135161135214%_
                                                 _%eid135153135190%_)
                                           (cons _%hd135158135206%_
                                                 _%id135154135192%_))
                                          (_%g135139135167%_
                                           _%g135140135170%_))))
                                  (_%g135139135167%_ _%g135140135170%_))))
                          (_%g135139135167%_ _%g135140135170%_))))
                  (let ((_%eid135155135219%_ (reverse _%eid135153135190%_))
                        (_%id135156135221%_ (reverse _%id135154135192%_)))
                    ((lambda (_%L135224%_ _%L135225%_)
                       (cons '%#extern
                             (map _%generate1135137%_
                                  (let ((__tmp144935
                                         (lambda (_%g135240135243%_
                                                  _%g135241135245%_)
                                           (cons _%g135240135243%_
                                                 _%g135241135245%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp144935 '() _%L135225%_))
                                  (let ((__tmp144936
                                         (lambda (_%g135247135250%_
                                                  _%g135248135252%_)
                                           (cons _%g135247135250%_
                                                 _%g135248135252%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp144936 '() _%L135224%_)))))
                     _%eid135155135219%_
                     _%id135156135221%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop135149135185%_
                                             _%target135146135180%_
                                             '()
                                             '()))
                                          (_%g135139135167%_
                                           _%g135140135170%_)))))
                                (_%g135139135167%_ _%g135140135170%_))))
                        (_%g135139135167%_ _%g135140135170%_)))))
            (_%g135138135255%_ _%stx135135%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self134924%_ _%stx134925%_)
        (letrec ((_%generate1134927%_
                  (lambda (_%id135129%_)
                    (let ((_%eid135131%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id135129%_)))
                          (_%ident135132%_
                           (gxc#generate-runtime-identifier _%id135129%_)))
                      (cons '%#define-runtime
                            (cons _%ident135132%_ (cons _%eid135131%_ '()))))))
                 (_%generate*134928%_
                  (lambda (_%all135097%_)
                    (let* ((_%all135098135106%_ _%all135097%_)
                           (_%else135100135114%_
                            (lambda () (cons '%#begin _%all135097%_)))
                           (_%K135102135119%_
                            (lambda (_%one135117%_) _%one135117%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all135098135106%_))
                          (let ((_%hd135103135122%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all135098135106%_)))
                                (_%tl135104135124%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all135098135106%_))))
                            (let ((_%one135127%_ _%hd135103135122%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl135104135124%_))
                                  (_%K135102135119%_ _%one135127%_)
                                  (_%else135100135114%_))))
                          (_%else135100135114%_))))))
          (let* ((_%g134930134947%_
                  (lambda (_%g134931134944%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g134931134944%_))))
                 (_%g134929135094%_
                  (lambda (_%g134931134950%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g134931134950%_))
                        (let ((_%e134936134952%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g134931134950%_))))
                          (let ((_%hd134935134955%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e134936134952%_)))
                                (_%tl134934134957%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e134936134952%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl134934134957%_))
                                (let ((_%e134939134960%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl134934134957%_))))
                                  (let ((_%hd134938134963%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e134939134960%_)))
                                        (_%tl134937134965%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e134939134960%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl134937134965%_))
                                        (let ((_%e134942134968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl134937134965%_))))
                                          (let ((_%hd134941134971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e134942134968%_)))
                                                (_%tl134940134973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e134942134968%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl134940134973%_))
                                                ((lambda (_%L134976%_
                                                          _%L134977%_)
                                                   (let _%lp134993%_ ((_%rest134995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L134977%_)
                              (_%r134996%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx144672144673%_
                                                             _%rest134995%_)
                                                            (_%g135001135018%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx144672144673%_)))))
               (let ((_%__kont144674144675%_
                      (lambda (_%L135081%_)
                        (_%lp134993%_ _%L135081%_ _%r134996%_)))
                     (_%__kont144676144677%_
                      (lambda (_%L135054%_ _%L135055%_)
                        (_%lp134993%_
                         _%L135054%_
                         (cons (_%generate1134927%_ _%L135055%_)
                               _%r134996%_))))
                     (_%__kont144678144679%_
                      (lambda (_%L135030%_)
                        (_%generate*134928%_
                         (let ((__tmp144937
                                (cons (_%generate1134927%_ _%L135030%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp144937 _%r134996%_)))))
                     (_%__kont144680144681%_
                      (lambda () (_%generate*134928%_ (reverse _%r134996%_)))))
                 (let ((_%g134999135041%_
                        (lambda ()
                          (let ((_%L135030%_ _%__stx144672144673%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L135030%_))
                                (_%__kont144678144679%_ _%L135030%_)
                                (_%__kont144680144681%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx144672144673%_))
                       (let ((_%e135006135070%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx144672144673%_))))
                         (let ((_%tl135004135075%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e135006135070%_)))
                               (_%hd135005135073%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e135006135070%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd135005135073%_))
                               (let ((_%e135007135078%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd135005135073%_))))
                                 (if (equal? _%e135007135078%_ '#f)
                                     (_%__kont144674144675%_
                                      _%tl135004135075%_)
                                     (_%__kont144676144677%_
                                      _%tl135004135075%_
                                      _%hd135005135073%_)))
                               (_%__kont144676144677%_
                                _%tl135004135075%_
                                _%hd135005135073%_))))
                       (let () (declare (not safe)) (_%g134999135041%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd134941134971%_
                                                 _%hd134938134963%_)
                                                (_%g134930134947%_
                                                 _%g134931134950%_))))
                                        (_%g134930134947%_
                                         _%g134931134950%_))))
                                (_%g134930134947%_ _%g134931134950%_))))
                        (_%g134930134947%_ _%g134931134950%_)))))
            (_%g134929135094%_ _%stx134925%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self134821%_ _%stx134822%_)
        (let* ((_%g134824134841%_
                (lambda (_%g134825134838%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134825134838%_))))
               (_%g134823134921%_
                (lambda (_%g134825134844%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134825134844%_))
                      (let ((_%e134830134846%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134825134844%_))))
                        (let ((_%hd134829134849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134830134846%_)))
                              (_%tl134828134851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134830134846%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134828134851%_))
                              (let ((_%e134833134854%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134828134851%_))))
                                (let ((_%hd134832134857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134833134854%_)))
                                      (_%tl134831134859%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134833134854%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134831134859%_))
                                      (let ((_%e134836134862%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134831134859%_))))
                                        (let ((_%hd134835134865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134836134862%_)))
                                              (_%tl134834134867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134836134862%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134834134867%_))
                                              ((lambda (_%L134870%_
                                                        _%L134871%_)
                                                 (let* ((_%eid134886%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L134871%_)))
                                                        (_%phi134888%_
                                                         (let ((__tmp144938
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp144938 '1)))
                (_%block134890%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self134821%_ 'state))
                  _%phi134888%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g134893134900%_
                                                           (lambda (_%g134894134897%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g134894134897%_))))
                  (_%g134892134918%_
                   (lambda (_%g134894134903%_)
                     ((lambda (_%L134905%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self134821%_ 'state))
                         _%phi134888%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L134905%_ (cons _%L134870%_ '())))))
                      _%g134894134903%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g134892134918%_
                                                      _%eid134886%_))
                                                   (if _%block134890%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block134890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L134871%_)
                                             (cons _%eid134886%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L134871%_)
                           (cons _%eid134886%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd134835134865%_
                                               _%hd134832134857%_)
                                              (_%g134824134841%_
                                               _%g134825134844%_))))
                                      (_%g134824134841%_ _%g134825134844%_))))
                              (_%g134824134841%_ _%g134825134844%_))))
                      (_%g134824134841%_ _%g134825134844%_)))))
          (_%g134823134921%_ _%stx134822%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self134753%_ _%stx134754%_)
        (let* ((_%g134756134773%_
                (lambda (_%g134757134770%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134757134770%_))))
               (_%g134755134818%_
                (lambda (_%g134757134776%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134757134776%_))
                      (let ((_%e134762134778%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134757134776%_))))
                        (let ((_%hd134761134781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134762134778%_)))
                              (_%tl134760134783%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134762134778%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134760134783%_))
                              (let ((_%e134765134786%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134760134783%_))))
                                (let ((_%hd134764134789%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134765134786%_)))
                                      (_%tl134763134791%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134765134786%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134763134791%_))
                                      (let ((_%e134768134794%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134763134791%_))))
                                        (let ((_%hd134767134797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134768134794%_)))
                                              (_%tl134766134799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134768134794%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134766134799%_))
                                              ((lambda (_%L134802%_
                                                        _%L134803%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L134803%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L134802%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd134767134797%_
                                               _%hd134764134789%_)
                                              (_%g134756134773%_
                                               _%g134757134776%_))))
                                      (_%g134756134773%_ _%g134757134776%_))))
                              (_%g134756134773%_ _%g134757134776%_))))
                      (_%g134756134773%_ _%g134757134776%_)))))
          (_%g134755134818%_ _%stx134754%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self134750%_ _%stx134751%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self134750%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx134751%_)
        (gxc#generate-meta-define-values% _%self134750%_ _%stx134751%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self134747%_ _%stx134748%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self134747%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx134748%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp144940 (list)) (__tmp144939 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp144940
         '(src n open blocks)
         __tmp144939
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args134744%_
        (apply make-instance gxc#meta-state::t _%$args134744%_)))
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
      (lambda (_%self134730%_ _%ctx134731%_)
        (let ((_%self134734%_ _%self134730%_))
          (if (let ((__tmp144941
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self134734%_))))
                (declare (not safe))
                (##fx< '4 __tmp144941))
              (begin
                (let ((__tmp144942
                       (let ((__tmp144943
                              (##structure-ref
                               _%ctx134731%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp144943))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134734%_
                   __tmp144942
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self134734%_ '1 '2 '#f '#f))
                (let ((__tmp144944
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134734%_
                   __tmp144944
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self134734%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp144945
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self134734%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self134734%_
                       '4
                       __tmp144945))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp144947 (list)) (__tmp144946 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp144947
         '(ctx phi n code)
         __tmp144946
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args134605%_
        (apply make-instance gxc#meta-state-block::t _%$args134605%_)))
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
      (lambda (_%state134564%_ _%phi134565%_)
        (let* ((_%state134566134574%_ _%state134564%_)
               (_%E134568134578%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state134566134574%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K134569134587%_
                (lambda (_%open134581%_ _%n134582%_ _%src134583%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open134581%_ _%phi134565%_))
                      '#f
                      (let ((_%block-ref134585%_
                             (let ((__tmp144948 (number->string _%n134582%_)))
                               (declare (not safe))
                               (##string-append
                                _%src134583%_
                                '"~"
                                __tmp144948))))
                        (##structure-set!
                         _%state134564%_
                         (let () (declare (not safe)) (##fx+ _%n134582%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp144949
                               (let ((__tmp144950
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp144950
                                  _%phi134565%_
                                  _%n134582%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open134581%_ _%phi134565%_ __tmp144949))
                        _%block-ref134585%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state134566134574%_
                 'gxc#meta-state::t))
              (let* ((_%e134570134590%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134566134574%_
                         '1
                         '#f
                         '#f)))
                     (_%src134593%_ _%e134570134590%_)
                     (_%e134571134595%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134566134574%_
                         '2
                         '#f
                         '#f)))
                     (_%n134598%_ _%e134571134595%_)
                     (_%e134572134600%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134566134574%_
                         '3
                         '#f
                         '#f)))
                     (_%open134603%_ _%e134572134600%_))
                (_%K134569134587%_ _%open134603%_ _%n134598%_ _%src134593%_))
              (_%E134568134578%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state134558%_ _%phi134559%_ _%stx134560%_)
        (let ((_%block134562%_
               (let ((__tmp144951
                      (##structure-ref
                       _%state134558%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp144951 _%phi134559%_))))
          (##structure-set!
           _%block134562%_
           (cons _%stx134560%_
                 (##structure-ref
                  _%block134562%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state134552%_)
        (##structure-set!
         _%state134552%_
         (let ((__tmp144954
                (lambda (_%_134554%_ _%block134555%_ _%r134556%_)
                  (cons _%block134555%_ _%r134556%_)))
               (__tmp144953
                (##structure-ref _%state134552%_ '4 gxc#meta-state::t '#f))
               (__tmp144952
                (##structure-ref _%state134552%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp144954 __tmp144953 __tmp144952))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state134552%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state134504%_)
        (gxc#meta-state-end-phi! _%state134504%_)
        (let ((__tmp144956
               (lambda (_%block134506%_ _%r134507%_)
                 (let* ((_%block134508134517%_ _%block134506%_)
                        (_%E134510134521%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block134508134517%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K134511134529%_
                         (lambda (_%code134524%_
                                  _%n134525%_
                                  _%phi134526%_
                                  _%ctx134527%_)
                           (if (null? _%code134524%_)
                               _%r134507%_
                               (cons (cons _%ctx134527%_
                                           (cons _%phi134526%_
                                                 (cons _%n134525%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code134524%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r134507%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block134508134517%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e134512134532%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134508134517%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx134535%_ _%e134512134532%_)
                              (_%e134513134537%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134508134517%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi134540%_ _%e134513134537%_)
                              (_%e134514134542%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134508134517%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n134545%_ _%e134514134542%_)
                              (_%e134515134547%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134508134517%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code134550%_ _%e134515134547%_))
                         (_%K134511134529%_
                          _%code134550%_
                          _%n134545%_
                          _%phi134540%_
                          _%ctx134535%_))
                       (_%E134510134521%_)))))
              (__tmp144955
               (##structure-ref _%state134504%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp144956 '() __tmp144955))))
    (define gxc#collect-expression-refs
      (lambda (_%stx134500%_)
        (let ((_%ht134502%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht134502%_ _%stx134500%_)
          _%ht134502%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self134443%_ _%stx134444%_)
        (let* ((_%g134446134459%_
                (lambda (_%g134447134456%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134447134456%_))))
               (_%g134445134497%_
                (lambda (_%g134447134462%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134447134462%_))
                      (let ((_%e134451134464%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134447134462%_))))
                        (let ((_%hd134450134467%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134451134464%_)))
                              (_%tl134449134469%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134451134464%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134449134469%_))
                              (let ((_%e134454134472%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134449134469%_))))
                                (let ((_%hd134453134475%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134454134472%_)))
                                      (_%tl134452134477%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134454134472%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134452134477%_))
                                      ((lambda (_%L134480%_)
                                         (let* ((_%bind134492%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L134480%_)))
                                                (_%eid134494%_
                                                 (if _%bind134492%_
                                                     (##structure-ref
                                                      _%bind134492%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L134480%_))))
                                                (__tmp144957
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self134443%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp144957
                                            _%eid134494%_
                                            _%eid134494%_)))
                                       _%hd134453134475%_)
                                      (_%g134446134459%_ _%g134447134462%_))))
                              (_%g134446134459%_ _%g134447134462%_))))
                      (_%g134446134459%_ _%g134447134462%_)))))
          (_%g134445134497%_ _%stx134444%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self134370%_ _%stx134371%_)
        (let* ((_%g134373134390%_
                (lambda (_%g134374134387%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134374134387%_))))
               (_%g134372134440%_
                (lambda (_%g134374134393%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134374134393%_))
                      (let ((_%e134379134395%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134374134393%_))))
                        (let ((_%hd134378134398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134379134395%_)))
                              (_%tl134377134400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134379134395%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134377134400%_))
                              (let ((_%e134382134403%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134377134400%_))))
                                (let ((_%hd134381134406%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134382134403%_)))
                                      (_%tl134380134408%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134382134403%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134380134408%_))
                                      (let ((_%e134385134411%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134380134408%_))))
                                        (let ((_%hd134384134414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134385134411%_)))
                                              (_%tl134383134416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134385134411%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134383134416%_))
                                              ((lambda (_%L134419%_
                                                        _%L134420%_)
                                                 (let* ((_%bind134435%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L134420%_)))
                                                        (_%eid134437%_
                                                         (if _%bind134435%_
                                                             (##structure-ref
                                                              _%bind134435%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L134420%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp144958
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self134370%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp144958
                                                      _%eid134437%_
                                                      _%eid134437%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self134370%_
                                                      _%L134419%_))))
                                               _%hd134384134414%_
                                               _%hd134381134406%_)
                                              (_%g134373134390%_
                                               _%g134374134393%_))))
                                      (_%g134373134390%_ _%g134374134393%_))))
                              (_%g134373134390%_ _%g134374134393%_))))
                      (_%g134373134390%_ _%g134374134393%_)))))
          (_%g134372134440%_ _%stx134371%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self134327%_ _%stx134328%_)
        (let* ((_%g134330134340%_
                (lambda (_%g134331134337%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134331134337%_))))
               (_%g134329134367%_
                (lambda (_%g134331134343%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134331134343%_))
                      (let ((_%e134335134345%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134331134343%_))))
                        (let ((_%hd134334134348%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134335134345%_)))
                              (_%tl134333134350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134335134345%_))))
                          ((lambda (_%L134353%_)
                             (let ((__tmp144959
                                    (lambda (_%g134362134364%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self134327%_
                                         _%g134362134364%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp144959 _%L134353%_)))
                           _%tl134333134350%_)))
                      (_%g134330134340%_ _%g134331134343%_)))))
          (_%g134329134367%_ _%stx134328%_))))
    (define gxc#count-values-single%
      (lambda (_%self134324%_ _%stx134325%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self134190%_ _%stx134191%_)
        (let* ((_%__stx144702144703%_ _%stx134191%_)
               (_%g134194134223%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144702144703%_)))))
          (let ((_%__kont144704144705%_
                 (lambda (_%L134291%_ _%L134292%_)
                   (length (let ((__tmp144960
                                  (lambda (_%g134313134316%_ _%g134314134318%_)
                                    (cons _%g134313134316%_
                                          _%g134314134318%_))))
                             (declare (not safe))
                             (__foldr1 __tmp144960 '() _%L134291%_)))))
                (_%__kont144708144709%_ (lambda () '#f)))
            (let ((_%__match144747144748%_
                   (lambda (_%e134200134235%_
                            _%hd134199134238%_
                            _%tl134198134240%_
                            _%e134203134243%_
                            _%hd134202134246%_
                            _%tl134201134248%_
                            _%e134206134251%_
                            _%hd134205134254%_
                            _%tl134204134256%_
                            _%e134209134259%_
                            _%hd134208134262%_
                            _%tl134207134264%_
                            _%__splice144706144707%_
                            _%target134210134267%_
                            _%tl134212134269%_)
                     (letrec ((_%loop134213134272%_
                               (lambda (_%hd134211134275%_
                                        _%rand134217134277%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd134211134275%_))
                                     (let ((_%e134214134280%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd134211134275%_))))
                                       (let ((_%lp-tl134216134285%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e134214134280%_)))
                                             (_%lp-hd134215134283%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e134214134280%_))))
                                         (_%loop134213134272%_
                                          _%lp-tl134216134285%_
                                          (cons _%lp-hd134215134283%_
                                                _%rand134217134277%_))))
                                     (let ((_%rand134218134288%_
                                            (reverse _%rand134217134277%_)))
                                       (let ((_%L134291%_ _%rand134218134288%_)
                                             (_%L134292%_ _%hd134208134262%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L134292%_
                                                'values))
                                             (_%__kont144704144705%_
                                              _%L134291%_
                                              _%L134292%_)
                                             (_%__kont144708144709%_))))))))
                       (_%loop134213134272%_ _%target134210134267%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144702144703%_))
                  (let ((_%e134200134235%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144702144703%_))))
                    (let ((_%tl134198134240%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e134200134235%_)))
                          (_%hd134199134238%_
                           (let ()
                             (declare (not safe))
                             (##car _%e134200134235%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl134198134240%_))
                          (let ((_%e134203134243%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl134198134240%_))))
                            (let ((_%tl134201134248%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e134203134243%_)))
                                  (_%hd134202134246%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e134203134243%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd134202134246%_))
                                  (let ((_%e134206134251%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd134202134246%_))))
                                    (let ((_%tl134204134256%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134206134251%_)))
                                          (_%hd134205134254%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134206134251%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd134205134254%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd134205134254%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl134204134256%_))
                                                  (let ((_%e134209134259%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl134204134256%_))))
                                                    (let ((_%tl134207134264%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e134209134259%_)))
                                                          (_%hd134208134262%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e134209134259%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl134207134264%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl134201134248%_))
                      (let ((_%__splice144706144707%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl134201134248%_
                                '0))))
                        (let ((_%tl134212134269%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144706144707%_ '1)))
                              (_%target134210134267%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144706144707%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl134212134269%_))
                              (_%__match144747144748%_
                               _%e134200134235%_
                               _%hd134199134238%_
                               _%tl134198134240%_
                               _%e134203134243%_
                               _%hd134202134246%_
                               _%tl134201134248%_
                               _%e134206134251%_
                               _%hd134205134254%_
                               _%tl134204134256%_
                               _%e134209134259%_
                               _%hd134208134262%_
                               _%tl134207134264%_
                               _%__splice144706144707%_
                               _%target134210134267%_
                               _%tl134212134269%_)
                              (_%__kont144708144709%_))))
                      (_%__kont144708144709%_))
                  (_%__kont144708144709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144708144709%_))
                                              (_%__kont144708144709%_))
                                          (_%__kont144708144709%_))))
                                  (_%__kont144708144709%_))))
                          (_%__kont144708144709%_))))
                  (_%__kont144708144709%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self134093%_ _%stx134094%_)
        (let* ((_%g134096134117%_
                (lambda (_%g134097134114%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134097134114%_))))
               (_%g134095134187%_
                (lambda (_%g134097134120%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134097134120%_))
                      (let ((_%e134103134122%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134097134120%_))))
                        (let ((_%hd134102134125%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134103134122%_)))
                              (_%tl134101134127%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134103134122%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134101134127%_))
                              (let ((_%e134106134130%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134101134127%_))))
                                (let ((_%hd134105134133%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134106134130%_)))
                                      (_%tl134104134135%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134106134130%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134104134135%_))
                                      (let ((_%e134109134138%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134104134135%_))))
                                        (let ((_%hd134108134141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134109134138%_)))
                                              (_%tl134107134143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134109134138%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl134107134143%_))
                                              (let ((_%e134112134146%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl134107134143%_))))
                                                (let ((_%hd134111134149%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e134112134146%_)))
                                                      (_%tl134110134151%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e134112134146%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl134110134151%_))
                                                      ((lambda (_%L134154%_
                                                                _%L134155%_
                                                                _%L134156%_)
                                                         (let ((_%c1134173134175%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self134093%_ _%L134155%_))))
                   (if _%c1134173134175%_
                       (let* ((_%c1134178%_ _%c1134173134175%_)
                              (_%c2134179134181%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self134093%_
                                  _%L134154%_))))
                         (if _%c2134179134181%_
                             (let ((_%c2134184%_ _%c2134179134181%_))
                               (if (fx= _%c1134178%_ _%c2134184%_)
                                   _%c1134178%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd134111134149%_
               _%hd134108134141%_
               _%hd134105134133%_)
              (_%g134096134117%_ _%g134097134120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g134096134117%_
                                               _%g134097134120%_))))
                                      (_%g134096134117%_ _%g134097134120%_))))
                              (_%g134096134117%_ _%g134097134120%_))))
                      (_%g134096134117%_ _%g134097134120%_)))))
          (_%g134095134187%_ _%stx134094%_))))))
