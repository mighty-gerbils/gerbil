(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1770607524)
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
      (let ((__tmp203825 (list gxc#::void::t))
            (__tmp203824 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp203825
         '()
         __tmp203824
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args202439%_
        (apply make-instance gxc#::collect-bindings::t _%$args202439%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp203826
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
        (__make-atomic-promise __tmp203826)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx202431%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self202434%_
                (let ((__obj203800
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj203800))
               (__tmp203827
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self202434%_ _%stx202431%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp203827
           gxc#current-compile-method
           _%self202434%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp203829 (list gxc#::void::t))
            (__tmp203828 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp203829
         '(modules)
         __tmp203828
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args202428%_
        (apply make-instance gxc#::lift-modules::t _%$args202428%_)))
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
      (let ((__tmp203830
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
        (__make-atomic-promise __tmp203830)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords202403%_ _%modules202400202404%_ _%stx202405%_)
        (let ((_%modules202408%_
               (if (eq? _%modules202400202404%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules202400202404%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self202410%_
                  (let ((__obj203802
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj203802
                       _%modules202408%_
                       '1
                       '#f
                       '#f))
                    __obj203802))
                 (__tmp203831
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self202410%_ _%stx202405%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp203831
             gxc#current-compile-method
             _%self202410%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords202417%_ . _%args202418%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords202417%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202417%_
                  'modules:
                  absent-value))
               _%args202418%_)))
    (define gxc#apply-lift-modules
      (lambda _%args202401202424%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args202401202424%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp203833 (list)) (__tmp203832 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp203833
         '()
         __tmp203832
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args202396%_
        (apply make-instance gxc#::find-runtime-code::t _%$args202396%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp203834
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
        (__make-atomic-promise __tmp203834)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx202388%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self202391%_
                (let ((__obj203804
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj203804))
               (__tmp203835
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self202391%_ _%stx202388%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp203835
           gxc#current-compile-method
           _%self202391%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp203837 (list gxc#::false::t))
            (__tmp203836 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp203837
         '()
         __tmp203836
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args202385%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args202385%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp203838
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
        (__make-atomic-promise __tmp203838)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx202377%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self202380%_
                (let ((__obj203806
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj203806))
               (__tmp203839
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self202380%_ _%stx202377%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp203839
           gxc#current-compile-method
           _%self202380%_))))
    (define gxc#::count-values::t
      (let ((__tmp203841 (list gxc#::false-expression::t))
            (__tmp203840 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp203841
         '()
         __tmp203840
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args202374%_
        (apply make-instance gxc#::count-values::t _%$args202374%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp203842
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
        (__make-atomic-promise __tmp203842)))
    (define gxc#apply-count-values
      (lambda (_%stx202366%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self202369%_
                (let ((__obj203808
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj203808))
               (__tmp203843
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self202369%_ _%stx202366%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp203843
           gxc#current-compile-method
           _%self202369%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp203844 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp203844
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args202363%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args202363%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp203845
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
        (__make-atomic-promise __tmp203845)))
    (define gxc#::generate-loader::t
      (let ((__tmp203847 (list gxc#::generate-runtime-empty::t))
            (__tmp203846 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp203847
         '()
         __tmp203846
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args202359%_
        (apply make-instance gxc#::generate-loader::t _%$args202359%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp203848
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
        (__make-atomic-promise __tmp203848)))
    (define gxc#apply-generate-loader
      (lambda (_%stx202351%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self202354%_
                (let ((__obj203811
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj203811))
               (__tmp203849
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self202354%_ _%stx202351%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp203849
           gxc#current-compile-method
           _%self202354%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp203850 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp203850
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args202348%_
        (apply make-instance gxc#::generate-runtime::t _%$args202348%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp203851
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
        (__make-atomic-promise __tmp203851)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx202340%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self202343%_
                (let ((__obj203813
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj203813))
               (__tmp203852
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self202343%_ _%stx202340%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp203852
           gxc#current-compile-method
           _%self202343%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp203854 (list gxc#::generate-runtime::t))
            (__tmp203853 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp203854
         '()
         __tmp203853
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args202337%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args202337%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp203855
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
        (__make-atomic-promise __tmp203855)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx202329%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self202332%_
                (let ((__obj203815
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj203815))
               (__tmp203856
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self202332%_ _%stx202329%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp203856
           gxc#current-compile-method
           _%self202332%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp203857 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp203857
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args202326%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args202326%_)))
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
      (let ((__tmp203858
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
        (__make-atomic-promise __tmp203858)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords202301%_ _%table202298202302%_ _%stx202303%_)
        (let ((_%table202306%_
               (if (eq? _%table202298202302%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table202298202302%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self202308%_
                  (let ((__obj203817
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj203817
                       _%table202306%_
                       '1
                       '#f
                       '#f))
                    __obj203817))
                 (__tmp203859
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self202308%_ _%stx202303%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp203859
             gxc#current-compile-method
             _%self202308%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords202315%_ . _%args202316%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords202315%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202315%_
                  'table:
                  absent-value))
               _%args202316%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args202299202322%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args202299202322%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp203861 (list gxc#::void-expression::t))
            (__tmp203860 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp203861
         '(state)
         __tmp203860
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args202294%_
        (apply make-instance gxc#::generate-meta::t _%$args202294%_)))
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
      (let ((__tmp203862
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
        (__make-atomic-promise __tmp203862)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords202269%_ _%state202266202270%_ _%stx202271%_)
        (let ((_%state202274%_
               (if (eq? _%state202266202270%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state202266202270%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self202276%_
                  (let ((__obj203819
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj203819
                       _%state202274%_
                       '1
                       '#f
                       '#f))
                    __obj203819))
                 (__tmp203863
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self202276%_ _%stx202271%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp203863
             gxc#current-compile-method
             _%self202276%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords202283%_ . _%args202284%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords202283%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202283%_
                  'state:
                  absent-value))
               _%args202284%_)))
    (define gxc#apply-generate-meta
      (lambda _%args202267202290%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args202267202290%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp203865 (list)) (__tmp203864 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp203865
         '(state)
         __tmp203864
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args202262%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args202262%_)))
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
      (let ((__tmp203866
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
        (__make-atomic-promise __tmp203866)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords202237%_ _%state202234202238%_ _%stx202239%_)
        (let ((_%state202242%_
               (if (eq? _%state202234202238%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state202234202238%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self202244%_
                  (let ((__obj203821
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj203821
                       _%state202242%_
                       '1
                       '#f
                       '#f))
                    __obj203821))
                 (__tmp203867
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self202244%_ _%stx202239%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp203867
             gxc#current-compile-method
             _%self202244%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords202251%_ . _%args202252%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords202251%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202251%_
                  'state:
                  absent-value))
               _%args202252%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args202235202258%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args202235202258%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self202163%_ _%stx202164%_)
        (let* ((_%g202166202183%_
                (lambda (_%g202167202180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202167202180%_))))
               (_%g202165202230%_
                (lambda (_%g202167202186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202167202186%_))
                      (let ((_%e202170202188%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202167202186%_))))
                        (let ((_%hd202171202191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202170202188%_)))
                              (_%tl202172202193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202170202188%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202172202193%_))
                              (let ((_%e202173202196%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202172202193%_))))
                                (let ((_%hd202174202199%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202173202196%_)))
                                      (_%tl202175202201%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202173202196%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202175202201%_))
                                      (let ((_%e202176202204%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202175202201%_))))
                                        (let ((_%hd202177202207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202176202204%_)))
                                              (_%tl202178202209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202176202204%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202178202209%_))
                                              ((lambda (_%g202168202212%_
                                                        _%g202169202213%_)
                                                 (let ((__tmp203868
                                                        (lambda (_%bind202228%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind202228%_))
                      (gxc#add-module-binding! _%bind202228%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp203868
                                                    _%g202169202213%_)))
                                               _%hd202177202207%_
                                               _%hd202174202199%_)
                                              (_%g202166202183%_
                                               _%g202167202186%_))))
                                      (_%g202166202183%_ _%g202167202186%_))))
                              (_%g202166202183%_ _%g202167202186%_))))
                      (_%g202166202183%_ _%g202167202186%_)))))
          (_%g202165202230%_ _%stx202164%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self202095%_ _%stx202096%_)
        (let* ((_%g202098202115%_
                (lambda (_%g202099202112%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202099202112%_))))
               (_%g202097202160%_
                (lambda (_%g202099202118%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202099202118%_))
                      (let ((_%e202102202120%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202099202118%_))))
                        (let ((_%hd202103202123%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202102202120%_)))
                              (_%tl202104202125%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202102202120%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202104202125%_))
                              (let ((_%e202105202128%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202104202125%_))))
                                (let ((_%hd202106202131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202105202128%_)))
                                      (_%tl202107202133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202105202128%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202107202133%_))
                                      (let ((_%e202108202136%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202107202133%_))))
                                        (let ((_%hd202109202139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202108202136%_)))
                                              (_%tl202110202141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202108202136%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202110202141%_))
                                              ((lambda (_%g202100202144%_
                                                        _%g202101202145%_)
                                                 (gxc#add-module-binding!
                                                  _%g202101202145%_
                                                  '#t))
                                               _%hd202109202139%_
                                               _%hd202106202131%_)
                                              (_%g202098202115%_
                                               _%g202099202118%_))))
                                      (_%g202098202115%_ _%g202099202118%_))))
                              (_%g202098202115%_ _%g202099202118%_))))
                      (_%g202098202115%_ _%g202099202118%_)))))
          (_%g202097202160%_ _%stx202096%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self202037%_ _%stx202038%_)
        (let* ((_%g202040202054%_
                (lambda (_%g202041202051%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202041202051%_))))
               (_%g202039202092%_
                (lambda (_%g202041202057%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202041202057%_))
                      (let ((_%e202044202059%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202041202057%_))))
                        (let ((_%hd202045202062%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202044202059%_)))
                              (_%tl202046202064%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202044202059%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202046202064%_))
                              (let ((_%e202047202067%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202046202064%_))))
                                (let ((_%hd202048202070%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202047202067%_)))
                                      (_%tl202049202072%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202047202067%_))))
                                  ((lambda (_%g202042202075%_
                                            _%g202043202076%_)
                                     (let ((_%ctx202089%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g202043202076%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self202037%_
                                           'modules))
                                        (cons _%ctx202089%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self202037%_
                                                        'modules)))))
                                       (let ((__tmp203869
                                              (lambda ()
                                                (let ((__tmp203870
                                                       (##structure-ref
                                                        _%ctx202089%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self202037%_
                                                   __tmp203870)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp203869
                                          gx#current-expander-context
                                          _%ctx202089%_))))
                                   _%tl202049202072%_
                                   _%hd202048202070%_)))
                              (_%g202040202054%_ _%g202041202057%_))))
                      (_%g202040202054%_ _%g202041202057%_)))))
          (_%g202039202092%_ _%stx202038%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls201991201993%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls201991201993%_
              (let ((_%decls201995%_ _%decls201991201993%_))
                (let _%lp201997%_ ((_%rest201999%_ _%decls201995%_))
                  (let* ((_%rest202000202008%_ _%rest201999%_)
                         (_%else202002202016%_ (lambda () '#f))
                         (_%K202004202025%_
                          (lambda (_%decls202019%_ _%decl202020%_)
                            (if (equal? _%decl202020%_ '(not safe))
                                '#t
                                (if (equal? _%decl202020%_ '(safe))
                                    '#f
                                    (_%lp201997%_ _%decls202019%_))))))
                    (if (pair? _%rest202000202008%_)
                        (let ((_%hd202005202028%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest202000202008%_)))
                              (_%tl202006202030%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest202000202008%_))))
                          (let* ((_%decl202033%_ _%hd202005202028%_)
                                 (_%decls202035%_ _%tl202006202030%_))
                            (_%K202004202025%_
                             _%decls202035%_
                             _%decl202033%_)))
                        (_%else202002202016%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id201985%_ _%syntax?201986%_)
        (let ((_%eid201988%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id201985%_))
                '1
                gx#binding::t
                '#f))
              (_%ht201989%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid201988%_))
              '#!void
              (let ((__tmp203871
                     (let ((__tmp203872
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid201988%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp203872 _%syntax?201986%_))))
                (declare (not safe))
                (hash-put! _%ht201989%_ _%eid201988%_ __tmp203871))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self201982%_ _%stx201983%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self201829%_ _%stx201830%_)
        (letrec ((_%simplify201832%_
                  (lambda (_%body201880%_)
                    (let _%lp201882%_ ((_%rest201884%_ _%body201880%_)
                                       (_%r201885%_ '()))
                      (let* ((_%rest201886201894%_ _%rest201884%_)
                             (_%else201888201902%_
                              (lambda () (reverse _%r201885%_)))
                             (_%K201890201970%_
                              (lambda (_%rest201905%_ _%hd201906%_)
                                (let* ((_%hd201907201923%_ _%hd201906%_)
                                       (_%else201911201931%_
                                        (lambda ()
                                          (_%lp201882%_
                                           _%rest201905%_
                                           (cons _%hd201906%_ _%r201885%_)))))
                                  (let ((_%K201919201960%_
                                         (lambda (_%exprs201958%_)
                                           (_%lp201882%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest201905%_
                                               _%exprs201958%_))
                                            _%r201885%_)))
                                        (_%K201914201944%_
                                         (lambda ()
                                           (if (null? _%rest201905%_)
                                               (_%lp201882%_
                                                _%rest201905%_
                                                (cons _%hd201906%_
                                                      _%r201885%_))
                                               (_%lp201882%_
                                                _%rest201905%_
                                                _%r201885%_))))
                                        (_%K201913201936%_
                                         (lambda ()
                                           (if (null? _%rest201905%_)
                                               (_%lp201882%_
                                                _%rest201905%_
                                                (cons _%hd201906%_
                                                      _%r201885%_))
                                               (_%lp201882%_
                                                _%rest201905%_
                                                _%r201885%_)))))
                                    (let ((_%try-match201910201939%_
                                           (lambda ()
                                             (if (symbol? _%hd201907201923%_)
                                                 (_%K201913201936%_)
                                                 (_%else201911201931%_)))))
                                      (if (pair? _%hd201907201923%_)
                                          (let ((_%tl201921201965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd201907201923%_)))
                                                (_%hd201920201963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd201907201923%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd201920201963%_
                                                         'begin))
                                                (let ((_%exprs201968%_
                                                       _%tl201921201965%_))
                                                  (_%K201919201960%_
                                                   _%exprs201968%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd201920201963%_
                                                             'quote))
                                                    (if (pair? _%tl201921201965%_)
                                                        (let ((_%tl201918201952%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl201921201965%_))))
                  (if (null? _%tl201918201952%_)
                      (_%K201914201944%_)
                      (_%try-match201910201939%_)))
                (_%try-match201910201939%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match201910201939%_))))
                                          (_%try-match201910201939%_))))))))
                        (if (pair? _%rest201886201894%_)
                            (let ((_%hd201891201973%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest201886201894%_)))
                                  (_%tl201892201975%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest201886201894%_))))
                              (let* ((_%hd201978%_ _%hd201891201973%_)
                                     (_%rest201980%_ _%tl201892201975%_))
                                (_%K201890201970%_
                                 _%rest201980%_
                                 _%hd201978%_)))
                            (_%else201888201902%_)))))))
          (let* ((_%g201834201844%_
                  (lambda (_%g201835201841%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201835201841%_))))
                 (_%g201833201877%_
                  (lambda (_%g201835201847%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201835201847%_))
                        (let ((_%e201837201849%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201835201847%_))))
                          (let ((_%hd201838201852%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201837201849%_)))
                                (_%tl201839201854%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201837201849%_))))
                            ((lambda (_%g201836201857%_)
                               (let* ((_%body201872%_
                                       (map (lambda (_%g201867201869%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self201829%_
                                                 _%g201867201869%_)))
                                            _%g201836201857%_))
                                      (_%body201874%_
                                       (_%simplify201832%_ _%body201872%_)))
                                 (if (let ((__tmp203873
                                            (length _%body201874%_)))
                                       (declare (not safe))
                                       (##fx= __tmp203873 '1))
                                     (car _%body201874%_)
                                     (cons 'begin _%body201874%_))))
                             _%tl201839201854%_)))
                        (_%g201834201844%_ _%g201835201847%_)))))
            (_%g201833201877%_ _%stx201830%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self201790%_ _%stx201791%_)
        (let* ((_%g201793201803%_
                (lambda (_%g201794201800%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201794201800%_))))
               (_%g201792201826%_
                (lambda (_%g201794201806%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201794201806%_))
                      (let ((_%e201796201808%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201794201806%_))))
                        (let ((_%hd201797201811%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201796201808%_)))
                              (_%tl201798201813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201796201808%_))))
                          ((lambda (_%g201795201816%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g201795201816%_))))
                           _%tl201798201813%_)))
                      (_%g201793201803%_ _%g201794201806%_)))))
          (_%g201792201826%_ _%stx201791%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self201556%_ _%stx201557%_)
        (let* ((_%__stx202463202464%_ _%stx201557%_)
               (_%g201561201613%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202463202464%_)))))
          (let ((_%__kont202465202466%_
                 (lambda (_%g201563201772%_ _%g201564201773%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self201556%_ _%g201563201772%_))))
                (_%__kont202467202468%_
                 (lambda (_%g201574201720%_
                          _%g201575201721%_
                          _%g201576201722%_)
                   (if (let ((__tmp203874
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g201576201722%_))))
                         (declare (not safe))
                         (##memq __tmp203874 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self201556%_
                          _%g201574201720%_)))))
                (_%__kont202471202472%_
                 (lambda (_%g201598201642%_ _%g201599201643%_)
                   (let ((_%decls201658%_
                          (map gx#syntax->datum _%g201599201643%_)))
                     (let ((__tmp203877
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls201658%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self201556%_
                                                   _%g201598201642%_))
                                                '())))))
                           (__tmp203875
                            (let ((__tmp203876
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp203876 _%decls201658%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp203877
                        gxc#current-compile-decls
                        __tmp203875))))))
            (let* ((_%__match202518202519%_
                    (lambda (_%e201577201666%_
                             _%hd201578201669%_
                             _%tl201579201671%_
                             _%e201580201674%_
                             _%hd201581201677%_
                             _%tl201582201679%_
                             _%e201583201682%_
                             _%hd201584201685%_
                             _%tl201585201687%_
                             _%__splice202469202470%_
                             _%target201586201690%_
                             _%tl201588201692%_)
                      (letrec ((_%loop201589201695%_
                                (lambda (_%hd201587201698%_
                                         _%param201593201700%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd201587201698%_))
                                      (let ((_%e201590201702%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd201587201698%_))))
                                        (let ((_%lp-tl201592201707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201590201702%_)))
                                              (_%lp-hd201591201705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201590201702%_))))
                                          (_%loop201589201695%_
                                           _%lp-tl201592201707%_
                                           (cons _%lp-hd201591201705%_
                                                 _%param201593201700%_))))
                                      (let ((_%param201594201710%_
                                             (reverse _%param201593201700%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl201582201679%_))
                                            (let ((_%e201595201712%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl201582201679%_))))
                                              (let ((_%tl201597201717%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201595201712%_)))
                                                    (_%hd201596201715%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201595201712%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl201597201717%_))
                                                    (let ((_%g201574201720%_
                                                           _%hd201596201715%_)
                                                          (_%g201575201721%_
                                                           _%param201594201710%_)
                                                          (_%g201576201722%_
                                                           _%hd201584201685%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g201576201722%_))
                       (not (let ((__tmp203878
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g201576201722%_))))
                              (declare (not safe))
                              (##memq __tmp203878 gxc#gambit-annotations))))
                  (_%__kont202467202468%_
                   _%g201574201720%_
                   _%g201575201721%_
                   _%g201576201722%_)
                  (_%__kont202471202472%_
                   _%hd201596201715%_
                   _%hd201581201677%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g201561201613%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g201561201613%_))))))))
                        (_%loop201589201695%_ _%target201586201690%_ '()))))
                   (_%__match202492202493%_
                    (lambda (_%e201565201748%_
                             _%hd201566201751%_
                             _%tl201567201753%_
                             _%e201568201756%_
                             _%hd201569201759%_
                             _%tl201570201761%_
                             _%e201571201764%_
                             _%hd201572201767%_
                             _%tl201573201769%_)
                      (let ((_%g201563201772%_ _%hd201572201767%_)
                            (_%g201564201773%_ _%hd201569201759%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g201564201773%_))
                            (_%__kont202465202466%_
                             _%g201563201772%_
                             _%g201564201773%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd201569201759%_))
                                (let ((_%e201583201682%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd201569201759%_))))
                                  (let ((_%tl201585201687%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201583201682%_)))
                                        (_%hd201584201685%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201583201682%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl201585201687%_))
                                        (let ((_%__splice202469202470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl201585201687%_
                                                  '0))))
                                          (let ((_%tl201588201692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice202469202470%_
                                                    '1)))
                                                (_%target201586201690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice202469202470%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201588201692%_))
                                                (_%__match202518202519%_
                                                 _%e201565201748%_
                                                 _%hd201566201751%_
                                                 _%tl201567201753%_
                                                 _%e201568201756%_
                                                 _%hd201569201759%_
                                                 _%tl201570201761%_
                                                 _%e201583201682%_
                                                 _%hd201584201685%_
                                                 _%tl201585201687%_
                                                 _%__splice202469202470%_
                                                 _%target201586201690%_
                                                 _%tl201588201692%_)
                                                (_%__kont202471202472%_
                                                 _%hd201572201767%_
                                                 _%hd201569201759%_))))
                                        (_%__kont202471202472%_
                                         _%hd201572201767%_
                                         _%hd201569201759%_))))
                                (_%__kont202471202472%_
                                 _%hd201572201767%_
                                 _%hd201569201759%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202463202464%_))
                  (let ((_%e201565201748%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx202463202464%_))))
                    (let ((_%tl201567201753%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201565201748%_)))
                          (_%hd201566201751%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201565201748%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201567201753%_))
                          (let ((_%e201568201756%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201567201753%_))))
                            (let ((_%tl201570201761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201568201756%_)))
                                  (_%hd201569201759%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201568201756%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201570201761%_))
                                  (let ((_%e201571201764%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201570201761%_))))
                                    (let ((_%tl201573201769%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201571201764%_)))
                                          (_%hd201572201767%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201571201764%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl201573201769%_))
                                          (_%__match202492202493%_
                                           _%e201565201748%_
                                           _%hd201566201751%_
                                           _%tl201567201753%_
                                           _%e201568201756%_
                                           _%hd201569201759%_
                                           _%tl201570201761%_
                                           _%e201571201764%_
                                           _%hd201572201767%_
                                           _%tl201573201769%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd201569201759%_))
                                              (let ((_%e201583201682%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd201569201759%_))))
                                                (let ((_%tl201585201687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201583201682%_)))
                                                      (_%hd201584201685%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201583201682%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl201585201687%_))
                                                      (let ((_%__splice202469202470%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl201585201687%_
                        '0))))
                (let ((_%tl201588201692%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202469202470%_ '1)))
                      (_%target201586201690%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202469202470%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201588201692%_))
                      (_%__match202518202519%_
                       _%e201565201748%_
                       _%hd201566201751%_
                       _%tl201567201753%_
                       _%e201568201756%_
                       _%hd201569201759%_
                       _%tl201570201761%_
                       _%e201583201682%_
                       _%hd201584201685%_
                       _%tl201585201687%_
                       _%__splice202469202470%_
                       _%target201586201690%_
                       _%tl201588201692%_)
                      (let () (declare (not safe)) (_%g201561201613%_)))))
              (let () (declare (not safe)) (_%g201561201613%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g201561201613%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd201569201759%_))
                                      (let ((_%e201583201682%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd201569201759%_))))
                                        (let ((_%tl201585201687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201583201682%_)))
                                              (_%hd201584201685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201583201682%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl201585201687%_))
                                              (let ((_%__splice202469202470%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl201585201687%_
                                                        '0))))
                                                (let ((_%tl201588201692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202469202470%_
                                                          '1)))
                                                      (_%target201586201690%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202469202470%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201588201692%_))
                                                      (_%__match202518202519%_
                                                       _%e201565201748%_
                                                       _%hd201566201751%_
                                                       _%tl201567201753%_
                                                       _%e201568201756%_
                                                       _%hd201569201759%_
                                                       _%tl201570201761%_
                                                       _%e201583201682%_
                                                       _%hd201584201685%_
                                                       _%tl201585201687%_
                                                       _%__splice202469202470%_
                                                       _%target201586201690%_
                                                       _%tl201588201692%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201561201613%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201561201613%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201561201613%_))))))
                          (let () (declare (not safe)) (_%g201561201613%_)))))
                  (let () (declare (not safe)) (_%g201561201613%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self201515%_ _%stx201516%_)
        (let* ((_%g201518201528%_
                (lambda (_%g201519201525%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201519201525%_))))
               (_%g201517201553%_
                (lambda (_%g201519201531%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201519201531%_))
                      (let ((_%e201521201533%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201519201531%_))))
                        (let ((_%hd201522201536%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201521201533%_)))
                              (_%tl201523201538%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201521201533%_))))
                          ((lambda (_%g201520201541%_)
                             (let ((_%decls201551%_
                                    (map gx#syntax->datum _%g201520201541%_)))
                               (let ((__tmp203879
                                      (let ((__tmp203880
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp203880
                                         _%decls201551%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp203879))
                               (cons 'declare _%decls201551%_)))
                           _%tl201523201538%_)))
                      (_%g201518201528%_ _%g201519201531%_)))))
          (_%g201517201553%_ _%stx201516%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self201262%_ _%stx201263%_)
        (let* ((_%g201265201282%_
                (lambda (_%g201266201279%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201266201279%_))))
               (_%g201264201512%_
                (lambda (_%g201266201285%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201266201285%_))
                      (let ((_%e201269201287%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201266201285%_))))
                        (let ((_%hd201270201290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201269201287%_)))
                              (_%tl201271201292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201269201287%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201271201292%_))
                              (let ((_%e201272201295%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201271201292%_))))
                                (let ((_%hd201273201298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201272201295%_)))
                                      (_%tl201274201300%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201272201295%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201274201300%_))
                                      (let ((_%e201275201303%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201274201300%_))))
                                        (let ((_%hd201276201306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201275201303%_)))
                                              (_%tl201277201308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201275201303%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201277201308%_))
                                              ((lambda (_%g201267201311%_
                                                        _%g201268201312%_)
                                                 (let* ((_%__stx202571202572%_
                                                         _%g201268201312%_)
                                                        (_%g201329201343%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx202571202572%_)))))
                                                   (let ((_%__kont202573202574%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self201262%_
                                                               _%g201267201311%_))))
                                                         (_%__kont202575202576%_
                                                          (lambda (_%g201335201475%_)
                                                            (let ((_%eid201484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g201335201475%_))))
                      (let ((_%lambda-expr201485201487%_
                             (gxc#apply-find-lambda-expression
                              _%g201267201311%_)))
                        (if _%lambda-expr201485201487%_
                            (let* ((_%lambda-expr201489%_
                                    _%lambda-expr201485201487%_)
                                   (__tmp203881
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp203881
                               _%lambda-expr201489%_
                               _%eid201484%_))
                            '#f))
                      (cons 'define
                            (cons _%eid201484%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self201262%_
                                           _%g201267201311%_))
                                        '()))))))
                 (_%__kont202577202578%_
                  (lambda ()
                    (let* ((_%tmp201350%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body201459%_
                            (let _%lp201352%_ ((_%rest201354%_
                                                _%g201268201312%_)
                                               (_%k201355%_ '0)
                                               (_%r201356%_ '()))
                              (let* ((_%__stx202541202542%_ _%rest201354%_)
                                     (_%g201361201378%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx202541202542%_)))))
                                (let ((_%__kont202543202544%_
                                       (lambda (_%g201363201446%_)
                                         (_%lp201352%_
                                          _%g201363201446%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k201355%_ '1))
                                          _%r201356%_)))
                                      (_%__kont202545202546%_
                                       (lambda (_%g201368201419%_
                                                _%g201369201420%_)
                                         (_%lp201352%_
                                          _%g201368201419%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k201355%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g201369201420%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp201350%_
                           _%k201355%_
                           _%g201368201419%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r201356%_))))
                                      (_%__kont202547202548%_
                                       (lambda (_%g201373201390%_)
                                         (let ((__tmp203882
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g201373201390%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp201350%_
                                 _%k201355%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (foldl__0
                                            cons
                                            __tmp203882
                                            _%r201356%_))))
                                      (_%__kont202549202550%_
                                       (lambda () (reverse _%r201356%_))))
                                  (let ((_%g201359201406%_
                                         (lambda ()
                                           (let ((_%g201373201390%_
                                                  _%__stx202541202542%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g201373201390%_))
                                                 (_%__kont202547202548%_
                                                  _%g201373201390%_)
                                                 (_%__kont202549202550%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx202541202542%_))
                                        (let ((_%e201364201435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx202541202542%_))))
                                          (let ((_%tl201366201440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201364201435%_)))
                                                (_%hd201365201438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201364201435%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd201365201438%_))
                                                (let ((_%e201367201443%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd201365201438%_))))
                                                  (if (equal? _%e201367201443%_
                                                              '#f)
                                                      (_%__kont202543202544%_
                                                       _%tl201366201440%_)
                                                      (_%__kont202545202546%_
                                                       _%tl201366201440%_
                                                       _%hd201365201438%_)))
                                                (_%__kont202545202546%_
                                                 _%tl201366201440%_
                                                 _%hd201365201438%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g201359201406%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp201350%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self201262%_
                                                       _%g201267201311%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp201350%_
                                         _%g201268201312%_
                                         _%g201267201311%_)
                                        _%body201459%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx202571202572%_))
                                                         (let ((_%e201331201496%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx202571202572%_))))
                   (let ((_%tl201333201501%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e201331201496%_)))
                         (_%hd201332201499%_
                          (let ()
                            (declare (not safe))
                            (##car _%e201331201496%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd201332201499%_))
                         (let ((_%e201334201504%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd201332201499%_))))
                           (if (equal? _%e201334201504%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl201333201501%_))
                                   (_%__kont202573202574%_)
                                   (_%__kont202577202578%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl201333201501%_))
                                   (_%__kont202575202576%_ _%hd201332201499%_)
                                   (_%__kont202577202578%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201333201501%_))
                             (_%__kont202575202576%_ _%hd201332201499%_)
                             (_%__kont202577202578%_)))))
                 (_%__kont202577202578%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd201276201306%_
                                               _%hd201273201298%_)
                                              (_%g201265201282%_
                                               _%g201266201285%_))))
                                      (_%g201265201282%_ _%g201266201285%_))))
                              (_%g201265201282%_ _%g201266201285%_))))
                      (_%g201265201282%_ _%g201266201285%_)))))
          (_%g201264201512%_ _%stx201263%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals201237%_ _%hd201238%_ _%expr201239%_)
        (let ((_%$e201241%_ (gxc#apply-count-values _%expr201239%_)))
          (if _%$e201241%_
              ((lambda (_%count201244%_)
                 (let ((_%len201246%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd201238%_)))
                       (_%cmp201247%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd201238%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len201246%_ '0))
                           (_%cmp201247%_ _%count201244%_ _%len201246%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr201239%_
                          _%hd201238%_)))))
               _%$e201241%_)
              (let* ((_%len201253%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd201238%_)))
                     (_%cmp201255%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd201238%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg201257%_
                      (let ((__tmp203884
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd201238%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp203883 (number->string _%len201253%_)))
                        (declare (not safe))
                        (##string-append __tmp203884 __tmp203883 '" values")))
                     (_%count201259%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd201238%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len201253%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count201259%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals201237%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp201255%_
                                (cons _%count201259%_
                                      (cons _%len201253%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp201255%_
                                                        (cons _%count201259%_
                                                              (cons _%len201253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg201257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count201259%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var201232%_)
        (letrec ((_%generate-inline201234%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var201232%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var201232%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline201234%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline201234%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var201225%_ _%i201226%_ _%rest201227%_)
        (letrec ((_%generate-inline201229%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i201226%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest201227%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var201225%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var201225%_
                                                      (cons '0 '())))
                                          (cons _%var201225%_ '()))))
                        (cons '##values-ref
                              (cons _%var201225%_ (cons _%i201226%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline201229%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline201229%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var201219%_ _%i201220%_)
        (if (let () (declare (not safe)) (##fx= _%i201220%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var201219%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var201219%_ '()))
                                  (cons (cons 'list (cons _%var201219%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var201219%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var201219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var201219%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i201220%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var201219%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var201219%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var201219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var201219%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var201219%_ '()))
                                (cons _%i201220%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var201219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i201220%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self201151%_ _%stx201152%_)
        (let* ((_%g201154201171%_
                (lambda (_%g201155201168%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201155201168%_))))
               (_%g201153201216%_
                (lambda (_%g201155201174%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201155201174%_))
                      (let ((_%e201158201176%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201155201174%_))))
                        (let ((_%hd201159201179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201158201176%_)))
                              (_%tl201160201181%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201158201176%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201160201181%_))
                              (let ((_%e201161201184%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201160201181%_))))
                                (let ((_%hd201162201187%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201161201184%_)))
                                      (_%tl201163201189%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201161201184%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201163201189%_))
                                      (let ((_%e201164201192%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201163201189%_))))
                                        (let ((_%hd201165201195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201164201192%_)))
                                              (_%tl201166201197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201164201192%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201166201197%_))
                                              ((lambda (_%g201156201200%_
                                                        _%g201157201201%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self201151%_
                                                  _%g201157201201%_
                                                  _%g201156201200%_))
                                               _%hd201165201195%_
                                               _%hd201162201187%_)
                                              (_%g201154201171%_
                                               _%g201155201174%_))))
                                      (_%g201154201171%_ _%g201155201174%_))))
                              (_%g201154201171%_ _%g201155201174%_))))
                      (_%g201154201171%_ _%g201155201174%_)))))
          (_%g201153201216%_ _%stx201152%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self201110%_ _%hd201111%_ _%body201112%_)
        (let* ((_%hd201114%_ (gxc#generate-runtime-lambda-head _%hd201111%_))
               (_%body201116%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self201110%_ _%body201112%_)))
               (_%body201148%_
                (let* ((_%body201117201125%_ _%body201116%_)
                       (_%else201119201133%_
                        (lambda () (cons _%body201116%_ '())))
                       (_%K201121201138%_
                        (lambda (_%exprs201136%_) _%exprs201136%_)))
                  (if (pair? _%body201117201125%_)
                      (let ((_%hd201122201141%_
                             (let ()
                               (declare (not safe))
                               (##car _%body201117201125%_)))
                            (_%tl201123201143%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body201117201125%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd201122201141%_ 'begin))
                            (let ((_%exprs201146%_ _%tl201123201143%_))
                              (_%K201121201138%_ _%exprs201146%_))
                            (_%else201119201133%_)))
                      (_%else201119201133%_)))))
          (cons 'lambda (cons _%hd201114%_ _%body201148%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd201108%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd201108%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self199665%_ _%stx199666%_)
        (letrec ((_%dispatch-case?199668%_
                  (lambda (_%hd200346%_ _%body200347%_)
                    (let* ((_%form200349%_
                            (cons _%hd200346%_ (cons _%body200347%_ '())))
                           (_%__stx202603202604%_ _%form200349%_)
                           (_%g200354200511%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx202603202604%_)))))
                      (let ((_%__kont202605202606%_
                             (lambda (_%g200356201028%_
                                      _%g200357201029%_
                                      _%g200358201030%_)
                               '#t))
                            (_%__kont202611202612%_
                             (lambda (_%g200401200820%_
                                      _%g200402200821%_
                                      _%g200403200822%_
                                      _%g200404200823%_
                                      _%g200405200824%_
                                      _%g200406200825%_)
                               '#t))
                            (_%__kont202617202618%_
                             (lambda (_%g200467200619%_
                                      _%g200468200620%_
                                      _%g200469200621%_
                                      _%g200470200622%_)
                               '#t))
                            (_%__kont202619202620%_ (lambda () '#f)))
                        (let* ((_%__match202744202745%_
                                (lambda (_%e200471200523%_
                                         _%hd200472200526%_
                                         _%tl200473200528%_
                                         _%e200474200531%_
                                         _%hd200475200534%_
                                         _%tl200476200536%_
                                         _%e200477200539%_
                                         _%hd200478200542%_
                                         _%tl200479200544%_
                                         _%e200480200547%_
                                         _%hd200481200550%_
                                         _%tl200482200552%_
                                         _%e200483200555%_
                                         _%hd200484200558%_
                                         _%tl200485200560%_
                                         _%e200486200563%_
                                         _%hd200487200566%_
                                         _%tl200488200568%_
                                         _%e200489200571%_
                                         _%hd200490200574%_
                                         _%tl200491200576%_
                                         _%e200492200579%_
                                         _%hd200493200582%_
                                         _%tl200494200584%_
                                         _%e200495200587%_
                                         _%hd200496200590%_
                                         _%tl200497200592%_
                                         _%e200498200595%_
                                         _%hd200499200598%_
                                         _%tl200500200600%_
                                         _%e200501200603%_
                                         _%hd200502200606%_
                                         _%tl200503200608%_
                                         _%e200504200611%_
                                         _%hd200505200614%_
                                         _%tl200506200616%_)
                                  (let ((_%g200467200619%_ _%hd200505200614%_)
                                        (_%g200468200620%_ _%hd200496200590%_)
                                        (_%g200469200621%_ _%hd200487200566%_)
                                        (_%g200470200622%_ _%hd200472200526%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g200470200622%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g200469200621%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g200470200622%_
                                                _%g200467200619%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g200468200620%_
                                                     _%g200470200622%_))))
                                        (_%__kont202617202618%_
                                         _%g200467200619%_
                                         _%g200468200620%_
                                         _%g200469200621%_
                                         _%g200470200622%_)
                                        (_%__kont202619202620%_)))))
                               (_%__match202716202717%_
                                (lambda (_%e200471200523%_
                                         _%hd200472200526%_
                                         _%tl200473200528%_
                                         _%e200474200531%_
                                         _%hd200475200534%_
                                         _%tl200476200536%_
                                         _%e200477200539%_
                                         _%hd200478200542%_
                                         _%tl200479200544%_
                                         _%e200480200547%_
                                         _%hd200481200550%_
                                         _%tl200482200552%_
                                         _%e200483200555%_
                                         _%hd200484200558%_
                                         _%tl200485200560%_
                                         _%e200486200563%_
                                         _%hd200487200566%_
                                         _%tl200488200568%_
                                         _%e200489200571%_
                                         _%hd200490200574%_
                                         _%tl200491200576%_
                                         _%e200492200579%_
                                         _%hd200493200582%_
                                         _%tl200494200584%_
                                         _%e200495200587%_
                                         _%hd200496200590%_
                                         _%tl200497200592%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200491200576%_))
                                      (let ((_%e200498200595%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200491200576%_))))
                                        (let ((_%tl200500200600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200498200595%_)))
                                              (_%hd200499200598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200498200595%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd200499200598%_))
                                              (let ((_%e200501200603%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd200499200598%_))))
                                                (let ((_%tl200503200608%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200501200603%_)))
                                                      (_%hd200502200606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200501200603%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd200502200606%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd200502200606%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl200503200608%_))
                      (let ((_%e200504200611%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200503200608%_))))
                        (let ((_%tl200506200616%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200504200611%_)))
                              (_%hd200505200614%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200504200611%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200506200616%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200500200600%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200476200536%_))
                                      (_%__match202744202745%_
                                       _%e200471200523%_
                                       _%hd200472200526%_
                                       _%tl200473200528%_
                                       _%e200474200531%_
                                       _%hd200475200534%_
                                       _%tl200476200536%_
                                       _%e200477200539%_
                                       _%hd200478200542%_
                                       _%tl200479200544%_
                                       _%e200480200547%_
                                       _%hd200481200550%_
                                       _%tl200482200552%_
                                       _%e200483200555%_
                                       _%hd200484200558%_
                                       _%tl200485200560%_
                                       _%e200486200563%_
                                       _%hd200487200566%_
                                       _%tl200488200568%_
                                       _%e200489200571%_
                                       _%hd200490200574%_
                                       _%tl200491200576%_
                                       _%e200492200579%_
                                       _%hd200493200582%_
                                       _%tl200494200584%_
                                       _%e200495200587%_
                                       _%hd200496200590%_
                                       _%tl200497200592%_
                                       _%e200498200595%_
                                       _%hd200499200598%_
                                       _%tl200500200600%_
                                       _%e200501200603%_
                                       _%hd200502200606%_
                                       _%tl200503200608%_
                                       _%e200504200611%_
                                       _%hd200505200614%_
                                       _%tl200506200616%_)
                                      (_%__kont202619202620%_))
                                  (_%__kont202619202620%_))
                              (_%__kont202619202620%_))))
                      (_%__kont202619202620%_))
                  (_%__kont202619202620%_))
              (_%__kont202619202620%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont202619202620%_))))
                                      (_%__kont202619202620%_))))
                               (_%__match202646202647%_
                                (lambda (_%e200407200664%_
                                         _%hd200408200667%_
                                         _%tl200409200669%_
                                         _%__splice202613202614%_
                                         _%target200410200672%_
                                         _%tl200412200674%_)
                                  (letrec ((_%loop200413200677%_
                                            (lambda (_%hd200411200680%_
                                                     _%arg200417200682%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd200411200680%_))
                                                  (let ((_%e200414200684%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd200411200680%_))))
                                                    (let ((_%lp-tl200416200689%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200414200684%_)))
                                                          (_%lp-hd200415200687%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200414200684%_))))
                                                      (_%loop200413200677%_
                                                       _%lp-tl200416200689%_
                                                       (cons _%lp-hd200415200687%_
                                                             _%arg200417200682%_))))
                                                  (let ((_%arg200418200692%_
                                                         (reverse _%arg200417200682%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200409200669%_))
                                                        (let ((_%e200419200694%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl200409200669%_))))
                  (let ((_%tl200421200699%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200419200694%_)))
                        (_%hd200420200697%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200419200694%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200420200697%_))
                        (let ((_%e200422200702%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd200420200697%_))))
                          (let ((_%tl200424200707%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200422200702%_)))
                                (_%hd200423200705%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200422200702%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd200423200705%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd200423200705%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200424200707%_))
                                        (let ((_%e200425200710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200424200707%_))))
                                          (let ((_%tl200427200715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200425200710%_)))
                                                (_%hd200426200713%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200425200710%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd200426200713%_))
                                                (let ((_%e200428200718%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd200426200713%_))))
                                                  (let ((_%tl200430200723%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200428200718%_)))
                                                        (_%hd200429200721%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200428200718%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd200429200721%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd200429200721%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl200430200723%_))
                        (let ((_%e200431200726%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl200430200723%_))))
                          (let ((_%tl200433200731%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200431200726%_)))
                                (_%hd200432200729%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200431200726%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl200433200731%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl200427200715%_))
                                    (let ((_%e200434200734%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl200427200715%_))))
                                      (let ((_%tl200436200739%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200434200734%_)))
                                            (_%hd200435200737%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200434200734%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd200435200737%_))
                                            (let ((_%e200437200742%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd200435200737%_))))
                                              (let ((_%tl200439200747%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200437200742%_)))
                                                    (_%hd200438200745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200437200742%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd200438200745%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd200438200745%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl200439200747%_))
                                                            (let ((_%e200440200750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200439200747%_))))
                      (let ((_%tl200442200755%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200440200750%_)))
                            (_%hd200441200753%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200440200750%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200442200755%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl200436200739%_))
                                (if (let ((__tmp203885
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl200436200739%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp203885 '1))
                                    (let ((_%__splice202615202616%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl200436200739%_
                                              '1))))
                                      (let ((_%tl200445200760%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice202615202616%_
                                                '1)))
                                            (_%target200443200758%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice202615202616%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200445200760%_))
                                            (let ((_%e200452200763%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200445200760%_))))
                                              (let ((_%tl200454200768%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200452200763%_)))
                                                    (_%hd200453200766%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200452200763%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd200453200766%_))
                                                    (let ((_%e200455200771%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd200453200766%_))))
                                                      (let ((_%tl200457200776%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e200455200771%_)))
                    (_%hd200456200774%_
                     (let () (declare (not safe)) (##car _%e200455200771%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd200456200774%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd200456200774%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl200457200776%_))
                            (let ((_%e200458200779%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl200457200776%_))))
                              (let ((_%tl200460200784%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200458200779%_)))
                                    (_%hd200459200782%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200458200779%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl200460200784%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200454200768%_))
                                        (letrec ((_%loop200446200787%_
                                                  (lambda (_%hd200444200790%_
                                                           _%xarg200450200792%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200444200790%_))
                                                        (let ((_%e200447200794%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd200444200790%_))))
                  (let ((_%lp-tl200449200799%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200447200794%_)))
                        (_%lp-hd200448200797%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200447200794%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd200448200797%_))
                        (let ((_%e200461200802%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd200448200797%_))))
                          (let ((_%tl200463200807%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200461200802%_)))
                                (_%hd200462200805%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200461200802%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd200462200805%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd200462200805%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200463200807%_))
                                        (let ((_%e200464200810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200463200807%_))))
                                          (let ((_%tl200466200815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200464200810%_)))
                                                (_%hd200465200813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200464200810%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200466200815%_))
                                                (_%loop200446200787%_
                                                 _%lp-tl200449200799%_
                                                 (cons _%hd200465200813%_
                                                       _%xarg200450200792%_))
                                                (_%__match202716202717%_
                                                 _%e200407200664%_
                                                 _%hd200408200667%_
                                                 _%tl200409200669%_
                                                 _%e200419200694%_
                                                 _%hd200420200697%_
                                                 _%tl200421200699%_
                                                 _%e200422200702%_
                                                 _%hd200423200705%_
                                                 _%tl200424200707%_
                                                 _%e200425200710%_
                                                 _%hd200426200713%_
                                                 _%tl200427200715%_
                                                 _%e200428200718%_
                                                 _%hd200429200721%_
                                                 _%tl200430200723%_
                                                 _%e200431200726%_
                                                 _%hd200432200729%_
                                                 _%tl200433200731%_
                                                 _%e200434200734%_
                                                 _%hd200435200737%_
                                                 _%tl200436200739%_
                                                 _%e200437200742%_
                                                 _%hd200438200745%_
                                                 _%tl200439200747%_
                                                 _%e200440200750%_
                                                 _%hd200441200753%_
                                                 _%tl200442200755%_))))
                                        (_%__match202716202717%_
                                         _%e200407200664%_
                                         _%hd200408200667%_
                                         _%tl200409200669%_
                                         _%e200419200694%_
                                         _%hd200420200697%_
                                         _%tl200421200699%_
                                         _%e200422200702%_
                                         _%hd200423200705%_
                                         _%tl200424200707%_
                                         _%e200425200710%_
                                         _%hd200426200713%_
                                         _%tl200427200715%_
                                         _%e200428200718%_
                                         _%hd200429200721%_
                                         _%tl200430200723%_
                                         _%e200431200726%_
                                         _%hd200432200729%_
                                         _%tl200433200731%_
                                         _%e200434200734%_
                                         _%hd200435200737%_
                                         _%tl200436200739%_
                                         _%e200437200742%_
                                         _%hd200438200745%_
                                         _%tl200439200747%_
                                         _%e200440200750%_
                                         _%hd200441200753%_
                                         _%tl200442200755%_))
                                    (_%__match202716202717%_
                                     _%e200407200664%_
                                     _%hd200408200667%_
                                     _%tl200409200669%_
                                     _%e200419200694%_
                                     _%hd200420200697%_
                                     _%tl200421200699%_
                                     _%e200422200702%_
                                     _%hd200423200705%_
                                     _%tl200424200707%_
                                     _%e200425200710%_
                                     _%hd200426200713%_
                                     _%tl200427200715%_
                                     _%e200428200718%_
                                     _%hd200429200721%_
                                     _%tl200430200723%_
                                     _%e200431200726%_
                                     _%hd200432200729%_
                                     _%tl200433200731%_
                                     _%e200434200734%_
                                     _%hd200435200737%_
                                     _%tl200436200739%_
                                     _%e200437200742%_
                                     _%hd200438200745%_
                                     _%tl200439200747%_
                                     _%e200440200750%_
                                     _%hd200441200753%_
                                     _%tl200442200755%_))
                                (_%__match202716202717%_
                                 _%e200407200664%_
                                 _%hd200408200667%_
                                 _%tl200409200669%_
                                 _%e200419200694%_
                                 _%hd200420200697%_
                                 _%tl200421200699%_
                                 _%e200422200702%_
                                 _%hd200423200705%_
                                 _%tl200424200707%_
                                 _%e200425200710%_
                                 _%hd200426200713%_
                                 _%tl200427200715%_
                                 _%e200428200718%_
                                 _%hd200429200721%_
                                 _%tl200430200723%_
                                 _%e200431200726%_
                                 _%hd200432200729%_
                                 _%tl200433200731%_
                                 _%e200434200734%_
                                 _%hd200435200737%_
                                 _%tl200436200739%_
                                 _%e200437200742%_
                                 _%hd200438200745%_
                                 _%tl200439200747%_
                                 _%e200440200750%_
                                 _%hd200441200753%_
                                 _%tl200442200755%_))))
                        (_%__match202716202717%_
                         _%e200407200664%_
                         _%hd200408200667%_
                         _%tl200409200669%_
                         _%e200419200694%_
                         _%hd200420200697%_
                         _%tl200421200699%_
                         _%e200422200702%_
                         _%hd200423200705%_
                         _%tl200424200707%_
                         _%e200425200710%_
                         _%hd200426200713%_
                         _%tl200427200715%_
                         _%e200428200718%_
                         _%hd200429200721%_
                         _%tl200430200723%_
                         _%e200431200726%_
                         _%hd200432200729%_
                         _%tl200433200731%_
                         _%e200434200734%_
                         _%hd200435200737%_
                         _%tl200436200739%_
                         _%e200437200742%_
                         _%hd200438200745%_
                         _%tl200439200747%_
                         _%e200440200750%_
                         _%hd200441200753%_
                         _%tl200442200755%_))))
                (let ((_%xarg200451200818%_ (reverse _%xarg200450200792%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200421200699%_))
                      (let ((_%g200401200820%_ _%hd200459200782%_)
                            (_%g200402200821%_ _%xarg200451200818%_)
                            (_%g200403200822%_ _%hd200441200753%_)
                            (_%g200404200823%_ _%hd200432200729%_)
                            (_%g200405200824%_ _%tl200412200674%_)
                            (_%g200406200825%_ _%arg200418200692%_))
                        (if (and (let ((__tmp203886
                                        (let ((__tmp203887
                                               (lambda (_%g200868200871%_
                                                        _%g200869200873%_)
                                                 (cons _%g200868200871%_
                                                       _%g200869200873%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp203887
                                           '()
                                           _%g200406200825%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp203886))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g200405200824%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g200404200823%_
                                    'apply))
                                 (let ((__tmp203890
                                        (length (let ((__tmp203891
                                                       (lambda (_%g200875200878%_
                                                                _%g200876200880%_)
                                                         (cons _%g200875200878%_
                                                               _%g200876200880%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp203891
                                                   '()
                                                   _%g200406200825%_))))
                                       (__tmp203888
                                        (length (let ((__tmp203889
                                                       (lambda (_%g200882200885%_
                                                                _%g200883200887%_)
                                                         (cons _%g200882200885%_
                                                               _%g200883200887%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp203889
                                                   '()
                                                   _%g200402200821%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp203890 __tmp203888))
                                 (let ((__tmp203894
                                        (let ((__tmp203895
                                               (lambda (_%g200889200892%_
                                                        _%g200890200894%_)
                                                 (cons _%g200889200892%_
                                                       _%g200890200894%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp203895
                                           '()
                                           _%g200406200825%_)))
                                       (__tmp203892
                                        (let ((__tmp203893
                                               (lambda (_%g200896200899%_
                                                        _%g200897200901%_)
                                                 (cons _%g200896200899%_
                                                       _%g200897200901%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp203893
                                           '()
                                           _%g200402200821%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp203894
                                    __tmp203892))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g200405200824%_
                                    _%g200401200820%_))
                                 (not (let ((__tmp203899
                                             (lambda (_%g200903200905%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g200903200905%_
                                                  _%g200403200822%_))))
                                            (__tmp203896
                                             (let ((__tmp203898
                                                    (lambda (_%g200907200910%_
                                                             _%g200908200912%_)
                                                      (cons _%g200907200910%_
                                                            _%g200908200912%_)))
                                                   (__tmp203897
                                                    (cons _%g200405200824%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp203898
                                                __tmp203897
                                                _%g200406200825%_))))
                                        (declare (not safe))
                                        (__find __tmp203899 __tmp203896))))
                            (_%__kont202611202612%_
                             _%g200401200820%_
                             _%g200402200821%_
                             _%g200403200822%_
                             _%g200404200823%_
                             _%g200405200824%_
                             _%g200406200825%_)
                            (_%__match202716202717%_
                             _%e200407200664%_
                             _%hd200408200667%_
                             _%tl200409200669%_
                             _%e200419200694%_
                             _%hd200420200697%_
                             _%tl200421200699%_
                             _%e200422200702%_
                             _%hd200423200705%_
                             _%tl200424200707%_
                             _%e200425200710%_
                             _%hd200426200713%_
                             _%tl200427200715%_
                             _%e200428200718%_
                             _%hd200429200721%_
                             _%tl200430200723%_
                             _%e200431200726%_
                             _%hd200432200729%_
                             _%tl200433200731%_
                             _%e200434200734%_
                             _%hd200435200737%_
                             _%tl200436200739%_
                             _%e200437200742%_
                             _%hd200438200745%_
                             _%tl200439200747%_
                             _%e200440200750%_
                             _%hd200441200753%_
                             _%tl200442200755%_)))
                      (_%__match202716202717%_
                       _%e200407200664%_
                       _%hd200408200667%_
                       _%tl200409200669%_
                       _%e200419200694%_
                       _%hd200420200697%_
                       _%tl200421200699%_
                       _%e200422200702%_
                       _%hd200423200705%_
                       _%tl200424200707%_
                       _%e200425200710%_
                       _%hd200426200713%_
                       _%tl200427200715%_
                       _%e200428200718%_
                       _%hd200429200721%_
                       _%tl200430200723%_
                       _%e200431200726%_
                       _%hd200432200729%_
                       _%tl200433200731%_
                       _%e200434200734%_
                       _%hd200435200737%_
                       _%tl200436200739%_
                       _%e200437200742%_
                       _%hd200438200745%_
                       _%tl200439200747%_
                       _%e200440200750%_
                       _%hd200441200753%_
                       _%tl200442200755%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop200446200787%_
                                           _%target200443200758%_
                                           '()))
                                        (_%__match202716202717%_
                                         _%e200407200664%_
                                         _%hd200408200667%_
                                         _%tl200409200669%_
                                         _%e200419200694%_
                                         _%hd200420200697%_
                                         _%tl200421200699%_
                                         _%e200422200702%_
                                         _%hd200423200705%_
                                         _%tl200424200707%_
                                         _%e200425200710%_
                                         _%hd200426200713%_
                                         _%tl200427200715%_
                                         _%e200428200718%_
                                         _%hd200429200721%_
                                         _%tl200430200723%_
                                         _%e200431200726%_
                                         _%hd200432200729%_
                                         _%tl200433200731%_
                                         _%e200434200734%_
                                         _%hd200435200737%_
                                         _%tl200436200739%_
                                         _%e200437200742%_
                                         _%hd200438200745%_
                                         _%tl200439200747%_
                                         _%e200440200750%_
                                         _%hd200441200753%_
                                         _%tl200442200755%_))
                                    (_%__match202716202717%_
                                     _%e200407200664%_
                                     _%hd200408200667%_
                                     _%tl200409200669%_
                                     _%e200419200694%_
                                     _%hd200420200697%_
                                     _%tl200421200699%_
                                     _%e200422200702%_
                                     _%hd200423200705%_
                                     _%tl200424200707%_
                                     _%e200425200710%_
                                     _%hd200426200713%_
                                     _%tl200427200715%_
                                     _%e200428200718%_
                                     _%hd200429200721%_
                                     _%tl200430200723%_
                                     _%e200431200726%_
                                     _%hd200432200729%_
                                     _%tl200433200731%_
                                     _%e200434200734%_
                                     _%hd200435200737%_
                                     _%tl200436200739%_
                                     _%e200437200742%_
                                     _%hd200438200745%_
                                     _%tl200439200747%_
                                     _%e200440200750%_
                                     _%hd200441200753%_
                                     _%tl200442200755%_))))
                            (_%__match202716202717%_
                             _%e200407200664%_
                             _%hd200408200667%_
                             _%tl200409200669%_
                             _%e200419200694%_
                             _%hd200420200697%_
                             _%tl200421200699%_
                             _%e200422200702%_
                             _%hd200423200705%_
                             _%tl200424200707%_
                             _%e200425200710%_
                             _%hd200426200713%_
                             _%tl200427200715%_
                             _%e200428200718%_
                             _%hd200429200721%_
                             _%tl200430200723%_
                             _%e200431200726%_
                             _%hd200432200729%_
                             _%tl200433200731%_
                             _%e200434200734%_
                             _%hd200435200737%_
                             _%tl200436200739%_
                             _%e200437200742%_
                             _%hd200438200745%_
                             _%tl200439200747%_
                             _%e200440200750%_
                             _%hd200441200753%_
                             _%tl200442200755%_))
                        (_%__match202716202717%_
                         _%e200407200664%_
                         _%hd200408200667%_
                         _%tl200409200669%_
                         _%e200419200694%_
                         _%hd200420200697%_
                         _%tl200421200699%_
                         _%e200422200702%_
                         _%hd200423200705%_
                         _%tl200424200707%_
                         _%e200425200710%_
                         _%hd200426200713%_
                         _%tl200427200715%_
                         _%e200428200718%_
                         _%hd200429200721%_
                         _%tl200430200723%_
                         _%e200431200726%_
                         _%hd200432200729%_
                         _%tl200433200731%_
                         _%e200434200734%_
                         _%hd200435200737%_
                         _%tl200436200739%_
                         _%e200437200742%_
                         _%hd200438200745%_
                         _%tl200439200747%_
                         _%e200440200750%_
                         _%hd200441200753%_
                         _%tl200442200755%_))
                    (_%__match202716202717%_
                     _%e200407200664%_
                     _%hd200408200667%_
                     _%tl200409200669%_
                     _%e200419200694%_
                     _%hd200420200697%_
                     _%tl200421200699%_
                     _%e200422200702%_
                     _%hd200423200705%_
                     _%tl200424200707%_
                     _%e200425200710%_
                     _%hd200426200713%_
                     _%tl200427200715%_
                     _%e200428200718%_
                     _%hd200429200721%_
                     _%tl200430200723%_
                     _%e200431200726%_
                     _%hd200432200729%_
                     _%tl200433200731%_
                     _%e200434200734%_
                     _%hd200435200737%_
                     _%tl200436200739%_
                     _%e200437200742%_
                     _%hd200438200745%_
                     _%tl200439200747%_
                     _%e200440200750%_
                     _%hd200441200753%_
                     _%tl200442200755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match202716202717%_
                                                     _%e200407200664%_
                                                     _%hd200408200667%_
                                                     _%tl200409200669%_
                                                     _%e200419200694%_
                                                     _%hd200420200697%_
                                                     _%tl200421200699%_
                                                     _%e200422200702%_
                                                     _%hd200423200705%_
                                                     _%tl200424200707%_
                                                     _%e200425200710%_
                                                     _%hd200426200713%_
                                                     _%tl200427200715%_
                                                     _%e200428200718%_
                                                     _%hd200429200721%_
                                                     _%tl200430200723%_
                                                     _%e200431200726%_
                                                     _%hd200432200729%_
                                                     _%tl200433200731%_
                                                     _%e200434200734%_
                                                     _%hd200435200737%_
                                                     _%tl200436200739%_
                                                     _%e200437200742%_
                                                     _%hd200438200745%_
                                                     _%tl200439200747%_
                                                     _%e200440200750%_
                                                     _%hd200441200753%_
                                                     _%tl200442200755%_))))
                                            (_%__match202716202717%_
                                             _%e200407200664%_
                                             _%hd200408200667%_
                                             _%tl200409200669%_
                                             _%e200419200694%_
                                             _%hd200420200697%_
                                             _%tl200421200699%_
                                             _%e200422200702%_
                                             _%hd200423200705%_
                                             _%tl200424200707%_
                                             _%e200425200710%_
                                             _%hd200426200713%_
                                             _%tl200427200715%_
                                             _%e200428200718%_
                                             _%hd200429200721%_
                                             _%tl200430200723%_
                                             _%e200431200726%_
                                             _%hd200432200729%_
                                             _%tl200433200731%_
                                             _%e200434200734%_
                                             _%hd200435200737%_
                                             _%tl200436200739%_
                                             _%e200437200742%_
                                             _%hd200438200745%_
                                             _%tl200439200747%_
                                             _%e200440200750%_
                                             _%hd200441200753%_
                                             _%tl200442200755%_))))
                                    (_%__match202716202717%_
                                     _%e200407200664%_
                                     _%hd200408200667%_
                                     _%tl200409200669%_
                                     _%e200419200694%_
                                     _%hd200420200697%_
                                     _%tl200421200699%_
                                     _%e200422200702%_
                                     _%hd200423200705%_
                                     _%tl200424200707%_
                                     _%e200425200710%_
                                     _%hd200426200713%_
                                     _%tl200427200715%_
                                     _%e200428200718%_
                                     _%hd200429200721%_
                                     _%tl200430200723%_
                                     _%e200431200726%_
                                     _%hd200432200729%_
                                     _%tl200433200731%_
                                     _%e200434200734%_
                                     _%hd200435200737%_
                                     _%tl200436200739%_
                                     _%e200437200742%_
                                     _%hd200438200745%_
                                     _%tl200439200747%_
                                     _%e200440200750%_
                                     _%hd200441200753%_
                                     _%tl200442200755%_))
                                (_%__match202716202717%_
                                 _%e200407200664%_
                                 _%hd200408200667%_
                                 _%tl200409200669%_
                                 _%e200419200694%_
                                 _%hd200420200697%_
                                 _%tl200421200699%_
                                 _%e200422200702%_
                                 _%hd200423200705%_
                                 _%tl200424200707%_
                                 _%e200425200710%_
                                 _%hd200426200713%_
                                 _%tl200427200715%_
                                 _%e200428200718%_
                                 _%hd200429200721%_
                                 _%tl200430200723%_
                                 _%e200431200726%_
                                 _%hd200432200729%_
                                 _%tl200433200731%_
                                 _%e200434200734%_
                                 _%hd200435200737%_
                                 _%tl200436200739%_
                                 _%e200437200742%_
                                 _%hd200438200745%_
                                 _%tl200439200747%_
                                 _%e200440200750%_
                                 _%hd200441200753%_
                                 _%tl200442200755%_))
                            (_%__kont202619202620%_))))
                    (_%__kont202619202620%_))
                (_%__kont202619202620%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont202619202620%_))))
                                            (_%__kont202619202620%_))))
                                    (_%__kont202619202620%_))
                                (_%__kont202619202620%_))))
                        (_%__kont202619202620%_))
                    (_%__kont202619202620%_))
                (_%__kont202619202620%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont202619202620%_))))
                                        (_%__kont202619202620%_))
                                    (_%__kont202619202620%_))
                                (_%__kont202619202620%_))))
                        (_%__kont202619202620%_))))
                (_%__kont202619202620%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop200413200677%_
                                     _%target200410200672%_
                                     '()))))
                               (_%__match202634202635%_
                                (lambda (_%e200359200920%_
                                         _%hd200360200923%_
                                         _%tl200361200925%_
                                         _%__splice202607202608%_
                                         _%target200362200928%_
                                         _%tl200364200930%_)
                                  (letrec ((_%loop200365200933%_
                                            (lambda (_%hd200363200936%_
                                                     _%arg200369200938%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd200363200936%_))
                                                  (let ((_%e200366200940%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd200363200936%_))))
                                                    (let ((_%lp-tl200368200945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200366200940%_)))
                                                          (_%lp-hd200367200943%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200366200940%_))))
                                                      (_%loop200365200933%_
                                                       _%lp-tl200368200945%_
                                                       (cons _%lp-hd200367200943%_
                                                             _%arg200369200938%_))))
                                                  (let ((_%arg200370200948%_
                                                         (reverse _%arg200369200938%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200361200925%_))
                                                        (let ((_%e200371200950%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl200361200925%_))))
                  (let ((_%tl200373200955%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200371200950%_)))
                        (_%hd200372200953%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200371200950%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200372200953%_))
                        (let ((_%e200374200958%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd200372200953%_))))
                          (let ((_%tl200376200963%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200374200958%_)))
                                (_%hd200375200961%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200374200958%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd200375200961%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd200375200961%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200376200963%_))
                                        (let ((_%e200377200966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200376200963%_))))
                                          (let ((_%tl200379200971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200377200966%_)))
                                                (_%hd200378200969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200377200966%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd200378200969%_))
                                                (let ((_%e200380200974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd200378200969%_))))
                                                  (let ((_%tl200382200979%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200380200974%_)))
                                                        (_%hd200381200977%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200380200974%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd200381200977%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd200381200977%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl200382200979%_))
                        (let ((_%e200383200982%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl200382200979%_))))
                          (let ((_%tl200385200987%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200383200982%_)))
                                (_%hd200384200985%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200383200982%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl200385200987%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl200379200971%_))
                                    (let ((_%__splice202609202610%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl200379200971%_
                                              '0))))
                                      (let ((_%tl200388200992%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice202609202610%_
                                                '1)))
                                            (_%target200386200990%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice202609202610%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200388200992%_))
                                            (letrec ((_%loop200389200995%_
                                                      (lambda (_%hd200387200998%_
                                                               _%xarg200393201000%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd200387200998%_))
                                                            (let ((_%e200390201002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd200387200998%_))))
                      (let ((_%lp-tl200392201007%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200390201002%_)))
                            (_%lp-hd200391201005%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200390201002%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd200391201005%_))
                            (let ((_%e200395201010%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd200391201005%_))))
                              (let ((_%tl200397201015%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200395201010%_)))
                                    (_%hd200396201013%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200395201010%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd200396201013%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd200396201013%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200397201015%_))
                                            (let ((_%e200398201018%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200397201015%_))))
                                              (let ((_%tl200400201023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200398201018%_)))
                                                    (_%hd200399201021%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200398201018%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200400201023%_))
                                                    (_%loop200389200995%_
                                                     _%lp-tl200392201007%_
                                                     (cons _%hd200399201021%_
                                                           _%xarg200393201000%_))
                                                    (_%__match202646202647%_
                                                     _%e200359200920%_
                                                     _%hd200360200923%_
                                                     _%tl200361200925%_
                                                     _%__splice202607202608%_
                                                     _%target200362200928%_
                                                     _%tl200364200930%_))))
                                            (_%__match202646202647%_
                                             _%e200359200920%_
                                             _%hd200360200923%_
                                             _%tl200361200925%_
                                             _%__splice202607202608%_
                                             _%target200362200928%_
                                             _%tl200364200930%_))
                                        (_%__match202646202647%_
                                         _%e200359200920%_
                                         _%hd200360200923%_
                                         _%tl200361200925%_
                                         _%__splice202607202608%_
                                         _%target200362200928%_
                                         _%tl200364200930%_))
                                    (_%__match202646202647%_
                                     _%e200359200920%_
                                     _%hd200360200923%_
                                     _%tl200361200925%_
                                     _%__splice202607202608%_
                                     _%target200362200928%_
                                     _%tl200364200930%_))))
                            (_%__match202646202647%_
                             _%e200359200920%_
                             _%hd200360200923%_
                             _%tl200361200925%_
                             _%__splice202607202608%_
                             _%target200362200928%_
                             _%tl200364200930%_))))
                    (let ((_%xarg200394201026%_
                           (reverse _%xarg200393201000%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200373200955%_))
                          (let ((_%g200356201028%_ _%xarg200394201026%_)
                                (_%g200357201029%_ _%hd200384200985%_)
                                (_%g200358201030%_ _%arg200370200948%_))
                            (if (and (let ((__tmp203900
                                            (let ((__tmp203901
                                                   (lambda (_%g201058201061%_
                                                            _%g201059201063%_)
                                                     (cons _%g201058201061%_
                                                           _%g201059201063%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp203901
                                               '()
                                               _%g200358201030%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp203900))
                                     (let ((__tmp203904
                                            (length (let ((__tmp203905
                                                           (lambda (_%g201065201068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g201066201070%_)
                     (cons _%g201065201068%_ _%g201066201070%_))))
              (declare (not safe))
              (foldr__0 __tmp203905 '() _%g200358201030%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp203902
                                            (length (let ((__tmp203903
                                                           (lambda (_%g201072201075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g201073201077%_)
                     (cons _%g201072201075%_ _%g201073201077%_))))
              (declare (not safe))
              (foldr__0 __tmp203903 '() _%g200356201028%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp203904 __tmp203902))
                                     (let ((__tmp203908
                                            (let ((__tmp203909
                                                   (lambda (_%g201079201082%_
                                                            _%g201080201084%_)
                                                     (cons _%g201079201082%_
                                                           _%g201080201084%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp203909
                                               '()
                                               _%g200358201030%_)))
                                           (__tmp203906
                                            (let ((__tmp203907
                                                   (lambda (_%g201086201089%_
                                                            _%g201087201091%_)
                                                     (cons _%g201086201089%_
                                                           _%g201087201091%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp203907
                                               '()
                                               _%g200356201028%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp203908
                                        __tmp203906))
                                     (not (let ((__tmp203912
                                                 (lambda (_%g201093201095%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g201093201095%_
                                                      _%g200357201029%_))))
                                                (__tmp203910
                                                 (let ((__tmp203911
                                                        (lambda (_%g201097201100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g201098201102%_)
                  (cons _%g201097201100%_ _%g201098201102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp203911
                                                    '()
                                                    _%g200358201030%_))))
                                            (declare (not safe))
                                            (__find __tmp203912 __tmp203910))))
                                (_%__kont202605202606%_
                                 _%g200356201028%_
                                 _%g200357201029%_
                                 _%g200358201030%_)
                                (_%__match202646202647%_
                                 _%e200359200920%_
                                 _%hd200360200923%_
                                 _%tl200361200925%_
                                 _%__splice202607202608%_
                                 _%target200362200928%_
                                 _%tl200364200930%_)))
                          (_%__match202646202647%_
                           _%e200359200920%_
                           _%hd200360200923%_
                           _%tl200361200925%_
                           _%__splice202607202608%_
                           _%target200362200928%_
                           _%tl200364200930%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop200389200995%_
                                               _%target200386200990%_
                                               '()))
                                            (_%__match202646202647%_
                                             _%e200359200920%_
                                             _%hd200360200923%_
                                             _%tl200361200925%_
                                             _%__splice202607202608%_
                                             _%target200362200928%_
                                             _%tl200364200930%_))))
                                    (_%__match202646202647%_
                                     _%e200359200920%_
                                     _%hd200360200923%_
                                     _%tl200361200925%_
                                     _%__splice202607202608%_
                                     _%target200362200928%_
                                     _%tl200364200930%_))
                                (_%__match202646202647%_
                                 _%e200359200920%_
                                 _%hd200360200923%_
                                 _%tl200361200925%_
                                 _%__splice202607202608%_
                                 _%target200362200928%_
                                 _%tl200364200930%_))))
                        (_%__match202646202647%_
                         _%e200359200920%_
                         _%hd200360200923%_
                         _%tl200361200925%_
                         _%__splice202607202608%_
                         _%target200362200928%_
                         _%tl200364200930%_))
                    (_%__match202646202647%_
                     _%e200359200920%_
                     _%hd200360200923%_
                     _%tl200361200925%_
                     _%__splice202607202608%_
                     _%target200362200928%_
                     _%tl200364200930%_))
                (_%__match202646202647%_
                 _%e200359200920%_
                 _%hd200360200923%_
                 _%tl200361200925%_
                 _%__splice202607202608%_
                 _%target200362200928%_
                 _%tl200364200930%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match202646202647%_
                                                 _%e200359200920%_
                                                 _%hd200360200923%_
                                                 _%tl200361200925%_
                                                 _%__splice202607202608%_
                                                 _%target200362200928%_
                                                 _%tl200364200930%_))))
                                        (_%__match202646202647%_
                                         _%e200359200920%_
                                         _%hd200360200923%_
                                         _%tl200361200925%_
                                         _%__splice202607202608%_
                                         _%target200362200928%_
                                         _%tl200364200930%_))
                                    (_%__match202646202647%_
                                     _%e200359200920%_
                                     _%hd200360200923%_
                                     _%tl200361200925%_
                                     _%__splice202607202608%_
                                     _%target200362200928%_
                                     _%tl200364200930%_))
                                (_%__match202646202647%_
                                 _%e200359200920%_
                                 _%hd200360200923%_
                                 _%tl200361200925%_
                                 _%__splice202607202608%_
                                 _%target200362200928%_
                                 _%tl200364200930%_))))
                        (_%__match202646202647%_
                         _%e200359200920%_
                         _%hd200360200923%_
                         _%tl200361200925%_
                         _%__splice202607202608%_
                         _%target200362200928%_
                         _%tl200364200930%_))))
                (_%__match202646202647%_
                 _%e200359200920%_
                 _%hd200360200923%_
                 _%tl200361200925%_
                 _%__splice202607202608%_
                 _%target200362200928%_
                 _%tl200364200930%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop200365200933%_
                                     _%target200362200928%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx202603202604%_))
                              (let ((_%e200359200920%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx202603202604%_))))
                                (let ((_%tl200361200925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200359200920%_)))
                                      (_%hd200360200923%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200359200920%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd200360200923%_))
                                      (let ((_%__splice202607202608%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd200360200923%_
                                                '0))))
                                        (let ((_%tl200364200930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202607202608%_
                                                  '1)))
                                              (_%target200362200928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202607202608%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200364200930%_))
                                              (_%__match202634202635%_
                                               _%e200359200920%_
                                               _%hd200360200923%_
                                               _%tl200361200925%_
                                               _%__splice202607202608%_
                                               _%target200362200928%_
                                               _%tl200364200930%_)
                                              (_%__match202646202647%_
                                               _%e200359200920%_
                                               _%hd200360200923%_
                                               _%tl200361200925%_
                                               _%__splice202607202608%_
                                               _%target200362200928%_
                                               _%tl200364200930%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200361200925%_))
                                          (let ((_%e200474200531%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200361200925%_))))
                                            (let ((_%tl200476200536%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200474200531%_)))
                                                  (_%hd200475200534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200474200531%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd200475200534%_))
                                                  (let ((_%e200477200539%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd200475200534%_))))
                                                    (let ((_%tl200479200544%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200477200539%_)))
                                                          (_%hd200478200542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200477200539%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd200478200542%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd200478200542%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200479200544%_))
                          (let ((_%e200480200547%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200479200544%_))))
                            (let ((_%tl200482200552%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200480200547%_)))
                                  (_%hd200481200550%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200480200547%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd200481200550%_))
                                  (let ((_%e200483200555%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd200481200550%_))))
                                    (let ((_%tl200485200560%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200483200555%_)))
                                          (_%hd200484200558%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200483200555%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd200484200558%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd200484200558%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200485200560%_))
                                                  (let ((_%e200486200563%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200485200560%_))))
                                                    (let ((_%tl200488200568%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200486200563%_)))
                                                          (_%hd200487200566%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200486200563%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200488200568%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl200482200552%_))
                      (let ((_%e200489200571%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200482200552%_))))
                        (let ((_%tl200491200576%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200489200571%_)))
                              (_%hd200490200574%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200489200571%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd200490200574%_))
                              (let ((_%e200492200579%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd200490200574%_))))
                                (let ((_%tl200494200584%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200492200579%_)))
                                      (_%hd200493200582%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200492200579%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd200493200582%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd200493200582%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200494200584%_))
                                              (let ((_%e200495200587%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200494200584%_))))
                                                (let ((_%tl200497200592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200495200587%_)))
                                                      (_%hd200496200590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200495200587%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200497200592%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200491200576%_))
                                                          (let ((_%e200498200595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200491200576%_))))
                    (let ((_%tl200500200600%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200498200595%_)))
                          (_%hd200499200598%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200498200595%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200499200598%_))
                          (let ((_%e200501200603%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200499200598%_))))
                            (let ((_%tl200503200608%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200501200603%_)))
                                  (_%hd200502200606%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200501200603%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd200502200606%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd200502200606%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200503200608%_))
                                          (let ((_%e200504200611%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200503200608%_))))
                                            (let ((_%tl200506200616%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200504200611%_)))
                                                  (_%hd200505200614%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200504200611%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200506200616%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200500200600%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200476200536%_))
                                                          (_%__match202744202745%_
                                                           _%e200359200920%_
                                                           _%hd200360200923%_
                                                           _%tl200361200925%_
                                                           _%e200474200531%_
                                                           _%hd200475200534%_
                                                           _%tl200476200536%_
                                                           _%e200477200539%_
                                                           _%hd200478200542%_
                                                           _%tl200479200544%_
                                                           _%e200480200547%_
                                                           _%hd200481200550%_
                                                           _%tl200482200552%_
                                                           _%e200483200555%_
                                                           _%hd200484200558%_
                                                           _%tl200485200560%_
                                                           _%e200486200563%_
                                                           _%hd200487200566%_
                                                           _%tl200488200568%_
                                                           _%e200489200571%_
                                                           _%hd200490200574%_
                                                           _%tl200491200576%_
                                                           _%e200492200579%_
                                                           _%hd200493200582%_
                                                           _%tl200494200584%_
                                                           _%e200495200587%_
                                                           _%hd200496200590%_
                                                           _%tl200497200592%_
                                                           _%e200498200595%_
                                                           _%hd200499200598%_
                                                           _%tl200500200600%_
                                                           _%e200501200603%_
                                                           _%hd200502200606%_
                                                           _%tl200503200608%_
                                                           _%e200504200611%_
                                                           _%hd200505200614%_
                                                           _%tl200506200616%_)
                                                          (_%__kont202619202620%_))
                                                      (_%__kont202619202620%_))
                                                  (_%__kont202619202620%_))))
                                          (_%__kont202619202620%_))
                                      (_%__kont202619202620%_))
                                  (_%__kont202619202620%_))))
                          (_%__kont202619202620%_))))
                  (_%__kont202619202620%_))
              (_%__kont202619202620%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont202619202620%_))
                                          (_%__kont202619202620%_))
                                      (_%__kont202619202620%_))))
                              (_%__kont202619202620%_))))
                      (_%__kont202619202620%_))
                  (_%__kont202619202620%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont202619202620%_))
                                              (_%__kont202619202620%_))
                                          (_%__kont202619202620%_))))
                                  (_%__kont202619202620%_))))
                          (_%__kont202619202620%_))
                      (_%__kont202619202620%_))
                  (_%__kont202619202620%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont202619202620%_))))
                                          (_%__kont202619202620%_)))))
                              (_%__kont202619202620%_)))))))
                 (_%dispatch-case-e199669%_
                  (lambda (_%hd199816%_ _%body199817%_)
                    (let* ((_%form199819%_
                            (cons _%hd199816%_ (cons _%body199817%_ '())))
                           (_%__stx202747202748%_ _%form199819%_)
                           (_%g199823199947%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx202747202748%_)))))
                      (let ((_%__kont202749202750%_
                             (lambda (_%g199825200312%_
                                      _%g199826200313%_
                                      _%g199827200314%_)
                               (let ((__tmp203913
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g199826200313%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self199665%_
                                  __tmp203913))))
                            (_%__kont202755202756%_
                             (lambda (_%g199870200164%_
                                      _%g199871200165%_
                                      _%g199872200166%_
                                      _%g199873200167%_)
                               (let ((__tmp203914
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g199870200164%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self199665%_
                                  __tmp203914))))
                            (_%__kont202759202760%_
                             (lambda (_%g199910200032%_
                                      _%g199911200033%_
                                      _%g199912200034%_)
                               (let ((__tmp203915
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g199910200032%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self199665%_
                                  __tmp203915)))))
                        (let* ((_%__match202856202857%_
                                (lambda (_%e199913199952%_
                                         _%hd199914199955%_
                                         _%tl199915199957%_
                                         _%e199916199960%_
                                         _%hd199917199963%_
                                         _%tl199918199965%_
                                         _%e199919199968%_
                                         _%hd199920199971%_
                                         _%tl199921199973%_
                                         _%e199922199976%_
                                         _%hd199923199979%_
                                         _%tl199924199981%_
                                         _%e199925199984%_
                                         _%hd199926199987%_
                                         _%tl199927199989%_
                                         _%e199928199992%_
                                         _%hd199929199995%_
                                         _%tl199930199997%_
                                         _%e199931200000%_
                                         _%hd199932200003%_
                                         _%tl199933200005%_
                                         _%e199934200008%_
                                         _%hd199935200011%_
                                         _%tl199936200013%_
                                         _%e199937200016%_
                                         _%hd199938200019%_
                                         _%tl199939200021%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199933200005%_))
                                      (let ((_%e199940200024%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199933200005%_))))
                                        (let ((_%tl199942200029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199940200024%_)))
                                              (_%hd199941200027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199940200024%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199942200029%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199918199965%_))
                                                  (_%__kont202759202760%_
                                                   _%hd199938200019%_
                                                   _%hd199929199995%_
                                                   _%hd199914199955%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199823199947%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199823199947%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199823199947%_)))))
                               (_%__match202786202787%_
                                (lambda (_%e199874200070%_
                                         _%hd199875200073%_
                                         _%tl199876200075%_
                                         _%__splice202757202758%_
                                         _%target199877200078%_
                                         _%tl199879200080%_)
                                  (letrec ((_%loop199880200083%_
                                            (lambda (_%hd199878200086%_
                                                     _%arg199884200088%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199878200086%_))
                                                  (let ((_%e199881200090%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd199878200086%_))))
                                                    (let ((_%lp-tl199883200095%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199881200090%_)))
                                                          (_%lp-hd199882200093%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199881200090%_))))
                                                      (_%loop199880200083%_
                                                       _%lp-tl199883200095%_
                                                       (cons _%lp-hd199882200093%_
                                                             _%arg199884200088%_))))
                                                  (let ((_%arg199885200098%_
                                                         (reverse _%arg199884200088%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199876200075%_))
                                                        (let ((_%e199886200100%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199876200075%_))))
                  (let ((_%tl199888200105%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199886200100%_)))
                        (_%hd199887200103%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199886200100%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199887200103%_))
                        (let ((_%e199889200108%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd199887200103%_))))
                          (let ((_%tl199891200113%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199889200108%_)))
                                (_%hd199890200111%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199889200108%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd199890200111%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd199890200111%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199891200113%_))
                                        (let ((_%e199892200116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199891200113%_))))
                                          (let ((_%tl199894200121%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199892200116%_)))
                                                (_%hd199893200119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199892200116%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd199893200119%_))
                                                (let ((_%e199895200124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd199893200119%_))))
                                                  (let ((_%tl199897200129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199895200124%_)))
                                                        (_%hd199896200127%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199895200124%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd199896200127%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd199896200127%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199897200129%_))
                        (let ((_%e199898200132%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl199897200129%_))))
                          (let ((_%tl199900200137%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199898200132%_)))
                                (_%hd199899200135%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199898200132%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199900200137%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199894200121%_))
                                    (let ((_%e199901200140%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl199894200121%_))))
                                      (let ((_%tl199903200145%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199901200140%_)))
                                            (_%hd199902200143%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199901200140%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199902200143%_))
                                            (let ((_%e199904200148%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd199902200143%_))))
                                              (let ((_%tl199906200153%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199904200148%_)))
                                                    (_%hd199905200151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199904200148%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199905200151%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd199905200151%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199906200153%_))
                                                            (let ((_%e199907200156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199906200153%_))))
                      (let ((_%tl199909200161%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199907200156%_)))
                            (_%hd199908200159%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199907200156%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199909200161%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199888200105%_))
                                (_%__kont202755202756%_
                                 _%hd199908200159%_
                                 _%hd199899200135%_
                                 _%tl199879200080%_
                                 _%arg199885200098%_)
                                (_%__match202856202857%_
                                 _%e199874200070%_
                                 _%hd199875200073%_
                                 _%tl199876200075%_
                                 _%e199886200100%_
                                 _%hd199887200103%_
                                 _%tl199888200105%_
                                 _%e199889200108%_
                                 _%hd199890200111%_
                                 _%tl199891200113%_
                                 _%e199892200116%_
                                 _%hd199893200119%_
                                 _%tl199894200121%_
                                 _%e199895200124%_
                                 _%hd199896200127%_
                                 _%tl199897200129%_
                                 _%e199898200132%_
                                 _%hd199899200135%_
                                 _%tl199900200137%_
                                 _%e199901200140%_
                                 _%hd199902200143%_
                                 _%tl199903200145%_
                                 _%e199904200148%_
                                 _%hd199905200151%_
                                 _%tl199906200153%_
                                 _%e199907200156%_
                                 _%hd199908200159%_
                                 _%tl199909200161%_))
                            (let ()
                              (declare (not safe))
                              (_%g199823199947%_)))))
                    (let () (declare (not safe)) (_%g199823199947%_)))
                (let () (declare (not safe)) (_%g199823199947%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199823199947%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199823199947%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199823199947%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g199823199947%_)))))
                        (let () (declare (not safe)) (_%g199823199947%_)))
                    (let () (declare (not safe)) (_%g199823199947%_)))
                (let () (declare (not safe)) (_%g199823199947%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199823199947%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199823199947%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199823199947%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g199823199947%_)))))
                        (let () (declare (not safe)) (_%g199823199947%_)))))
                (let () (declare (not safe)) (_%g199823199947%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop199880200083%_
                                     _%target199877200078%_
                                     '()))))
                               (_%__match202774202775%_
                                (lambda (_%e199828200204%_
                                         _%hd199829200207%_
                                         _%tl199830200209%_
                                         _%__splice202751202752%_
                                         _%target199831200212%_
                                         _%tl199833200214%_)
                                  (letrec ((_%loop199834200217%_
                                            (lambda (_%hd199832200220%_
                                                     _%arg199838200222%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199832200220%_))
                                                  (let ((_%e199835200224%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd199832200220%_))))
                                                    (let ((_%lp-tl199837200229%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199835200224%_)))
                                                          (_%lp-hd199836200227%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199835200224%_))))
                                                      (_%loop199834200217%_
                                                       _%lp-tl199837200229%_
                                                       (cons _%lp-hd199836200227%_
                                                             _%arg199838200222%_))))
                                                  (let ((_%arg199839200232%_
                                                         (reverse _%arg199838200222%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199830200209%_))
                                                        (let ((_%e199840200234%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199830200209%_))))
                  (let ((_%tl199842200239%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199840200234%_)))
                        (_%hd199841200237%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199840200234%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199841200237%_))
                        (let ((_%e199843200242%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd199841200237%_))))
                          (let ((_%tl199845200247%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199843200242%_)))
                                (_%hd199844200245%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199843200242%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd199844200245%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd199844200245%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199845200247%_))
                                        (let ((_%e199846200250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199845200247%_))))
                                          (let ((_%tl199848200255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199846200250%_)))
                                                (_%hd199847200253%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199846200250%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd199847200253%_))
                                                (let ((_%e199849200258%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd199847200253%_))))
                                                  (let ((_%tl199851200263%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199849200258%_)))
                                                        (_%hd199850200261%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199849200258%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd199850200261%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd199850200261%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199851200263%_))
                        (let ((_%e199852200266%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl199851200263%_))))
                          (let ((_%tl199854200271%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199852200266%_)))
                                (_%hd199853200269%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199852200266%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199854200271%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl199848200255%_))
                                    (let ((_%__splice202753202754%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl199848200255%_
                                              '0))))
                                      (let ((_%tl199857200276%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice202753202754%_
                                                '1)))
                                            (_%target199855200274%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice202753202754%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199857200276%_))
                                            (letrec ((_%loop199858200279%_
                                                      (lambda (_%hd199856200282%_
                                                               _%xarg199862200284%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd199856200282%_))
                                                            (let ((_%e199859200286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd199856200282%_))))
                      (let ((_%lp-tl199861200291%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199859200286%_)))
                            (_%lp-hd199860200289%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199859200286%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd199860200289%_))
                            (let ((_%e199864200294%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd199860200289%_))))
                              (let ((_%tl199866200299%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199864200294%_)))
                                    (_%hd199865200297%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199864200294%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199865200297%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd199865200297%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199866200299%_))
                                            (let ((_%e199867200302%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199866200299%_))))
                                              (let ((_%tl199869200307%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199867200302%_)))
                                                    (_%hd199868200305%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199867200302%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl199869200307%_))
                                                    (_%loop199858200279%_
                                                     _%lp-tl199861200291%_
                                                     (cons _%hd199868200305%_
                                                           _%xarg199862200284%_))
                                                    (_%__match202786202787%_
                                                     _%e199828200204%_
                                                     _%hd199829200207%_
                                                     _%tl199830200209%_
                                                     _%__splice202751202752%_
                                                     _%target199831200212%_
                                                     _%tl199833200214%_))))
                                            (_%__match202786202787%_
                                             _%e199828200204%_
                                             _%hd199829200207%_
                                             _%tl199830200209%_
                                             _%__splice202751202752%_
                                             _%target199831200212%_
                                             _%tl199833200214%_))
                                        (_%__match202786202787%_
                                         _%e199828200204%_
                                         _%hd199829200207%_
                                         _%tl199830200209%_
                                         _%__splice202751202752%_
                                         _%target199831200212%_
                                         _%tl199833200214%_))
                                    (_%__match202786202787%_
                                     _%e199828200204%_
                                     _%hd199829200207%_
                                     _%tl199830200209%_
                                     _%__splice202751202752%_
                                     _%target199831200212%_
                                     _%tl199833200214%_))))
                            (_%__match202786202787%_
                             _%e199828200204%_
                             _%hd199829200207%_
                             _%tl199830200209%_
                             _%__splice202751202752%_
                             _%target199831200212%_
                             _%tl199833200214%_))))
                    (let ((_%xarg199863200310%_
                           (reverse _%xarg199862200284%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199842200239%_))
                          (_%__kont202749202750%_
                           _%xarg199863200310%_
                           _%hd199853200269%_
                           _%arg199839200232%_)
                          (_%__match202786202787%_
                           _%e199828200204%_
                           _%hd199829200207%_
                           _%tl199830200209%_
                           _%__splice202751202752%_
                           _%target199831200212%_
                           _%tl199833200214%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop199858200279%_
                                               _%target199855200274%_
                                               '()))
                                            (_%__match202786202787%_
                                             _%e199828200204%_
                                             _%hd199829200207%_
                                             _%tl199830200209%_
                                             _%__splice202751202752%_
                                             _%target199831200212%_
                                             _%tl199833200214%_))))
                                    (_%__match202786202787%_
                                     _%e199828200204%_
                                     _%hd199829200207%_
                                     _%tl199830200209%_
                                     _%__splice202751202752%_
                                     _%target199831200212%_
                                     _%tl199833200214%_))
                                (_%__match202786202787%_
                                 _%e199828200204%_
                                 _%hd199829200207%_
                                 _%tl199830200209%_
                                 _%__splice202751202752%_
                                 _%target199831200212%_
                                 _%tl199833200214%_))))
                        (_%__match202786202787%_
                         _%e199828200204%_
                         _%hd199829200207%_
                         _%tl199830200209%_
                         _%__splice202751202752%_
                         _%target199831200212%_
                         _%tl199833200214%_))
                    (_%__match202786202787%_
                     _%e199828200204%_
                     _%hd199829200207%_
                     _%tl199830200209%_
                     _%__splice202751202752%_
                     _%target199831200212%_
                     _%tl199833200214%_))
                (_%__match202786202787%_
                 _%e199828200204%_
                 _%hd199829200207%_
                 _%tl199830200209%_
                 _%__splice202751202752%_
                 _%target199831200212%_
                 _%tl199833200214%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match202786202787%_
                                                 _%e199828200204%_
                                                 _%hd199829200207%_
                                                 _%tl199830200209%_
                                                 _%__splice202751202752%_
                                                 _%target199831200212%_
                                                 _%tl199833200214%_))))
                                        (_%__match202786202787%_
                                         _%e199828200204%_
                                         _%hd199829200207%_
                                         _%tl199830200209%_
                                         _%__splice202751202752%_
                                         _%target199831200212%_
                                         _%tl199833200214%_))
                                    (_%__match202786202787%_
                                     _%e199828200204%_
                                     _%hd199829200207%_
                                     _%tl199830200209%_
                                     _%__splice202751202752%_
                                     _%target199831200212%_
                                     _%tl199833200214%_))
                                (_%__match202786202787%_
                                 _%e199828200204%_
                                 _%hd199829200207%_
                                 _%tl199830200209%_
                                 _%__splice202751202752%_
                                 _%target199831200212%_
                                 _%tl199833200214%_))))
                        (_%__match202786202787%_
                         _%e199828200204%_
                         _%hd199829200207%_
                         _%tl199830200209%_
                         _%__splice202751202752%_
                         _%target199831200212%_
                         _%tl199833200214%_))))
                (_%__match202786202787%_
                 _%e199828200204%_
                 _%hd199829200207%_
                 _%tl199830200209%_
                 _%__splice202751202752%_
                 _%target199831200212%_
                 _%tl199833200214%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop199834200217%_
                                     _%target199831200212%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx202747202748%_))
                              (let ((_%e199828200204%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx202747202748%_))))
                                (let ((_%tl199830200209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199828200204%_)))
                                      (_%hd199829200207%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199828200204%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd199829200207%_))
                                      (let ((_%__splice202751202752%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd199829200207%_
                                                '0))))
                                        (let ((_%tl199833200214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202751202752%_
                                                  '1)))
                                              (_%target199831200212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202751202752%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199833200214%_))
                                              (_%__match202774202775%_
                                               _%e199828200204%_
                                               _%hd199829200207%_
                                               _%tl199830200209%_
                                               _%__splice202751202752%_
                                               _%target199831200212%_
                                               _%tl199833200214%_)
                                              (_%__match202786202787%_
                                               _%e199828200204%_
                                               _%hd199829200207%_
                                               _%tl199830200209%_
                                               _%__splice202751202752%_
                                               _%target199831200212%_
                                               _%tl199833200214%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199830200209%_))
                                          (let ((_%e199916199960%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199830200209%_))))
                                            (let ((_%tl199918199965%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199916199960%_)))
                                                  (_%hd199917199963%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199916199960%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199917199963%_))
                                                  (let ((_%e199919199968%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd199917199963%_))))
                                                    (let ((_%tl199921199973%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199919199968%_)))
                                                          (_%hd199920199971%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199919199968%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd199920199971%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd199920199971%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199921199973%_))
                          (let ((_%e199922199976%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199921199973%_))))
                            (let ((_%tl199924199981%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199922199976%_)))
                                  (_%hd199923199979%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199922199976%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd199923199979%_))
                                  (let ((_%e199925199984%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199923199979%_))))
                                    (let ((_%tl199927199989%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199925199984%_)))
                                          (_%hd199926199987%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199925199984%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd199926199987%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd199926199987%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199927199989%_))
                                                  (let ((_%e199928199992%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199927199989%_))))
                                                    (let ((_%tl199930199997%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199928199992%_)))
                                                          (_%hd199929199995%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199928199992%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199930199997%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl199924199981%_))
                      (let ((_%e199931200000%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199924199981%_))))
                        (let ((_%tl199933200005%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199931200000%_)))
                              (_%hd199932200003%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199931200000%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199932200003%_))
                              (let ((_%e199934200008%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd199932200003%_))))
                                (let ((_%tl199936200013%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199934200008%_)))
                                      (_%hd199935200011%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199934200008%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199935200011%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd199935200011%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199936200013%_))
                                              (let ((_%e199937200016%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199936200013%_))))
                                                (let ((_%tl199939200021%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199937200016%_)))
                                                      (_%hd199938200019%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199937200016%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199939200021%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199933200005%_))
                                                          (let ((_%e199940200024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl199933200005%_))))
                    (let ((_%tl199942200029%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199940200024%_)))
                          (_%hd199941200027%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199940200024%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199942200029%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199918199965%_))
                              (_%__kont202759202760%_
                               _%hd199938200019%_
                               _%hd199929199995%_
                               _%hd199829200207%_)
                              (let ()
                                (declare (not safe))
                                (_%g199823199947%_)))
                          (let () (declare (not safe)) (_%g199823199947%_)))))
                  (let () (declare (not safe)) (_%g199823199947%_)))
              (let () (declare (not safe)) (_%g199823199947%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199823199947%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199823199947%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199823199947%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199823199947%_)))))
                      (let () (declare (not safe)) (_%g199823199947%_)))
                  (let () (declare (not safe)) (_%g199823199947%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199823199947%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199823199947%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199823199947%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199823199947%_)))))
                          (let () (declare (not safe)) (_%g199823199947%_)))
                      (let () (declare (not safe)) (_%g199823199947%_)))
                  (let () (declare (not safe)) (_%g199823199947%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199823199947%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199823199947%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g199823199947%_))))))))
                 (_%generate1199670%_
                  (lambda (_%args199801%_
                           _%arglen199802%_
                           _%hd199803%_
                           _%body199804%_)
                    (let* ((_%len199806%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd199803%_)))
                           (_%condition199811%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd199803%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen199802%_
                                                (cons _%len199806%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen199802%_ (cons _%len199806%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len199806%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen199802%_
                                                    (cons _%len199806%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen199802%_ (cons _%len199806%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch199813%_
                            (if (_%dispatch-case?199668%_
                                 _%hd199803%_
                                 _%body199804%_)
                                (_%dispatch-case-e199669%_
                                 _%hd199803%_
                                 _%body199804%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self199665%_
                                 _%hd199803%_
                                 _%body199804%_))))
                      (cons _%condition199811%_
                            (cons (cons 'apply
                                        (cons _%dispatch199813%_
                                              (cons _%args199801%_ '())))
                                  '()))))))
          (let* ((_%g199672199700%_
                  (lambda (_%g199673199697%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199673199697%_))))
                 (_%g199671199798%_
                  (lambda (_%g199673199703%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199673199703%_))
                        (let ((_%e199676199705%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199673199703%_))))
                          (let ((_%hd199677199708%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199676199705%_)))
                                (_%tl199678199710%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199676199705%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl199678199710%_))
                                (let ((_g203916_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl199678199710%_
                                          '0))))
                                  (begin
                                    (let ((_g203917_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g203916_)
                                                 (##values-length _g203916_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g203917_ 2)))
                                          (error "Context expects 2 values"
                                                 _g203917_)))
                                    (let ((_%target199679199713%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g203916_ 0)))
                                          (_%tl199681199715%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g203916_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199681199715%_))
                                          (letrec ((_%loop199682199718%_
                                                    (lambda (_%hd199680199721%_
                                                             _%body199686199723%_
                                                             _%hd199687199724%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199680199721%_))
                                                          (let ((_%e199683199726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd199680199721%_))))
                    (let ((_%lp-hd199684199729%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199683199726%_)))
                          (_%lp-tl199685199731%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199683199726%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd199684199729%_))
                          (let ((_%e199690199734%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd199684199729%_))))
                            (let ((_%hd199691199737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199690199734%_)))
                                  (_%tl199692199739%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199690199734%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199692199739%_))
                                  (let ((_%e199693199742%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl199692199739%_))))
                                    (let ((_%hd199694199745%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199693199742%_)))
                                          (_%tl199695199747%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199693199742%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199695199747%_))
                                          (_%loop199682199718%_
                                           _%lp-tl199685199731%_
                                           (cons _%hd199694199745%_
                                                 _%body199686199723%_)
                                           (cons _%hd199691199737%_
                                                 _%hd199687199724%_))
                                          (_%g199672199700%_
                                           _%g199673199703%_))))
                                  (_%g199672199700%_ _%g199673199703%_))))
                          (_%g199672199700%_ _%g199673199703%_))))
                  (let ((_%body199688199750%_ (reverse _%body199686199723%_))
                        (_%hd199689199751%_ (reverse _%hd199687199724%_)))
                    ((lambda (_%g199674199753%_ _%g199675199754%_)
                       (let ((_%args199773%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen199774%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name199775%_
                              (let ((_%$e199770%_
                                     (let ((__tmp203918
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp203918 _%stx199666%_))))
                                (if _%$e199770%_
                                    _%$e199770%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args199773%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen199774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args199773%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args199773%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp203922
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name199775%_
                                                                (cons _%args199773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp203919
                                  (map (lambda (_%g199776199779%_
                                                _%g199777199781%_)
                                         (_%generate1199670%_
                                          _%args199773%_
                                          _%arglen199774%_
                                          _%g199776199779%_
                                          _%g199777199781%_))
                                       (let ((__tmp203920
                                              (lambda (_%g199783199786%_
                                                       _%g199784199788%_)
                                                (cons _%g199783199786%_
                                                      _%g199784199788%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp203920
                                          '()
                                          _%g199675199754%_))
                                       (let ((__tmp203921
                                              (lambda (_%g199790199793%_
                                                       _%g199791199795%_)
                                                (cons _%g199790199793%_
                                                      _%g199791199795%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp203921
                                          '()
                                          _%g199674199753%_)))))
                             (declare (not safe))
                             (foldr__0 cons __tmp203922 __tmp203919)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body199688199750%_
                     _%hd199689199751%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop199682199718%_
                                             _%target199679199713%_
                                             '()
                                             '()))
                                          (_%g199672199700%_
                                           _%g199673199703%_)))))
                                (_%g199672199700%_ _%g199673199703%_))))
                        (_%g199672199700%_ _%g199673199703%_)))))
            (_%g199671199798%_ _%stx199666%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self198902%_ _%stx198903%_ _%compiled-body?198904%_)
        (letrec ((_%generate-simple198906%_
                  (lambda (_%hd199650%_ _%body199651%_)
                    (_%coalesce-boolean198907%_
                     (_%simplify-let198908%_
                      (gxc#generate-runtime-simple-let
                       _%self198902%_
                       'let
                       _%hd199650%_
                       _%body199651%_
                       _%compiled-body?198904%_)))))
                 (_%coalesce-boolean198907%_
                  (lambda (_%code199511%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code199512199538%_ _%code199511%_)
                               (_%else199514199546%_
                                (lambda () _%code199511%_))
                               (_%K199516199583%_
                                (lambda (_%expr2199549%_
                                         _%expr1199550%_
                                         _%id199551%_)
                                  (let* ((_%expr2199552199560%_
                                          _%expr2199549%_)
                                         (_%else199554199568%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1199550%_
                                                        (cons _%expr2199549%_
                                                              '())))))
                                         (_%K199556199573%_
                                          (lambda (_%exprs199571%_)
                                            (cons 'or
                                                  (cons _%expr1199550%_
                                                        _%exprs199571%_)))))
                                    (if (pair? _%expr2199552199560%_)
                                        (let ((_%hd199557199576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2199552199560%_)))
                                              (_%tl199558199578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2199552199560%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd199557199576%_ 'or))
                                              (let ((_%exprs199581%_
                                                     _%tl199558199578%_))
                                                (_%K199556199573%_
                                                 _%exprs199581%_))
                                              (_%else199554199568%_)))
                                        (_%else199554199568%_))))))
                          (if (pair? _%code199512199538%_)
                              (let ((_%hd199517199586%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code199512199538%_)))
                                    (_%tl199518199588%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code199512199538%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd199517199586%_ 'let))
                                    (if (pair? _%tl199518199588%_)
                                        (let ((_%hd199519199591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl199518199588%_)))
                                              (_%tl199520199593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl199518199588%_))))
                                          (if (pair? _%hd199519199591%_)
                                              (let ((_%hd199531199596%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd199519199591%_)))
                                                    (_%tl199532199598%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd199519199591%_))))
                                                (if (pair? _%hd199531199596%_)
                                                    (let ((_%hd199533199601%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd199531199596%_)))
                                                          (_%tl199534199603%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd199531199596%_))))
                                                      (let ((_%id199606%_
                                                             _%hd199533199601%_))
                                                        (if (pair? _%tl199534199603%_)
                                                            (let ((_%hd199535199608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl199534199603%_)))
                          (_%tl199536199610%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl199534199603%_))))
                      (let ((_%expr1199613%_ _%hd199535199608%_))
                        (if (null? _%tl199536199610%_)
                            (if (null? _%tl199532199598%_)
                                (if (pair? _%tl199520199593%_)
                                    (let ((_%hd199521199615%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl199520199593%_)))
                                          (_%tl199522199617%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl199520199593%_))))
                                      (if (pair? _%hd199521199615%_)
                                          (let ((_%hd199523199620%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd199521199615%_)))
                                                (_%tl199524199622%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd199521199615%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd199523199620%_
                                                         'if))
                                                (if (pair? _%tl199524199622%_)
                                                    (let ((_%hd199525199625%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl199524199622%_)))
                                                          (_%tl199526199627%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl199524199622%_))))
                                                      (if ((lambda (_%g199629199631%_)
                                                             (eq? _%g199629199631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id199606%_))
                   _%hd199525199625%_)
                  (if (pair? _%tl199526199627%_)
                      (let ((_%hd199527199634%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl199526199627%_)))
                            (_%tl199528199636%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl199526199627%_))))
                        (if ((lambda (_%g199638199640%_)
                               (eq? _%g199638199640%_ _%id199606%_))
                             _%hd199527199634%_)
                            (if (pair? _%tl199528199636%_)
                                (let ((_%hd199529199643%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl199528199636%_)))
                                      (_%tl199530199645%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl199528199636%_))))
                                  (let ((_%expr2199648%_ _%hd199529199643%_))
                                    (if (null? _%tl199530199645%_)
                                        (if (null? _%tl199522199617%_)
                                            (_%K199516199583%_
                                             _%expr2199648%_
                                             _%expr1199613%_
                                             _%id199606%_)
                                            (_%else199514199546%_))
                                        (_%else199514199546%_))))
                                (_%else199514199546%_))
                            (_%else199514199546%_)))
                      (_%else199514199546%_))
                  (_%else199514199546%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else199514199546%_))
                                                (_%else199514199546%_)))
                                          (_%else199514199546%_)))
                                    (_%else199514199546%_))
                                (_%else199514199546%_))
                            (_%else199514199546%_))))
                    (_%else199514199546%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else199514199546%_)))
                                              (_%else199514199546%_)))
                                        (_%else199514199546%_))
                                    (_%else199514199546%_)))
                              (_%else199514199546%_)))
                        _%code199511%_)))
                 (_%simplify-let198908%_
                  (lambda (_%code199210%_)
                    (let* ((_%code199211199283%_ _%code199210%_)
                           (_%else199216199291%_ (lambda () _%code199210%_)))
                      (let ((_%K199275199491%_
                             (lambda (_%expr199489%_) _%expr199489%_))
                            (_%K199258199437%_
                             (lambda (_%body199433%_
                                      _%expr199434%_
                                      _%id199435%_)
                               (cons 'let
                                     (cons (cons (cons _%id199435%_
                                                       (cons _%expr199434%_
                                                             '()))
                                                 '())
                                           _%body199433%_))))
                            (_%K199235199361%_
                             (lambda (_%body199355%_
                                      _%expr2199356%_
                                      _%id2199357%_
                                      _%expr1199358%_
                                      _%id1199359%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1199359%_
                                                       (cons _%expr1199358%_
                                                             '()))
                                                 (cons (cons _%id2199357%_
                                                             (cons _%expr2199356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body199355%_))))
                            (_%K199218199300%_
                             (lambda (_%body199295%_
                                      _%bind199296%_
                                      _%expr1199297%_
                                      _%id1199298%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1199298%_
                                                       (cons _%expr1199297%_
                                                             '()))
                                                 _%bind199296%_)
                                           _%body199295%_)))))
                        (if (pair? _%code199211199283%_)
                            (let ((_%tl199277199496%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code199211199283%_)))
                                  (_%hd199276199494%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code199211199283%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd199276199494%_ 'let))
                                  (if (pair? _%tl199277199496%_)
                                      (let ((_%tl199279199501%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl199277199496%_)))
                                            (_%hd199278199499%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl199277199496%_))))
                                        (if (null? _%hd199278199499%_)
                                            (if (pair? _%tl199279199501%_)
                                                (let ((_%tl199281199506%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl199279199501%_)))
                                                      (_%hd199280199504%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl199279199501%_))))
                                                  (if (null? _%tl199281199506%_)
                                                      (let ((_%expr199509%_
                                                             _%hd199280199504%_))
                                                        (_%K199275199491%_
                                                         _%expr199509%_))
                                                      (_%else199216199291%_)))
                                                (_%else199216199291%_))
                                            (if (pair? _%hd199278199499%_)
                                                (let ((_%tl199270199452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd199278199499%_)))
                                                      (_%hd199269199450%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd199278199499%_))))
                                                  (if (pair? _%hd199269199450%_)
                                                      (let ((_%tl199272199457%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd199269199450%_)))
                    (_%hd199271199455%_
                     (let () (declare (not safe)) (##car _%hd199269199450%_))))
                (if (pair? _%tl199272199457%_)
                    (let ((_%tl199274199464%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl199272199457%_)))
                          (_%hd199273199462%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl199272199457%_))))
                      (if (null? _%tl199274199464%_)
                          (if (null? _%tl199270199452%_)
                              (if (pair? _%tl199279199501%_)
                                  (let ((_%tl199264199471%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199279199501%_)))
                                        (_%hd199263199469%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199279199501%_))))
                                    (if (pair? _%hd199263199469%_)
                                        (let ((_%tl199266199476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd199263199469%_)))
                                              (_%hd199265199474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd199263199469%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd199265199474%_
                                                       'let))
                                              (if (pair? _%tl199266199476%_)
                                                  (let ((_%tl199268199481%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl199266199476%_)))
                                                        (_%hd199267199479%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl199266199476%_))))
                                                    (if (null? _%hd199267199479%_)
                                                        (if (null? _%tl199264199471%_)
                                                            (let ((_%id199460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd199271199455%_)
                          (_%expr199467%_ _%hd199273199462%_)
                          (_%body199484%_ _%tl199268199481%_))
                      (_%K199258199437%_
                       _%body199484%_
                       _%expr199467%_
                       _%id199460%_))
                    (_%else199216199291%_))
                (if (pair? _%hd199267199479%_)
                    (let ((_%tl199247199410%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd199267199479%_)))
                          (_%hd199246199408%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd199267199479%_))))
                      (if (pair? _%hd199246199408%_)
                          (let ((_%tl199249199415%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd199246199408%_)))
                                (_%hd199248199413%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd199246199408%_))))
                            (if (pair? _%tl199249199415%_)
                                (let ((_%tl199251199422%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl199249199415%_)))
                                      (_%hd199250199420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl199249199415%_))))
                                  (if (null? _%tl199251199422%_)
                                      (if (null? _%tl199247199410%_)
                                          (if (null? _%tl199264199471%_)
                                              (let ((_%id1199384%_
                                                     _%hd199271199455%_)
                                                    (_%expr1199391%_
                                                     _%hd199273199462%_)
                                                    (_%id2199418%_
                                                     _%hd199248199413%_)
                                                    (_%expr2199425%_
                                                     _%hd199250199420%_)
                                                    (_%body199427%_
                                                     _%tl199268199481%_))
                                                (_%K199235199361%_
                                                 _%body199427%_
                                                 _%expr2199425%_
                                                 _%id2199418%_
                                                 _%expr1199391%_
                                                 _%id1199384%_))
                                              (_%else199216199291%_))
                                          (_%else199216199291%_))
                                      (_%else199216199291%_)))
                                (_%else199216199291%_)))
                          (_%else199216199291%_)))
                    (_%else199216199291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else199216199291%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd199265199474%_
                                                           'let*))
                                                  (if (pair? _%tl199266199476%_)
                                                      (let ((_%tl199228199344%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl199266199476%_)))
                    (_%hd199227199342%_
                     (let () (declare (not safe)) (##car _%tl199266199476%_))))
                (if (null? _%tl199264199471%_)
                    (let ((_%id1199323%_ _%hd199271199455%_)
                          (_%expr1199330%_ _%hd199273199462%_)
                          (_%bind199347%_ _%hd199227199342%_)
                          (_%body199349%_ _%tl199228199344%_))
                      (_%K199218199300%_
                       _%body199349%_
                       _%bind199347%_
                       _%expr1199330%_
                       _%id1199323%_))
                    (_%else199216199291%_)))
              (_%else199216199291%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else199216199291%_))))
                                        (_%else199216199291%_)))
                                  (_%else199216199291%_))
                              (_%else199216199291%_))
                          (_%else199216199291%_)))
                    (_%else199216199291%_)))
              (_%else199216199291%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else199216199291%_))))
                                      (_%else199216199291%_))
                                  (_%else199216199291%_)))
                            (_%else199216199291%_))))))
                 (_%generate-values198909%_
                  (lambda (_%hd199023%_ _%body199024%_)
                    (let _%lp199026%_ ((_%rest199028%_ _%hd199023%_)
                                       (_%bind199029%_ '())
                                       (_%check199030%_ '())
                                       (_%post199031%_ '()))
                      (let* ((_%__stx203076203077%_ _%rest199028%_)
                             (_%g199034199045%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx203076203077%_)))))
                        (let ((_%__kont203078203079%_
                               (lambda (_%g199036199072%_ _%g199037199073%_)
                                 (let* ((_%__stx203032203033%_
                                         _%g199037199073%_)
                                        (_%g199088199113%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx203032203033%_)))))
                                   (let ((_%__kont203034203035%_
                                          (lambda (_%g199090199186%_
                                                   _%g199091199187%_)
                                            (let ((_%eid199201%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g199091199187%_)))
                                                  (_%expr199202%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self198902%_
                                                      _%g199090199186%_))))
                                              (_%lp199026%_
                                               _%g199036199072%_
                                               (cons (cons _%eid199201%_
                                                           (cons _%expr199202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind199029%_)
                                               _%check199030%_
                                               _%post199031%_))))
                                         (_%__kont203036203037%_
                                          (lambda (_%g199101199134%_
                                                   _%g199102199135%_)
                                            (let* ((_%vals199148%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values199150%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals199148%_
                                                     _%g199102199135%_
                                                     _%g199101199134%_))
                                                   (_%refs199152%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals199148%_
                                                     _%g199102199135%_))
                                                   (_%expr199154%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self198902%_
                                                       _%g199101199134%_))))
                                              (_%lp199026%_
                                               _%g199036199072%_
                                               (cons (cons _%vals199148%_
                                                           (cons _%expr199154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind199029%_)
                                               (cons _%check-values199150%_
                                                     _%check199030%_)
                                               (cons _%refs199152%_
                                                     _%post199031%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx203032203033%_))
                                         (let ((_%e199092199162%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx203032203033%_))))
                                           (let ((_%tl199094199167%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199092199162%_)))
                                                 (_%hd199093199165%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199092199162%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd199093199165%_))
                                                 (let ((_%e199095199170%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd199093199165%_))))
                                                   (let ((_%tl199097199175%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199095199170%_)))
                                                         (_%hd199096199173%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199095199170%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199097199175%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl199094199167%_))
                     (let ((_%e199098199178%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl199094199167%_))))
                       (let ((_%tl199100199183%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199098199178%_)))
                             (_%hd199099199181%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199098199178%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl199100199183%_))
                             (_%__kont203034203035%_
                              _%hd199099199181%_
                              _%hd199096199173%_)
                             (let ()
                               (declare (not safe))
                               (_%g199088199113%_)))))
                     (let () (declare (not safe)) (_%g199088199113%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl199094199167%_))
                     (let ((_%e199106199126%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl199094199167%_))))
                       (let ((_%tl199108199131%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199106199126%_)))
                             (_%hd199107199129%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199106199126%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl199108199131%_))
                             (_%__kont203036203037%_
                              _%hd199107199129%_
                              _%hd199093199165%_)
                             (let ()
                               (declare (not safe))
                               (_%g199088199113%_)))))
                     (let () (declare (not safe)) (_%g199088199113%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl199094199167%_))
                                                     (let ((_%e199106199126%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl199094199167%_))))
                                                       (let ((_%tl199108199131%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e199106199126%_)))
                     (_%hd199107199129%_
                      (let () (declare (not safe)) (##car _%e199106199126%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl199108199131%_))
                     (_%__kont203036203037%_
                      _%hd199107199129%_
                      _%hd199093199165%_)
                     (let () (declare (not safe)) (_%g199088199113%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g199088199113%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g199088199113%_)))))))
                              (_%__kont203080203081%_
                               (lambda ()
                                 (let* ((_%body199052%_
                                         (if _%compiled-body?198904%_
                                             _%body199024%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self198902%_
                                                _%body199024%_))))
                                        (_%body199054%_
                                         (_%generate-values-post198910%_
                                          _%post199031%_
                                          _%body199052%_))
                                        (_%body199056%_
                                         (_%generate-values-check198911%_
                                          _%check199030%_
                                          _%body199054%_)))
                                   (cons 'let
                                         (cons (reverse _%bind199029%_)
                                               (cons _%body199056%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx203076203077%_))
                              (let ((_%e199038199064%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx203076203077%_))))
                                (let ((_%tl199040199069%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199038199064%_)))
                                      (_%hd199039199067%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199038199064%_))))
                                  (_%__kont203078203079%_
                                   _%tl199040199069%_
                                   _%hd199039199067%_)))
                              (_%__kont203080203081%_)))))))
                 (_%generate-values-post198910%_
                  (lambda (_%post198982%_ _%body198983%_)
                    (let _%lp198985%_ ((_%rest198987%_ _%post198982%_)
                                       (_%body198988%_ _%body198983%_))
                      (let* ((_%rest198989198997%_ _%rest198987%_)
                             (_%else198991199005%_ (lambda () _%body198988%_))
                             (_%K198993199011%_
                              (lambda (_%rest199008%_ _%bind199009%_)
                                (_%lp198985%_
                                 _%rest199008%_
                                 (cons 'let
                                       (cons _%bind199009%_
                                             (cons _%body198988%_ '())))))))
                        (if (pair? _%rest198989198997%_)
                            (let ((_%hd198994199014%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest198989198997%_)))
                                  (_%tl198995199016%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest198989198997%_))))
                              (let* ((_%bind199019%_ _%hd198994199014%_)
                                     (_%rest199021%_ _%tl198995199016%_))
                                (_%K198993199011%_
                                 _%rest199021%_
                                 _%bind199019%_)))
                            (_%else198991199005%_))))))
                 (_%generate-values-check198911%_
                  (lambda (_%check198979%_ _%body198980%_)
                    (cons 'begin
                          (let ((__tmp203924 (cons _%body198980%_ '()))
                                (__tmp203923 (reverse _%check198979%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp203924 __tmp203923))))))
          (let* ((_%g198913198930%_
                  (lambda (_%g198914198927%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198914198927%_))))
                 (_%g198912198976%_
                  (lambda (_%g198914198933%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198914198933%_))
                        (let ((_%e198917198935%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198914198933%_))))
                          (let ((_%hd198918198938%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198917198935%_)))
                                (_%tl198919198940%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198917198935%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198919198940%_))
                                (let ((_%e198920198943%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl198919198940%_))))
                                  (let ((_%hd198921198946%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198920198943%_)))
                                        (_%tl198922198948%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198920198943%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198922198948%_))
                                        (let ((_%e198923198951%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl198922198948%_))))
                                          (let ((_%hd198924198954%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198923198951%_)))
                                                (_%tl198925198956%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198923198951%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198925198956%_))
                                                ((lambda (_%g198915198959%_
                                                          _%g198916198960%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g198916198960%_)
                                                       (_%generate-simple198906%_
                                                        _%g198916198960%_
                                                        _%g198915198959%_)
                                                       (_%generate-values198909%_
                                                        _%g198916198960%_
                                                        _%g198915198959%_)))
                                                 _%hd198924198954%_
                                                 _%hd198921198946%_)
                                                (_%g198913198930%_
                                                 _%g198914198933%_))))
                                        (_%g198913198930%_
                                         _%g198914198933%_))))
                                (_%g198913198930%_ _%g198914198933%_))))
                        (_%g198913198930%_ _%g198914198933%_)))))
            (_%g198912198976%_ _%stx198903%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self199656%_ _%stx199657%_)
        (let ((_%compiled-body?199659%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self199656%_
           _%stx199657%_
           _%compiled-body?199659%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g203925_
        (let ((_g203926_ (let () (declare (not safe)) (##length _g203925_))))
          (cond ((let () (declare (not safe)) (##fx= _g203926_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g203925_))
                ((let () (declare (not safe)) (##fx= _g203926_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g203925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g203925_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals198796%_ _%hd198797%_)
        (let _%lp198799%_ ((_%rest198801%_ _%hd198797%_)
                           (_%k198802%_ '0)
                           (_%r198803%_ '()))
          (let* ((_%__stx203090203091%_ _%rest198801%_)
                 (_%g198808198825%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx203090203091%_)))))
            (let ((_%__kont203092203093%_
                   (lambda (_%g198810198888%_)
                     (_%lp198799%_
                      _%g198810198888%_
                      (let () (declare (not safe)) (##fx+ _%k198802%_ '1))
                      _%r198803%_)))
                  (_%__kont203094203095%_
                   (lambda (_%g198815198861%_ _%g198816198862%_)
                     (_%lp198799%_
                      _%g198815198861%_
                      (let () (declare (not safe)) (##fx+ _%k198802%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g198816198862%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals198796%_
                                         _%k198802%_
                                         _%g198815198861%_)
                                        '()))
                            _%r198803%_))))
                  (_%__kont203096203097%_
                   (lambda (_%g198820198837%_)
                     (let ((__tmp203927
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g198820198837%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals198796%_
                                               _%k198802%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp203927 _%r198803%_))))
                  (_%__kont203098203099%_ (lambda () (reverse _%r198803%_))))
              (let ((_%g198806198848%_
                     (lambda ()
                       (let ((_%g198820198837%_ _%__stx203090203091%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g198820198837%_))
                             (_%__kont203096203097%_ _%g198820198837%_)
                             (_%__kont203098203099%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx203090203091%_))
                    (let ((_%e198811198877%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx203090203091%_))))
                      (let ((_%tl198813198882%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198811198877%_)))
                            (_%hd198812198880%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198811198877%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd198812198880%_))
                            (let ((_%e198814198885%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd198812198880%_))))
                              (if (equal? _%e198814198885%_ '#f)
                                  (_%__kont203092203093%_ _%tl198813198882%_)
                                  (_%__kont203094203095%_
                                   _%tl198813198882%_
                                   _%hd198812198880%_)))
                            (_%__kont203094203095%_
                             _%tl198813198882%_
                             _%hd198812198880%_))))
                    (let () (declare (not safe)) (_%g198806198848%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self198475%_ _%stx198476%_ _%compiled-body?198477%_)
        (letrec ((_%generate-simple198479%_
                  (lambda (_%hd198781%_ _%body198782%_)
                    (gxc#generate-runtime-simple-let
                     _%self198475%_
                     'letrec
                     _%hd198781%_
                     _%body198782%_
                     _%compiled-body?198477%_)))
                 (_%generate-values198480%_
                  (lambda (_%hd198560%_ _%body198561%_)
                    (let _%lp198563%_ ((_%rest198565%_ _%hd198560%_)
                                       (_%bind198566%_ '())
                                       (_%check198567%_ '())
                                       (_%post198568%_ '()))
                      (let* ((_%__stx203164203165%_ _%rest198565%_)
                             (_%g198571198582%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx203164203165%_)))))
                        (let ((_%__kont203166203167%_
                               (lambda (_%g198573198609%_ _%g198574198610%_)
                                 (let* ((_%__stx203120203121%_
                                         _%g198574198610%_)
                                        (_%g198625198650%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx203120203121%_)))))
                                   (let ((_%__kont203122203123%_
                                          (lambda (_%g198627198757%_
                                                   _%g198628198758%_)
                                            (let ((_%eid198772%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g198628198758%_)))
                                                  (_%expr198773%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self198475%_
                                                      _%g198627198757%_))))
                                              (_%lp198563%_
                                               _%g198573198609%_
                                               (cons (cons _%eid198772%_
                                                           (cons _%expr198773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind198566%_)
                                               _%check198567%_
                                               _%post198568%_))))
                                         (_%__kont203124203125%_
                                          (lambda (_%g198638198671%_
                                                   _%g198639198672%_)
                                            (let* ((_%vals198685%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values198687%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals198685%_
                                                     _%g198639198672%_
                                                     _%g198638198671%_))
                                                   (_%refs198689%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals198685%_
                                                     _%g198639198672%_))
                                                   (_%expr198691%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self198475%_
                                                       _%g198638198671%_))))
                                              (_%lp198563%_
                                               _%g198573198609%_
                                               (let ((__tmp203929
                                                      (cons (cons _%vals198685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr198691%_ '()))
                    _%bind198566%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp203928
                                                      (map (lambda (_%e198693198695%_)
                                                             (let* ((_%e198693198697198706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e198693198695%_)
                            (_%E198699198710%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e198693198697198706%_
                                        '([eid _])))
                               '#!void))
                            (_%K198700198715%_
                             (lambda (_%eid198713%_)
                               (cons _%eid198713%_ (cons '#!void '())))))
                       (if (pair? _%e198693198697198706%_)
                           (let ((_%hd198701198718%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e198693198697198706%_)))
                                 (_%tl198702198720%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e198693198697198706%_))))
                             (let ((_%eid198723%_ _%hd198701198718%_))
                               (if (pair? _%tl198702198720%_)
                                   (let ((_%tl198704198725%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl198702198720%_))))
                                     (if (null? _%tl198704198725%_)
                                         (_%K198700198715%_ _%eid198723%_)
                                         (_%E198699198710%_)))
                                   (_%E198699198710%_))))
                           (_%E198699198710%_))))
                   _%refs198689%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp203929
                                                  __tmp203928))
                                               (cons _%check-values198687%_
                                                     _%check198567%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs198689%_
                                                  _%post198568%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx203120203121%_))
                                         (let ((_%e198629198733%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx203120203121%_))))
                                           (let ((_%tl198631198738%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198629198733%_)))
                                                 (_%hd198630198736%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198629198733%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd198630198736%_))
                                                 (let ((_%e198632198741%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd198630198736%_))))
                                                   (let ((_%tl198634198746%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e198632198741%_)))
                                                         (_%hd198633198744%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e198632198741%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl198634198746%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl198631198738%_))
                     (let ((_%e198635198749%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl198631198738%_))))
                       (let ((_%tl198637198754%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e198635198749%_)))
                             (_%hd198636198752%_
                              (let ()
                                (declare (not safe))
                                (##car _%e198635198749%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl198637198754%_))
                             (_%__kont203122203123%_
                              _%hd198636198752%_
                              _%hd198633198744%_)
                             (let ()
                               (declare (not safe))
                               (_%g198625198650%_)))))
                     (let () (declare (not safe)) (_%g198625198650%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl198631198738%_))
                     (let ((_%e198643198663%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl198631198738%_))))
                       (let ((_%tl198645198668%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e198643198663%_)))
                             (_%hd198644198666%_
                              (let ()
                                (declare (not safe))
                                (##car _%e198643198663%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl198645198668%_))
                             (_%__kont203124203125%_
                              _%hd198644198666%_
                              _%hd198630198736%_)
                             (let ()
                               (declare (not safe))
                               (_%g198625198650%_)))))
                     (let () (declare (not safe)) (_%g198625198650%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl198631198738%_))
                                                     (let ((_%e198643198663%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl198631198738%_))))
                                                       (let ((_%tl198645198668%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198643198663%_)))
                     (_%hd198644198666%_
                      (let () (declare (not safe)) (##car _%e198643198663%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl198645198668%_))
                     (_%__kont203124203125%_
                      _%hd198644198666%_
                      _%hd198630198736%_)
                     (let () (declare (not safe)) (_%g198625198650%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g198625198650%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g198625198650%_)))))))
                              (_%__kont203168203169%_
                               (lambda ()
                                 (let* ((_%body198589%_
                                         (if _%compiled-body?198477%_
                                             _%body198561%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self198475%_
                                                _%body198561%_))))
                                        (_%body198591%_
                                         (_%generate-values-post198482%_
                                          _%post198568%_
                                          _%body198589%_))
                                        (_%body198593%_
                                         (_%generate-values-check198481%_
                                          _%check198567%_
                                          _%body198591%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind198566%_)
                                               (cons _%body198593%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx203164203165%_))
                              (let ((_%e198575198601%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx203164203165%_))))
                                (let ((_%tl198577198606%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198575198601%_)))
                                      (_%hd198576198604%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198575198601%_))))
                                  (_%__kont203166203167%_
                                   _%tl198577198606%_
                                   _%hd198576198604%_)))
                              (_%__kont203168203169%_)))))))
                 (_%generate-values-check198481%_
                  (lambda (_%check198557%_ _%body198558%_)
                    (cons 'begin
                          (let ((__tmp203931 (cons _%body198558%_ '()))
                                (__tmp203930 (reverse _%check198557%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp203931 __tmp203930)))))
                 (_%generate-values-post198482%_
                  (lambda (_%post198550%_ _%body198551%_)
                    (cons 'begin
                          (let ((__tmp203935 (cons _%body198551%_ '()))
                                (__tmp203932
                                 (let ((__tmp203934
                                        (lambda (_%g198552198554%_)
                                          (cons 'set! _%g198552198554%_)))
                                       (__tmp203933 (reverse _%post198550%_)))
                                   (declare (not safe))
                                   (##map __tmp203934 __tmp203933))))
                            (declare (not safe))
                            (foldr__0 cons __tmp203935 __tmp203932))))))
          (let* ((_%g198484198501%_
                  (lambda (_%g198485198498%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198485198498%_))))
                 (_%g198483198547%_
                  (lambda (_%g198485198504%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198485198504%_))
                        (let ((_%e198488198506%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198485198504%_))))
                          (let ((_%hd198489198509%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198488198506%_)))
                                (_%tl198490198511%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198488198506%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198490198511%_))
                                (let ((_%e198491198514%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl198490198511%_))))
                                  (let ((_%hd198492198517%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198491198514%_)))
                                        (_%tl198493198519%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198491198514%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198493198519%_))
                                        (let ((_%e198494198522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl198493198519%_))))
                                          (let ((_%hd198495198525%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198494198522%_)))
                                                (_%tl198496198527%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198494198522%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198496198527%_))
                                                ((lambda (_%g198486198530%_
                                                          _%g198487198531%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g198487198531%_)
                                                       (_%generate-simple198479%_
                                                        _%g198487198531%_
                                                        _%g198486198530%_)
                                                       (_%generate-values198480%_
                                                        _%g198487198531%_
                                                        _%g198486198530%_)))
                                                 _%hd198495198525%_
                                                 _%hd198492198517%_)
                                                (_%g198484198501%_
                                                 _%g198485198504%_))))
                                        (_%g198484198501%_
                                         _%g198485198504%_))))
                                (_%g198484198501%_ _%g198485198504%_))))
                        (_%g198484198501%_ _%g198485198504%_)))))
            (_%g198483198547%_ _%stx198476%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self198787%_ _%stx198788%_)
        (let ((_%compiled-body?198790%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self198787%_
           _%stx198788%_
           _%compiled-body?198790%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g203936_
        (let ((_g203937_ (let () (declare (not safe)) (##length _g203936_))))
          (cond ((let () (declare (not safe)) (##fx= _g203937_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g203936_))
                ((let () (declare (not safe)) (##fx= _g203937_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g203936_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g203936_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self198056%_ _%stx198057%_)
        (letrec ((_%generate-values198059%_
                  (lambda (_%hd198302%_ _%body198303%_)
                    (let _%lp198305%_ ((_%rest198307%_ _%hd198302%_)
                                       (_%bind198308%_ '()))
                      (let* ((_%rest198309198317%_ _%rest198307%_)
                             (_%else198311198328%_
                              (lambda ()
                                (let ((_%bind198325%_ (reverse _%bind198308%_))
                                      (_%body198326%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self198056%_
                                          _%body198303%_))))
                                  (cons 'letrec*
                                        (cons _%bind198325%_
                                              (cons _%body198326%_ '()))))))
                             (_%K198313198462%_
                              (lambda (_%rest198331%_ _%hd-bind198332%_)
                                (let* ((_%__stx203178203179%_
                                        _%hd-bind198332%_)
                                       (_%g198335198360%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx203178203179%_)))))
                                  (let ((_%__kont203180203181%_
                                         (lambda (_%g198337198441%_
                                                  _%g198338198442%_)
                                           (let ((_%eid198456%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g198338198442%_)))
                                                 (_%expr198457%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self198056%_
                                                     _%g198337198441%_))))
                                             (_%lp198305%_
                                              _%rest198331%_
                                              (cons (cons _%eid198456%_
                                                          (cons _%expr198457%_
                                                                '()))
                                                    _%bind198308%_)))))
                                        (_%__kont203182203183%_
                                         (lambda (_%g198348198381%_
                                                  _%g198349198382%_)
                                           (let* ((_%vals198401%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp198403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values198405%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp198403%_
                                                    _%g198349198382%_
                                                    _%g198348198381%_))
                                                  (_%refs198407%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals198401%_
                                                    _%g198349198382%_))
                                                  (_%expr198409%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self198056%_
                                                      _%g198348198381%_))))
                                             (_%lp198305%_
                                              _%rest198331%_
                                              (let ((__tmp203938
                                                     (cons (cons _%vals198401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp198403%_
                                                       (cons _%expr198409%_
                                                             '()))
                                                 '())
                                           (cons _%check-values198405%_
                                                 (cons _%tmp198403%_ '()))))
                               '()))
                   _%bind198308%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp203938
                                                 _%refs198407%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx203178203179%_))
                                        (let ((_%e198339198417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx203178203179%_))))
                                          (let ((_%tl198341198422%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198339198417%_)))
                                                (_%hd198340198420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198339198417%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd198340198420%_))
                                                (let ((_%e198342198425%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd198340198420%_))))
                                                  (let ((_%tl198344198430%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198342198425%_)))
                                                        (_%hd198343198428%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198342198425%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198344198430%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl198341198422%_))
                                                            (let ((_%e198345198433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl198341198422%_))))
                      (let ((_%tl198347198438%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198345198433%_)))
                            (_%hd198346198436%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198345198433%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198347198438%_))
                            (_%__kont203180203181%_
                             _%hd198346198436%_
                             _%hd198343198428%_)
                            (let ()
                              (declare (not safe))
                              (_%g198335198360%_)))))
                    (let () (declare (not safe)) (_%g198335198360%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl198341198422%_))
                    (let ((_%e198353198373%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl198341198422%_))))
                      (let ((_%tl198355198378%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198353198373%_)))
                            (_%hd198354198376%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198353198373%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198355198378%_))
                            (_%__kont203182203183%_
                             _%hd198354198376%_
                             _%hd198340198420%_)
                            (let ()
                              (declare (not safe))
                              (_%g198335198360%_)))))
                    (let () (declare (not safe)) (_%g198335198360%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl198341198422%_))
                                                    (let ((_%e198353198373%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl198341198422%_))))
                                                      (let ((_%tl198355198378%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e198353198373%_)))
                    (_%hd198354198376%_
                     (let () (declare (not safe)) (##car _%e198353198373%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl198355198378%_))
                    (_%__kont203182203183%_
                     _%hd198354198376%_
                     _%hd198340198420%_)
                    (let () (declare (not safe)) (_%g198335198360%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198335198360%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g198335198360%_))))))))
                        (if (pair? _%rest198309198317%_)
                            (let ((_%hd198314198465%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest198309198317%_)))
                                  (_%tl198315198467%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest198309198317%_))))
                              (let* ((_%hd-bind198470%_ _%hd198314198465%_)
                                     (_%rest198472%_ _%tl198315198467%_))
                                (_%K198313198462%_
                                 _%rest198472%_
                                 _%hd-bind198470%_)))
                            (_%else198311198328%_))))))
                 (_%generate-letrec?198060%_
                  (lambda (_%hd198192%_)
                    (let _%lp198194%_ ((_%rest198196%_ _%hd198192%_))
                      (let* ((_%rest198197198205%_ _%rest198196%_)
                             (_%else198199198213%_ (lambda () '#t))
                             (_%K198201198290%_
                              (lambda (_%rest198216%_ _%hd-bind198217%_)
                                (let* ((_%g198219198236%_
                                        (lambda (_%g198220198233%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g198220198233%_))))
                                       (_%g198218198287%_
                                        (lambda (_%g198220198239%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g198220198239%_))
                                              (let ((_%e198223198241%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g198220198239%_))))
                                                (let ((_%hd198224198244%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198223198241%_)))
                                                      (_%tl198225198246%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198223198241%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd198224198244%_))
                                                      (let ((_%e198226198249%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd198224198244%_))))
                (let ((_%hd198227198252%_
                       (let () (declare (not safe)) (##car _%e198226198249%_)))
                      (_%tl198228198254%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198226198249%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198228198254%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198225198246%_))
                          (let ((_%e198229198257%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl198225198246%_))))
                            (let ((_%hd198230198260%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198229198257%_)))
                                  (_%tl198231198262%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198229198257%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198231198262%_))
                                  ((lambda (_%g198221198265%_
                                            _%g198222198266%_)
                                     (if (_%is-lambda-expr?198061%_
                                          _%g198221198265%_)
                                         (_%lp198194%_ _%rest198216%_)
                                         '#f))
                                   _%hd198230198260%_
                                   _%hd198227198252%_)
                                  (_%g198219198236%_ _%g198220198239%_))))
                          (_%g198219198236%_ _%g198220198239%_))
                      (_%g198219198236%_ _%g198220198239%_))))
              (_%g198219198236%_ _%g198220198239%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198219198236%_
                                               _%g198220198239%_)))))
                                  (_%g198218198287%_ _%hd-bind198217%_)))))
                        (if (pair? _%rest198197198205%_)
                            (let ((_%hd198202198293%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest198197198205%_)))
                                  (_%tl198203198295%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest198197198205%_))))
                              (let* ((_%hd-bind198298%_ _%hd198202198293%_)
                                     (_%rest198300%_ _%tl198203198295%_))
                                (_%K198201198290%_
                                 _%rest198300%_
                                 _%hd-bind198298%_)))
                            (_%else198199198213%_))))))
                 (_%is-lambda-expr?198061%_
                  (lambda (_%expr198129%_)
                    (let* ((_%__stx203222203223%_ _%expr198129%_)
                           (_%g198132198146%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx203222203223%_)))))
                      (let ((_%__kont203224203225%_
                             (lambda (_%g198134198174%_ _%g198135198175%_)
                               '#t))
                            (_%__kont203226203227%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx203222203223%_))
                            (let ((_%e198136198158%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx203222203223%_))))
                              (let ((_%tl198138198163%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198136198158%_)))
                                    (_%hd198137198161%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198136198158%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd198137198161%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd198137198161%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198138198163%_))
                                            (let ((_%e198139198166%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl198138198163%_))))
                                              (let ((_%tl198141198171%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198139198166%_)))
                                                    (_%hd198140198169%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198139198166%_))))
                                                (_%__kont203224203225%_
                                                 _%tl198141198171%_
                                                 _%hd198140198169%_)))
                                            (_%__kont203226203227%_))
                                        (_%__kont203226203227%_))
                                    (_%__kont203226203227%_))))
                            (_%__kont203226203227%_)))))))
          (let* ((_%g198063198080%_
                  (lambda (_%g198064198077%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198064198077%_))))
                 (_%g198062198126%_
                  (lambda (_%g198064198083%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198064198083%_))
                        (let ((_%e198067198085%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198064198083%_))))
                          (let ((_%hd198068198088%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198067198085%_)))
                                (_%tl198069198090%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198067198085%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198069198090%_))
                                (let ((_%e198070198093%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl198069198090%_))))
                                  (let ((_%hd198071198096%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198070198093%_)))
                                        (_%tl198072198098%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198070198093%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198072198098%_))
                                        (let ((_%e198073198101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl198072198098%_))))
                                          (let ((_%hd198074198104%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198073198101%_)))
                                                (_%tl198075198106%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198073198101%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198075198106%_))
                                                ((lambda (_%g198065198109%_
                                                          _%g198066198110%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g198066198110%_)
                                                       (if (_%generate-letrec?198060%_
                                                            _%g198066198110%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self198056%_
                                                            'letrec
                                                            _%g198066198110%_
                                                            _%g198065198109%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self198056%_
                                                            'letrec*
                                                            _%g198066198110%_
                                                            _%g198065198109%_
                                                            '#f))
                                                       (_%generate-values198059%_
                                                        _%g198066198110%_
                                                        _%g198065198109%_)))
                                                 _%hd198074198104%_
                                                 _%hd198071198096%_)
                                                (_%g198063198080%_
                                                 _%g198064198083%_))))
                                        (_%g198063198080%_
                                         _%g198064198083%_))))
                                (_%g198063198080%_ _%g198064198083%_))))
                        (_%g198063198080%_ _%g198064198083%_)))))
            (_%g198062198126%_ _%stx198057%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd197993%_)
        (let _%lp197995%_ ((_%rest197997%_ _%hd197993%_))
          (let* ((_%rest197998198014%_ _%rest197997%_)
                 (_%else198001198022%_ (lambda () '#f)))
            (let ((_%K198004198035%_
                   (lambda (_%rest198033%_) (_%lp197995%_ _%rest198033%_)))
                  (_%K198003198027%_ (lambda () '#t)))
              (let ((_%try-match198000198030%_
                     (lambda ()
                       (if (null? _%rest197998198014%_)
                           (_%K198003198027%_)
                           (_%else198001198022%_)))))
                (if (pair? _%rest197998198014%_)
                    (let ((_%tl198006198040%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest197998198014%_)))
                          (_%hd198005198038%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest197998198014%_))))
                      (if (pair? _%hd198005198038%_)
                          (let ((_%tl198008198045%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd198005198038%_)))
                                (_%hd198007198043%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd198005198038%_))))
                            (if (pair? _%hd198007198043%_)
                                (let ((_%tl198012198048%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd198007198043%_))))
                                  (if (null? _%tl198012198048%_)
                                      (if (pair? _%tl198008198045%_)
                                          (let ((_%tl198010198051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl198008198045%_))))
                                            (if (null? _%tl198010198051%_)
                                                (let ((_%rest198054%_
                                                       _%tl198006198040%_))
                                                  (_%lp197995%_
                                                   _%rest198054%_))
                                                (_%else198001198022%_)))
                                          (_%else198001198022%_))
                                      (_%else198001198022%_)))
                                (_%else198001198022%_)))
                          (_%else198001198022%_)))
                    (_%try-match198000198030%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self197905%_
               _%form197906%_
               _%hd197907%_
               _%body197908%_
               _%compiled-body?197909%_)
        (letrec ((_%generate1197911%_
                  (lambda (_%bind197950%_)
                    (let* ((_%bind197951197962%_ _%bind197950%_)
                           (_%E197953197965%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind197951197962%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K197954197971%_
                            (lambda (_%expr197968%_ _%id197969%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id197969%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self197905%_
                                             _%expr197968%_))
                                          '())))))
                      (if (pair? _%bind197951197962%_)
                          (let ((_%hd197955197974%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind197951197962%_)))
                                (_%tl197956197976%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind197951197962%_))))
                            (if (pair? _%hd197955197974%_)
                                (let ((_%hd197959197979%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd197955197974%_)))
                                      (_%tl197960197981%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd197955197974%_))))
                                  (let ((_%id197984%_ _%hd197959197979%_))
                                    (if (null? _%tl197960197981%_)
                                        (if (pair? _%tl197956197976%_)
                                            (let ((_%hd197957197986%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl197956197976%_)))
                                                  (_%tl197958197988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl197956197976%_))))
                                              (let ((_%expr197991%_
                                                     _%hd197957197986%_))
                                                (if (null? _%tl197958197988%_)
                                                    (_%K197954197971%_
                                                     _%expr197991%_
                                                     _%id197984%_)
                                                    (_%E197953197965%_))))
                                            (_%E197953197965%_))
                                        (_%E197953197965%_))))
                                (_%E197953197965%_)))
                          (_%E197953197965%_))))))
          (let* ((_%bind197913%_ (map _%generate1197911%_ _%hd197907%_))
                 (_%body197915%_
                  (if _%compiled-body?197909%_
                      _%body197908%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self197905%_ _%body197908%_))))
                 (_%body197947%_
                  (let* ((_%body197916197924%_ _%body197915%_)
                         (_%else197918197932%_
                          (lambda () (cons _%body197915%_ '())))
                         (_%K197920197937%_
                          (lambda (_%exprs197935%_) _%exprs197935%_)))
                    (if (pair? _%body197916197924%_)
                        (let ((_%hd197921197940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body197916197924%_)))
                              (_%tl197922197942%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body197916197924%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd197921197940%_ 'begin))
                              (let ((_%exprs197945%_ _%tl197922197942%_))
                                (_%K197920197937%_ _%exprs197945%_))
                              (_%else197918197932%_)))
                        (_%else197918197932%_)))))
            (cons _%form197906%_ (cons _%bind197913%_ _%body197947%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self197805%_ _%stx197806%_)
        (letrec ((_%generate1197808%_
                  (lambda (_%datum197860%_)
                    (if (or (null? _%datum197860%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum197860%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum197860%_))
                            (eof-object? _%datum197860%_))
                        _%datum197860%_
                        (if (uninterned-symbol? _%datum197860%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum197860%_
                               '#t))
                            (if (pair? _%datum197860%_)
                                (cons (_%generate1197808%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum197860%_)))
                                      (_%generate1197808%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum197860%_))))
                                (if (box? _%datum197860%_)
                                    (box (_%generate1197808%_
                                          (unbox _%datum197860%_)))
                                    (if (vector? _%datum197860%_)
                                        (vector-map
                                         _%generate1197808%_
                                         _%datum197860%_)
                                        (if (or (s8vector? _%datum197860%_)
                                                (u8vector? _%datum197860%_)
                                                (s16vector? _%datum197860%_)
                                                (u16vector? _%datum197860%_)
                                                (s32vector? _%datum197860%_)
                                                (u32vector? _%datum197860%_)
                                                (s64vector? _%datum197860%_)
                                                (u64vector? _%datum197860%_)
                                                (f32vector? _%datum197860%_)
                                                (f64vector? _%datum197860%_))
                                            _%datum197860%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx197806%_)))))))))))
          (let* ((_%g197810197823%_
                  (lambda (_%g197811197820%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197811197820%_))))
                 (_%g197809197857%_
                  (lambda (_%g197811197826%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197811197826%_))
                        (let ((_%e197813197828%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197811197826%_))))
                          (let ((_%hd197814197831%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197813197828%_)))
                                (_%tl197815197833%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197813197828%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197815197833%_))
                                (let ((_%e197816197836%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197815197833%_))))
                                  (let ((_%hd197817197839%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197816197836%_)))
                                        (_%tl197818197841%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197816197836%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197818197841%_))
                                        ((lambda (_%g197812197844%_)
                                           (cons 'quote
                                                 (cons (_%generate1197808%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g197812197844%_)))
                                                       '())))
                                         _%hd197817197839%_)
                                        (_%g197810197823%_
                                         _%g197811197826%_))))
                                (_%g197810197823%_ _%g197811197826%_))))
                        (_%g197810197823%_ _%g197811197826%_)))))
            (_%g197809197857%_ _%stx197806%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self197252%_ _%stx197253%_)
        (letrec ((_%compile-call197255%_
                  (lambda (_%rator197542%_ _%rands197543%_)
                    (let ((_%rator197549%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self197252%_
                              _%rator197542%_)))
                          (_%rands197550%_
                           (map (lambda (_%g197544197546%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self197252%_
                                     _%g197544197546%_)))
                                _%rands197543%_)))
                      (let* ((_%__stx203269203270%_ _%rator197549%_)
                             (_%g197553197605%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx203269203270%_)))))
                        (let ((_%__kont203271203272%_
                               (lambda (_%g197555197725%_
                                        _%g197556197726%_
                                        _%g197557197727%_
                                        _%g197558197728%_)
                                 (if (let ((__tmp203941
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands197550%_)))
                                           (__tmp203939
                                            (length (let ((__tmp203940
                                                           (lambda (_%g197764197767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g197765197769%_)
                     (cons _%g197764197767%_ _%g197765197769%_))))
              (declare (not safe))
              (foldr__0 __tmp203940 '() _%g197557197727%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp203941 __tmp203939))
                                     (let* ((_%id197772%_ _%g197558197728%_)
                                            (_%args197781%_
                                             (let ((__tmp203942
                                                    (lambda (_%g197773197776%_
                                                             _%g197774197778%_)
                                                      (cons _%g197773197776%_
                                                            _%g197774197778%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp203942
                                                '()
                                                _%g197557197727%_)))
                                            (_%body197790%_
                                             (let ((__tmp203943
                                                    (lambda (_%g197782197785%_
                                                             _%g197783197787%_)
                                                      (cons _%g197782197785%_
                                                            _%g197783197787%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp203943
                                                '()
                                                _%g197556197726%_)))
                                            (_%init197792%_
                                             (map list
                                                  _%args197781%_
                                                  _%rands197550%_)))
                                       (cons 'let
                                             (cons _%id197772%_
                                                   (cons _%init197792%_
                                                         _%body197790%_))))
                                     (let ((__tmp203944
                                            (let ((__tmp203945
                                                   (lambda (_%g197794197797%_
                                                            _%g197795197799%_)
                                                     (cons _%g197794197797%_
                                                           _%g197795197799%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp203945
                                               '()
                                               _%g197557197727%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx197253%_
                                        __tmp203944
                                        _%rands197550%_)))))
                              (_%__kont203277203278%_
                               (lambda ()
                                 (cons _%rator197549%_ _%rands197550%_))))
                          (let ((_%__match203336203337%_
                                 (lambda (_%e197559197617%_
                                          _%hd197560197620%_
                                          _%tl197561197622%_
                                          _%e197562197625%_
                                          _%hd197563197628%_
                                          _%tl197564197630%_
                                          _%e197565197633%_
                                          _%hd197566197636%_
                                          _%tl197567197638%_
                                          _%e197568197641%_
                                          _%hd197569197644%_
                                          _%tl197570197646%_
                                          _%e197571197649%_
                                          _%hd197572197652%_
                                          _%tl197573197654%_
                                          _%e197574197657%_
                                          _%hd197575197660%_
                                          _%tl197576197662%_
                                          _%e197577197665%_
                                          _%hd197578197668%_
                                          _%tl197579197670%_
                                          _%__splice203273203274%_
                                          _%target197580197673%_
                                          _%tl197582197675%_)
                                   (letrec ((_%loop197583197678%_
                                             (lambda (_%hd197581197681%_
                                                      _%arg197587197683%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd197581197681%_))
                                                   (let ((_%e197584197685%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd197581197681%_))))
                                                     (let ((_%lp-tl197586197690%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e197584197685%_)))
                                                           (_%lp-hd197585197688%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e197584197685%_))))
                                                       (_%loop197583197678%_
                                                        _%lp-tl197586197690%_
                                                        (cons _%lp-hd197585197688%_
                                                              _%arg197587197683%_))))
                                                   (let ((_%arg197588197693%_
                                                          (reverse _%arg197587197683%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl197579197670%_))
                                                         (let ((_%__splice203275203276%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl197579197670%_
                           '0))))
                   (let ((_%tl197591197697%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice203275203276%_ '1)))
                         (_%target197589197695%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice203275203276%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl197591197697%_))
                         (letrec ((_%loop197592197700%_
                                   (lambda (_%hd197590197703%_
                                            _%body197596197705%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd197590197703%_))
                                         (let ((_%e197593197707%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd197590197703%_))))
                                           (let ((_%lp-tl197595197712%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197593197707%_)))
                                                 (_%lp-hd197594197710%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197593197707%_))))
                                             (_%loop197592197700%_
                                              _%lp-tl197595197712%_
                                              (cons _%lp-hd197594197710%_
                                                    _%body197596197705%_))))
                                         (let ((_%body197597197715%_
                                                (reverse _%body197596197705%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl197573197654%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl197567197638%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl197564197630%_))
                                                       (let ((_%e197598197717%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl197564197630%_))))
                 (let ((_%tl197600197722%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e197598197717%_)))
                       (_%hd197599197720%_
                        (let ()
                          (declare (not safe))
                          (##car _%e197598197717%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl197600197722%_))
                       (let ((_%g197555197725%_ _%hd197599197720%_)
                             (_%g197556197726%_ _%body197597197715%_)
                             (_%g197557197727%_ _%arg197588197693%_)
                             (_%g197558197728%_ _%hd197569197644%_))
                         (if (eq? _%g197558197728%_ _%g197555197725%_)
                             (_%__kont203271203272%_
                              _%g197555197725%_
                              _%g197556197726%_
                              _%g197557197727%_
                              _%g197558197728%_)
                             (_%__kont203277203278%_)))
                       (_%__kont203277203278%_))))
               (_%__kont203277203278%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont203277203278%_))
                                               (_%__kont203277203278%_)))))))
                           (_%loop197592197700%_ _%target197589197695%_ '()))
                         (_%__kont203277203278%_))))
                 (_%__kont203277203278%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop197583197678%_
                                      _%target197580197673%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx203269203270%_))
                                (let ((_%e197559197617%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx203269203270%_))))
                                  (let ((_%tl197561197622%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197559197617%_)))
                                        (_%hd197560197620%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197559197617%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd197560197620%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd197560197620%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197561197622%_))
                                                (let ((_%e197562197625%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197561197622%_))))
                                                  (let ((_%tl197564197630%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197562197625%_)))
                                                        (_%hd197563197628%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197562197625%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197563197628%_))
                                                        (let ((_%e197565197633%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd197563197628%_))))
                  (let ((_%tl197567197638%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197565197633%_)))
                        (_%hd197566197636%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197565197633%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd197566197636%_))
                        (let ((_%e197568197641%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd197566197636%_))))
                          (let ((_%tl197570197646%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197568197641%_)))
                                (_%hd197569197644%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197568197641%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197570197646%_))
                                (let ((_%e197571197649%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197570197646%_))))
                                  (let ((_%tl197573197654%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197571197649%_)))
                                        (_%hd197572197652%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197571197649%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd197572197652%_))
                                        (let ((_%e197574197657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd197572197652%_))))
                                          (let ((_%tl197576197662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197574197657%_)))
                                                (_%hd197575197660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197574197657%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd197575197660%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd197575197660%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl197576197662%_))
                                                        (let ((_%e197577197665%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl197576197662%_))))
                  (let ((_%tl197579197670%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197577197665%_)))
                        (_%hd197578197668%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197577197665%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd197578197668%_))
                        (let ((_%__splice203273203274%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd197578197668%_
                                  '0))))
                          (let ((_%tl197582197675%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice203273203274%_ '1)))
                                (_%target197580197673%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice203273203274%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197582197675%_))
                                (_%__match203336203337%_
                                 _%e197559197617%_
                                 _%hd197560197620%_
                                 _%tl197561197622%_
                                 _%e197562197625%_
                                 _%hd197563197628%_
                                 _%tl197564197630%_
                                 _%e197565197633%_
                                 _%hd197566197636%_
                                 _%tl197567197638%_
                                 _%e197568197641%_
                                 _%hd197569197644%_
                                 _%tl197570197646%_
                                 _%e197571197649%_
                                 _%hd197572197652%_
                                 _%tl197573197654%_
                                 _%e197574197657%_
                                 _%hd197575197660%_
                                 _%tl197576197662%_
                                 _%e197577197665%_
                                 _%hd197578197668%_
                                 _%tl197579197670%_
                                 _%__splice203273203274%_
                                 _%target197580197673%_
                                 _%tl197582197675%_)
                                (_%__kont203277203278%_))))
                        (_%__kont203277203278%_))))
                (_%__kont203277203278%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont203277203278%_))
                                                (_%__kont203277203278%_))))
                                        (_%__kont203277203278%_))))
                                (_%__kont203277203278%_))))
                        (_%__kont203277203278%_))))
                (_%__kont203277203278%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont203277203278%_))
                                            (_%__kont203277203278%_))
                                        (_%__kont203277203278%_))))
                                (_%__kont203277203278%_)))))))))
          (let* ((_%g197257197280%_
                  (lambda (_%g197258197277%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197258197277%_))))
                 (_%g197256197539%_
                  (lambda (_%g197258197283%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197258197283%_))
                        (let ((_%e197261197285%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197258197283%_))))
                          (let ((_%hd197262197288%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197261197285%_)))
                                (_%tl197263197290%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197261197285%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197263197290%_))
                                (let ((_%e197264197293%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197263197290%_))))
                                  (let ((_%hd197265197296%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197264197293%_)))
                                        (_%tl197266197298%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197264197293%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl197266197298%_))
                                        (let ((_g203946_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl197266197298%_
                                                  '0))))
                                          (begin
                                            (let ((_g203947_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g203946_)
                                                         (##values-length
                                                          _g203946_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g203947_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g203947_)))
                                            (let ((_%target197267197301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g203946_
                                                      0)))
                                                  (_%tl197269197303%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g203946_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl197269197303%_))
                                                  (letrec ((_%loop197270197306%_
                                                            (lambda (_%hd197268197309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand197274197311%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd197268197309%_))
                          (let ((_%e197271197313%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197268197309%_))))
                            (let ((_%lp-hd197272197316%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197271197313%_)))
                                  (_%lp-tl197273197318%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197271197313%_))))
                              (_%loop197270197306%_
                               _%lp-tl197273197318%_
                               (cons _%lp-hd197272197316%_
                                     _%rand197274197311%_))))
                          (let ((_%rand197275197321%_
                                 (reverse _%rand197274197311%_)))
                            ((lambda (_%g197259197323%_ _%g197260197324%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call197255%_
                                    _%g197260197324%_
                                    (let ((__tmp203948
                                           (lambda (_%g197341197344%_
                                                    _%g197342197346%_)
                                             (cons _%g197341197344%_
                                                   _%g197342197346%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp203948
                                       '()
                                       _%g197259197323%_)))
                                   (let* ((_%__stx203385203386%_
                                           _%g197260197324%_)
                                          (_%g197350197362%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx203385203386%_)))))
                                     (let ((_%__kont203387203388%_
                                            (lambda ()
                                              (let ((_%f197399%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self197252%_
                                                        _%g197260197324%_))))
                                                (if (and (let ((__tmp203949
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f197399%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp203949))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f197399%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp197401%_ ((_%rest197404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp203951
                                                (lambda (_%g197521197524%_
                                                         _%g197522197526%_)
                                                  (cons _%g197521197524%_
                                                        _%g197522197526%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp203951
                                            '()
                                            _%g197259197323%_))))
                               (_%bind197406%_ '())
                               (_%args197407%_ '()))
              (let* ((_%rest197408197416%_ _%rest197404%_)
                     (_%else197410197424%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind197406%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f197399%_
                                                      _%args197407%_)
                                                '()))))))
                     (_%K197412197510%_
                      (lambda (_%rest197427%_ _%e197428%_)
                        (let* ((_%__stx203339203340%_ _%e197428%_)
                               (_%g197433197451%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx203339203340%_)))))
                          (let ((_%__kont203341203342%_
                                 (lambda ()
                                   (_%lp197401%_
                                    _%rest197427%_
                                    _%bind197406%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e197428%_))
                                          _%args197407%_))))
                                (_%__kont203343203344%_
                                 (lambda ()
                                   (_%lp197401%_
                                    _%rest197427%_
                                    _%bind197406%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e197428%_))
                                          _%args197407%_))))
                                (_%__kont203345203346%_
                                 (lambda ()
                                   (let ((_%tmp197458%_
                                          (let ((__tmp203950
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp203950))))
                                     (_%lp197401%_
                                      _%rest197427%_
                                      (cons (cons _%tmp197458%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e197428%_))
                                                        '()))
                                            _%bind197406%_)
                                      (cons _%tmp197458%_ _%args197407%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx203339203340%_))
                                (let ((_%e197435197489%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx203339203340%_))))
                                  (let ((_%tl197437197494%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197435197489%_)))
                                        (_%hd197436197492%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197435197489%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd197436197492%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd197436197492%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197437197494%_))
                                                (let ((_%e197438197497%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197437197494%_))))
                                                  (let ((_%tl197440197502%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197438197497%_)))
                                                        (_%hd197439197500%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197438197497%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197440197502%_))
                                                        (_%__kont203341203342%_)
                                                        (_%__kont203345203346%_))))
                                                (_%__kont203345203346%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd197436197492%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197437197494%_))
                                                    (let ((_%e197444197474%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197437197494%_))))
                                                      (let ((_%tl197446197479%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197444197474%_)))
                    (_%hd197445197477%_
                     (let () (declare (not safe)) (##car _%e197444197474%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197446197479%_))
                    (_%__kont203343203344%_)
                    (_%__kont203345203346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont203345203346%_))
                                                (_%__kont203345203346%_)))
                                        (_%__kont203345203346%_))))
                                (_%__kont203345203346%_)))))))
                (if (pair? _%rest197408197416%_)
                    (let ((_%hd197413197513%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest197408197416%_)))
                          (_%tl197414197515%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest197408197416%_))))
                      (let* ((_%e197518%_ _%hd197413197513%_)
                             (_%rest197520%_ _%tl197414197515%_))
                        (_%K197412197510%_ _%rest197520%_ _%e197518%_)))
                    (_%else197410197424%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call197255%_
                                                     _%g197260197324%_
                                                     (let ((__tmp203952
                                                            (lambda (_%g197528197531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g197529197533%_)
                      (cons _%g197528197531%_ _%g197529197533%_))))
               (declare (not safe))
               (foldr__0 __tmp203952 '() _%g197259197323%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont203389203390%_
                                            (lambda ()
                                              (_%compile-call197255%_
                                               _%g197260197324%_
                                               (let ((__tmp203953
                                                      (lambda (_%g197368197371%_
                                                               _%g197369197373%_)
                                                        (cons _%g197368197371%_
                                                              _%g197369197373%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp203953
                                                  '()
                                                  _%g197259197323%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx203385203386%_))
                                           (let ((_%e197352197381%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx203385203386%_))))
                                             (let ((_%tl197354197386%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e197352197381%_)))
                                                   (_%hd197353197384%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e197352197381%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd197353197384%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd197353197384%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl197354197386%_))
                                                           (let ((_%e197355197389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl197354197386%_))))
                     (let ((_%tl197357197394%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e197355197389%_)))
                           (_%hd197356197392%_
                            (let ()
                              (declare (not safe))
                              (##car _%e197355197389%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl197357197394%_))
                           (_%__kont203387203388%_)
                           (_%__kont203389203390%_))))
                   (_%__kont203389203390%_))
               (_%__kont203389203390%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont203389203390%_))))
                                           (_%__kont203389203390%_))))))
                             _%rand197275197321%_
                             _%hd197265197296%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop197270197306%_
                                                     _%target197267197301%_
                                                     '()))
                                                  (_%g197257197280%_
                                                   _%g197258197283%_)))))
                                        (_%g197257197280%_
                                         _%g197258197283%_))))
                                (_%g197257197280%_ _%g197258197283%_))))
                        (_%g197257197280%_ _%g197258197283%_)))))
            (_%g197256197539%_ _%stx197253%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self196997%_ _%stx196998%_)
        (let* ((_%__stx203457203458%_ _%stx196998%_)
               (_%g197001197030%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203457203458%_)))))
          (let ((_%__kont203459203460%_
                 (lambda (_%g197003197096%_ _%g197004197097%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self196997%_
                        _%stx196998%_)
                       (let ((_%f197119%_
                              (let ((__tmp203954
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g197004197097%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self196997%_
                                 __tmp203954))))
                         (let _%lp197121%_ ((_%rest197124%_
                                             (reverse (let ((__tmp203956
                                                             (lambda (_%g197241197244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g197242197246%_)
                       (cons _%g197241197244%_ _%g197242197246%_))))
                (declare (not safe))
                (foldr__0 __tmp203956 '() _%g197003197096%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind197126%_ '())
                                            (_%args197127%_ '()))
                           (let* ((_%rest197128197136%_ _%rest197124%_)
                                  (_%else197130197144%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind197126%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f197119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args197127%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K197132197230%_
                                   (lambda (_%rest197147%_ _%e197148%_)
                                     (let* ((_%__stx203411203412%_ _%e197148%_)
                                            (_%g197153197171%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx203411203412%_)))))
                                       (let ((_%__kont203413203414%_
                                              (lambda ()
                                                (_%lp197121%_
                                                 _%rest197147%_
                                                 _%bind197126%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e197148%_))
                                                       _%args197127%_))))
                                             (_%__kont203415203416%_
                                              (lambda ()
                                                (_%lp197121%_
                                                 _%rest197147%_
                                                 _%bind197126%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e197148%_))
                                                       _%args197127%_))))
                                             (_%__kont203417203418%_
                                              (lambda ()
                                                (let ((_%tmp197178%_
                                                       (let ((__tmp203955
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp203955))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp197121%_
                                                   _%rest197147%_
                                                   (cons (cons _%tmp197178%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e197148%_))
                             '()))
                 _%bind197126%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp197178%_
                                                         _%args197127%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx203411203412%_))
                                             (let ((_%e197155197209%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx203411203412%_))))
                                               (let ((_%tl197157197214%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e197155197209%_)))
                                                     (_%hd197156197212%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e197155197209%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd197156197212%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd197156197212%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl197157197214%_))
                     (let ((_%e197158197217%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl197157197214%_))))
                       (let ((_%tl197160197222%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e197158197217%_)))
                             (_%hd197159197220%_
                              (let ()
                                (declare (not safe))
                                (##car _%e197158197217%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl197160197222%_))
                             (_%__kont203413203414%_)
                             (_%__kont203417203418%_))))
                     (_%__kont203417203418%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd197156197212%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl197157197214%_))
                         (let ((_%e197164197194%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl197157197214%_))))
                           (let ((_%tl197166197199%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e197164197194%_)))
                                 (_%hd197165197197%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e197164197194%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl197166197199%_))
                                 (_%__kont203415203416%_)
                                 (_%__kont203417203418%_))))
                         (_%__kont203417203418%_))
                     (_%__kont203417203418%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont203417203418%_))))
                                             (_%__kont203417203418%_)))))))
                             (if (pair? _%rest197128197136%_)
                                 (let ((_%hd197133197233%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest197128197136%_)))
                                       (_%tl197134197235%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest197128197136%_))))
                                   (let* ((_%e197238%_ _%hd197133197233%_)
                                          (_%rest197240%_ _%tl197134197235%_))
                                     (_%K197132197230%_
                                      _%rest197240%_
                                      _%e197238%_)))
                                 (_%else197130197144%_))))))))
                (_%__kont203463203464%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self196997%_ _%stx196998%_))))
            (let ((_%__match203502203503%_
                   (lambda (_%e197005197042%_
                            _%hd197006197045%_
                            _%tl197007197047%_
                            _%e197008197050%_
                            _%hd197009197053%_
                            _%tl197010197055%_
                            _%e197011197058%_
                            _%hd197012197061%_
                            _%tl197013197063%_
                            _%e197014197066%_
                            _%hd197015197069%_
                            _%tl197016197071%_
                            _%__splice203461203462%_
                            _%target197017197074%_
                            _%tl197019197076%_)
                     (letrec ((_%loop197020197079%_
                               (lambda (_%hd197018197082%_
                                        _%rand197024197084%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd197018197082%_))
                                     (let ((_%e197021197086%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd197018197082%_))))
                                       (let ((_%lp-tl197023197091%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e197021197086%_)))
                                             (_%lp-hd197022197089%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e197021197086%_))))
                                         (_%loop197020197079%_
                                          _%lp-tl197023197091%_
                                          (cons _%lp-hd197022197089%_
                                                _%rand197024197084%_))))
                                     (let ((_%rand197025197094%_
                                            (reverse _%rand197024197084%_)))
                                       (_%__kont203459203460%_
                                        _%rand197025197094%_
                                        _%hd197015197069%_))))))
                       (_%loop197020197079%_ _%target197017197074%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx203457203458%_))
                  (let ((_%e197005197042%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx203457203458%_))))
                    (let ((_%tl197007197047%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197005197042%_)))
                          (_%hd197006197045%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197005197042%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197007197047%_))
                          (let ((_%e197008197050%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197007197047%_))))
                            (let ((_%tl197010197055%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197008197050%_)))
                                  (_%hd197009197053%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197008197050%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197009197053%_))
                                  (let ((_%e197011197058%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197009197053%_))))
                                    (let ((_%tl197013197063%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197011197058%_)))
                                          (_%hd197012197061%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197011197058%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197012197061%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd197012197061%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197013197063%_))
                                                  (let ((_%e197014197066%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197013197063%_))))
                                                    (let ((_%tl197016197071%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197014197066%_)))
                                                          (_%hd197015197069%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197014197066%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197016197071%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl197010197055%_))
                      (let ((_%__splice203461203462%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl197010197055%_
                                '0))))
                        (let ((_%tl197019197076%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203461203462%_ '1)))
                              (_%target197017197074%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203461203462%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197019197076%_))
                              (_%__match203502203503%_
                               _%e197005197042%_
                               _%hd197006197045%_
                               _%tl197007197047%_
                               _%e197008197050%_
                               _%hd197009197053%_
                               _%tl197010197055%_
                               _%e197011197058%_
                               _%hd197012197061%_
                               _%tl197013197063%_
                               _%e197014197066%_
                               _%hd197015197069%_
                               _%tl197016197071%_
                               _%__splice203461203462%_
                               _%target197017197074%_
                               _%tl197019197076%_)
                              (_%__kont203463203464%_))))
                      (_%__kont203463203464%_))
                  (_%__kont203463203464%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont203463203464%_))
                                              (_%__kont203463203464%_))
                                          (_%__kont203463203464%_))))
                                  (_%__kont203463203464%_))))
                          (_%__kont203463203464%_))))
                  (_%__kont203463203464%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self196809%_ _%stx196810%_)
        (letrec ((_%simplify196812%_
                  (lambda (_%code196897%_)
                    (let* ((_%code196898196916%_ _%code196897%_)
                           (_%else196900196924%_ (lambda () _%code196897%_))
                           (_%K196902196960%_
                            (lambda (_%expr196927%_ _%test196928%_)
                              (let* ((_%expr196929196937%_ _%expr196927%_)
                                     (_%else196931196945%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test196928%_
                                                    (cons _%expr196927%_
                                                          '())))))
                                     (_%K196933196950%_
                                      (lambda (_%exprs196948%_)
                                        (cons 'and
                                              (cons _%test196928%_
                                                    _%exprs196948%_)))))
                                (if (pair? _%expr196929196937%_)
                                    (let ((_%hd196934196953%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr196929196937%_)))
                                          (_%tl196935196955%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr196929196937%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd196934196953%_ 'and))
                                          (let ((_%exprs196958%_
                                                 _%tl196935196955%_))
                                            (_%K196933196950%_
                                             _%exprs196958%_))
                                          (_%else196931196945%_)))
                                    (_%else196931196945%_))))))
                      (if (pair? _%code196898196916%_)
                          (let ((_%hd196903196963%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code196898196916%_)))
                                (_%tl196904196965%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code196898196916%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd196903196963%_ 'if))
                                (if (pair? _%tl196904196965%_)
                                    (let ((_%hd196905196968%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl196904196965%_)))
                                          (_%tl196906196970%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl196904196965%_))))
                                      (let ((_%test196973%_
                                             _%hd196905196968%_))
                                        (if (pair? _%tl196906196970%_)
                                            (let ((_%hd196907196975%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl196906196970%_)))
                                                  (_%tl196908196977%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl196906196970%_))))
                                              (let ((_%expr196980%_
                                                     _%hd196907196975%_))
                                                (if (pair? _%tl196908196977%_)
                                                    (let ((_%hd196909196982%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl196908196977%_)))
                                                          (_%tl196910196984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl196908196977%_))))
                                                      (if (pair? _%hd196909196982%_)
                                                          (let ((_%hd196911196987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd196909196982%_)))
                        (_%tl196912196989%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd196909196982%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd196911196987%_ 'quote))
                        (if (pair? _%tl196912196989%_)
                            (let ((_%hd196913196992%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl196912196989%_)))
                                  (_%tl196914196994%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl196912196989%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd196913196992%_ '#f))
                                  (if (null? _%tl196914196994%_)
                                      (if (null? _%tl196910196984%_)
                                          (_%K196902196960%_
                                           _%expr196980%_
                                           _%test196973%_)
                                          (_%else196900196924%_))
                                      (_%else196900196924%_))
                                  (_%else196900196924%_)))
                            (_%else196900196924%_))
                        (_%else196900196924%_)))
                  (_%else196900196924%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else196900196924%_))))
                                            (_%else196900196924%_))))
                                    (_%else196900196924%_))
                                (_%else196900196924%_)))
                          (_%else196900196924%_))))))
          (let* ((_%g196814196835%_
                  (lambda (_%g196815196832%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196815196832%_))))
                 (_%g196813196894%_
                  (lambda (_%g196815196838%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196815196838%_))
                        (let ((_%e196819196840%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196815196838%_))))
                          (let ((_%hd196820196843%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196819196840%_)))
                                (_%tl196821196845%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196819196840%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196821196845%_))
                                (let ((_%e196822196848%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196821196845%_))))
                                  (let ((_%hd196823196851%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196822196848%_)))
                                        (_%tl196824196853%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196822196848%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196824196853%_))
                                        (let ((_%e196825196856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl196824196853%_))))
                                          (let ((_%hd196826196859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196825196856%_)))
                                                (_%tl196827196861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196825196856%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl196827196861%_))
                                                (let ((_%e196828196864%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl196827196861%_))))
                                                  (let ((_%hd196829196867%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e196828196864%_)))
                                                        (_%tl196830196869%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e196828196864%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196830196869%_))
                                                        ((lambda (_%g196816196872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g196817196873%_
                          _%g196818196874%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify196812%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self196809%_
                                       _%g196818196874%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self196809%_
                                             _%g196817196873%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self196809%_
                                                   _%g196816196872%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp203957
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self196809%_
                                               _%g196818196874%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp203957
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self196809%_
                                            _%g196817196873%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self196809%_
                                                  _%g196816196872%_))
                                               '()))))))
                 _%hd196829196867%_
                 _%hd196826196859%_
                 _%hd196823196851%_)
                (_%g196814196835%_ _%g196815196838%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g196814196835%_
                                                 _%g196815196838%_))))
                                        (_%g196814196835%_
                                         _%g196815196838%_))))
                                (_%g196814196835%_ _%g196815196838%_))))
                        (_%g196814196835%_ _%g196815196838%_)))))
            (_%g196813196894%_ _%stx196810%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self196757%_ _%stx196758%_)
        (let* ((_%g196760196773%_
                (lambda (_%g196761196770%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196761196770%_))))
               (_%g196759196806%_
                (lambda (_%g196761196776%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196761196776%_))
                      (let ((_%e196763196778%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196761196776%_))))
                        (let ((_%hd196764196781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196763196778%_)))
                              (_%tl196765196783%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196763196778%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196765196783%_))
                              (let ((_%e196766196786%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196765196783%_))))
                                (let ((_%hd196767196789%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196766196786%_)))
                                      (_%tl196768196791%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196766196786%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196768196791%_))
                                      ((lambda (_%g196762196794%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g196762196794%_)))
                                       _%hd196767196789%_)
                                      (_%g196760196773%_ _%g196761196776%_))))
                              (_%g196760196773%_ _%g196761196776%_))))
                      (_%g196760196773%_ _%g196761196776%_)))))
          (_%g196759196806%_ _%stx196758%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self196689%_ _%stx196690%_)
        (let* ((_%g196692196709%_
                (lambda (_%g196693196706%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196693196706%_))))
               (_%g196691196754%_
                (lambda (_%g196693196712%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196693196712%_))
                      (let ((_%e196696196714%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196693196712%_))))
                        (let ((_%hd196697196717%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196696196714%_)))
                              (_%tl196698196719%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196696196714%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196698196719%_))
                              (let ((_%e196699196722%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196698196719%_))))
                                (let ((_%hd196700196725%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196699196722%_)))
                                      (_%tl196701196727%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196699196722%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196701196727%_))
                                      (let ((_%e196702196730%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196701196727%_))))
                                        (let ((_%hd196703196733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196702196730%_)))
                                              (_%tl196704196735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196702196730%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196704196735%_))
                                              ((lambda (_%g196694196738%_
                                                        _%g196695196739%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g196695196739%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self196689%_
                              _%g196694196738%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196703196733%_
                                               _%hd196700196725%_)
                                              (_%g196692196709%_
                                               _%g196693196712%_))))
                                      (_%g196692196709%_ _%g196693196712%_))))
                              (_%g196692196709%_ _%g196693196712%_))))
                      (_%g196692196709%_ _%g196693196712%_)))))
          (_%g196691196754%_ _%stx196690%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self196500%_ _%stx196501%_)
        (let* ((_%g196503196520%_
                (lambda (_%g196504196517%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196504196517%_))))
               (_%g196502196686%_
                (lambda (_%g196504196523%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196504196523%_))
                      (let ((_%e196507196525%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196504196523%_))))
                        (let ((_%hd196508196528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196507196525%_)))
                              (_%tl196509196530%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196507196525%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196509196530%_))
                              (let ((_%e196510196533%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196509196530%_))))
                                (let ((_%hd196511196536%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196510196533%_)))
                                      (_%tl196512196538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196510196533%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196512196538%_))
                                      (let ((_%e196513196541%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196512196538%_))))
                                        (let ((_%hd196514196544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196513196541%_)))
                                              (_%tl196515196546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196513196541%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196515196546%_))
                                              ((lambda (_%g196505196549%_
                                                        _%g196506196550%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self196500%_ _%g196505196549%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self196500%_
                                  _%g196506196550%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp196565%_ ((_%rest196568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g196506196550%_
                                       (cons _%g196505196549%_ '())))
                                (_%bind196570%_ '())
                                (_%args196571%_ '()))
               (let* ((_%rest196572196580%_ _%rest196568%_)
                      (_%else196574196588%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind196570%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args196571%_)
                                                 '()))))))
                      (_%K196576196674%_
                       (lambda (_%rest196591%_ _%e196592%_)
                         (let* ((_%__stx203505203506%_ _%e196592%_)
                                (_%g196597196615%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx203505203506%_)))))
                           (let ((_%__kont203507203508%_
                                  (lambda ()
                                    (_%lp196565%_
                                     _%rest196591%_
                                     _%bind196570%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e196592%_))
                                           _%args196571%_))))
                                 (_%__kont203509203510%_
                                  (lambda ()
                                    (_%lp196565%_
                                     _%rest196591%_
                                     _%bind196570%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e196592%_))
                                           _%args196571%_))))
                                 (_%__kont203511203512%_
                                  (lambda ()
                                    (let ((_%tmp196622%_
                                           (let ((__tmp203958
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp203958))))
                                      (_%lp196565%_
                                       _%rest196591%_
                                       (cons (cons _%tmp196622%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e196592%_))
                                                         '()))
                                             _%bind196570%_)
                                       (cons _%tmp196622%_ _%args196571%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx203505203506%_))
                                 (let ((_%e196599196653%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx203505203506%_))))
                                   (let ((_%tl196601196658%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e196599196653%_)))
                                         (_%hd196600196656%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e196599196653%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd196600196656%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd196600196656%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl196601196658%_))
                                                 (let ((_%e196602196661%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl196601196658%_))))
                                                   (let ((_%tl196604196666%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e196602196661%_)))
                                                         (_%hd196603196664%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e196602196661%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl196604196666%_))
                                                         (_%__kont203507203508%_)
                                                         (_%__kont203511203512%_))))
                                                 (_%__kont203511203512%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd196600196656%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl196601196658%_))
                                                     (let ((_%e196608196638%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl196601196658%_))))
                                                       (let ((_%tl196610196643%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e196608196638%_)))
                     (_%hd196609196641%_
                      (let () (declare (not safe)) (##car _%e196608196638%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl196610196643%_))
                     (_%__kont203509203510%_)
                     (_%__kont203511203512%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont203511203512%_))
                                                 (_%__kont203511203512%_)))
                                         (_%__kont203511203512%_))))
                                 (_%__kont203511203512%_)))))))
                 (if (pair? _%rest196572196580%_)
                     (let ((_%hd196577196677%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest196572196580%_)))
                           (_%tl196578196679%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest196572196580%_))))
                       (let* ((_%e196682%_ _%hd196577196677%_)
                              (_%rest196684%_ _%tl196578196679%_))
                         (_%K196576196674%_ _%rest196684%_ _%e196682%_)))
                     (_%else196574196588%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196514196544%_
                                               _%hd196511196536%_)
                                              (_%g196503196520%_
                                               _%g196504196523%_))))
                                      (_%g196503196520%_ _%g196504196523%_))))
                              (_%g196503196520%_ _%g196504196523%_))))
                      (_%g196503196520%_ _%g196504196523%_)))))
          (_%g196502196686%_ _%stx196501%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self196311%_ _%stx196312%_)
        (let* ((_%g196314196331%_
                (lambda (_%g196315196328%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196315196328%_))))
               (_%g196313196497%_
                (lambda (_%g196315196334%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196315196334%_))
                      (let ((_%e196318196336%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196315196334%_))))
                        (let ((_%hd196319196339%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196318196336%_)))
                              (_%tl196320196341%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196318196336%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196320196341%_))
                              (let ((_%e196321196344%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196320196341%_))))
                                (let ((_%hd196322196347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196321196344%_)))
                                      (_%tl196323196349%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196321196344%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196323196349%_))
                                      (let ((_%e196324196352%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196323196349%_))))
                                        (let ((_%hd196325196355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196324196352%_)))
                                              (_%tl196326196357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196324196352%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196326196357%_))
                                              ((lambda (_%g196316196360%_
                                                        _%g196317196361%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self196311%_ _%g196316196360%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self196311%_
                                  _%g196317196361%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp196376%_ ((_%rest196379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g196317196361%_
                                       (cons _%g196316196360%_ '())))
                                (_%bind196381%_ '())
                                (_%args196382%_ '()))
               (let* ((_%rest196383196391%_ _%rest196379%_)
                      (_%else196385196399%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind196381%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args196382%_)
                                                 '()))))))
                      (_%K196387196485%_
                       (lambda (_%rest196402%_ _%e196403%_)
                         (let* ((_%__stx203551203552%_ _%e196403%_)
                                (_%g196408196426%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx203551203552%_)))))
                           (let ((_%__kont203553203554%_
                                  (lambda ()
                                    (_%lp196376%_
                                     _%rest196402%_
                                     _%bind196381%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e196403%_))
                                           _%args196382%_))))
                                 (_%__kont203555203556%_
                                  (lambda ()
                                    (_%lp196376%_
                                     _%rest196402%_
                                     _%bind196381%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e196403%_))
                                           _%args196382%_))))
                                 (_%__kont203557203558%_
                                  (lambda ()
                                    (let ((_%tmp196433%_
                                           (let ((__tmp203959
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp203959))))
                                      (_%lp196376%_
                                       _%rest196402%_
                                       (cons (cons _%tmp196433%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e196403%_))
                                                         '()))
                                             _%bind196381%_)
                                       (cons _%tmp196433%_ _%args196382%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx203551203552%_))
                                 (let ((_%e196410196464%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx203551203552%_))))
                                   (let ((_%tl196412196469%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e196410196464%_)))
                                         (_%hd196411196467%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e196410196464%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd196411196467%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd196411196467%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl196412196469%_))
                                                 (let ((_%e196413196472%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl196412196469%_))))
                                                   (let ((_%tl196415196477%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e196413196472%_)))
                                                         (_%hd196414196475%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e196413196472%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl196415196477%_))
                                                         (_%__kont203553203554%_)
                                                         (_%__kont203557203558%_))))
                                                 (_%__kont203557203558%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd196411196467%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl196412196469%_))
                                                     (let ((_%e196419196449%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl196412196469%_))))
                                                       (let ((_%tl196421196454%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e196419196449%_)))
                     (_%hd196420196452%_
                      (let () (declare (not safe)) (##car _%e196419196449%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl196421196454%_))
                     (_%__kont203555203556%_)
                     (_%__kont203557203558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont203557203558%_))
                                                 (_%__kont203557203558%_)))
                                         (_%__kont203557203558%_))))
                                 (_%__kont203557203558%_)))))))
                 (if (pair? _%rest196383196391%_)
                     (let ((_%hd196388196488%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest196383196391%_)))
                           (_%tl196389196490%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest196383196391%_))))
                       (let* ((_%e196493%_ _%hd196388196488%_)
                              (_%rest196495%_ _%tl196389196490%_))
                         (_%K196387196485%_ _%rest196495%_ _%e196493%_)))
                     (_%else196385196399%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196325196355%_
                                               _%hd196322196347%_)
                                              (_%g196314196331%_
                                               _%g196315196334%_))))
                                      (_%g196314196331%_ _%g196315196334%_))))
                              (_%g196314196331%_ _%g196315196334%_))))
                      (_%g196314196331%_ _%g196315196334%_)))))
          (_%g196313196497%_ _%stx196312%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self196227%_ _%stx196228%_)
        (let* ((_%g196230196251%_
                (lambda (_%g196231196248%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196231196248%_))))
               (_%g196229196308%_
                (lambda (_%g196231196254%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196231196254%_))
                      (let ((_%e196235196256%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196231196254%_))))
                        (let ((_%hd196236196259%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196235196256%_)))
                              (_%tl196237196261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196235196256%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196237196261%_))
                              (let ((_%e196238196264%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196237196261%_))))
                                (let ((_%hd196239196267%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196238196264%_)))
                                      (_%tl196240196269%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196238196264%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196240196269%_))
                                      (let ((_%e196241196272%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196240196269%_))))
                                        (let ((_%hd196242196275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196241196272%_)))
                                              (_%tl196243196277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196241196272%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196243196277%_))
                                              (let ((_%e196244196280%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196243196277%_))))
                                                (let ((_%hd196245196283%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196244196280%_)))
                                                      (_%tl196246196285%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196244196280%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196246196285%_))
                                                      ((lambda (_%g196232196288%_
                                                                _%g196233196289%_
                                                                _%g196234196290%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self196227%_
                                _%g196232196288%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self196227%_
                                      _%g196233196289%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self196227%_
                                            _%g196234196290%_))
                                         (cons ''#f '()))))))
               _%hd196245196283%_
               _%hd196242196275%_
               _%hd196239196267%_)
              (_%g196230196251%_ _%g196231196254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196230196251%_
                                               _%g196231196254%_))))
                                      (_%g196230196251%_ _%g196231196254%_))))
                              (_%g196230196251%_ _%g196231196254%_))))
                      (_%g196230196251%_ _%g196231196254%_)))))
          (_%g196229196308%_ _%stx196228%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self196127%_ _%stx196128%_)
        (let* ((_%g196130196155%_
                (lambda (_%g196131196152%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196131196152%_))))
               (_%g196129196224%_
                (lambda (_%g196131196158%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196131196158%_))
                      (let ((_%e196136196160%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196131196158%_))))
                        (let ((_%hd196137196163%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196136196160%_)))
                              (_%tl196138196165%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196136196160%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196138196165%_))
                              (let ((_%e196139196168%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196138196165%_))))
                                (let ((_%hd196140196171%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196139196168%_)))
                                      (_%tl196141196173%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196139196168%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196141196173%_))
                                      (let ((_%e196142196176%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196141196173%_))))
                                        (let ((_%hd196143196179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196142196176%_)))
                                              (_%tl196144196181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196142196176%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196144196181%_))
                                              (let ((_%e196145196184%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196144196181%_))))
                                                (let ((_%hd196146196187%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196145196184%_)))
                                                      (_%tl196147196189%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196145196184%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196147196189%_))
                                                      (let ((_%e196148196192%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl196147196189%_))))
                (let ((_%hd196149196195%_
                       (let () (declare (not safe)) (##car _%e196148196192%_)))
                      (_%tl196150196197%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196148196192%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl196150196197%_))
                      ((lambda (_%g196132196200%_
                                _%g196133196201%_
                                _%g196134196202%_
                                _%g196135196203%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self196127%_
                                        _%g196133196201%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self196127%_
                                              _%g196132196200%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self196127%_
                                                    _%g196134196202%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self196127%_
                                                          _%g196135196203%_))
                                                       (cons ''#f '())))))))
                       _%hd196149196195%_
                       _%hd196146196187%_
                       _%hd196143196179%_
                       _%hd196140196171%_)
                      (_%g196130196155%_ _%g196131196158%_))))
              (_%g196130196155%_ _%g196131196158%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196130196155%_
                                               _%g196131196158%_))))
                                      (_%g196130196155%_ _%g196131196158%_))))
                              (_%g196130196155%_ _%g196131196158%_))))
                      (_%g196130196155%_ _%g196131196158%_)))))
          (_%g196129196224%_ _%stx196128%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self196043%_ _%stx196044%_)
        (let* ((_%g196046196067%_
                (lambda (_%g196047196064%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196047196064%_))))
               (_%g196045196124%_
                (lambda (_%g196047196070%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196047196070%_))
                      (let ((_%e196051196072%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196047196070%_))))
                        (let ((_%hd196052196075%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196051196072%_)))
                              (_%tl196053196077%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196051196072%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196053196077%_))
                              (let ((_%e196054196080%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196053196077%_))))
                                (let ((_%hd196055196083%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196054196080%_)))
                                      (_%tl196056196085%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196054196080%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196056196085%_))
                                      (let ((_%e196057196088%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196056196085%_))))
                                        (let ((_%hd196058196091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196057196088%_)))
                                              (_%tl196059196093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196057196088%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196059196093%_))
                                              (let ((_%e196060196096%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196059196093%_))))
                                                (let ((_%hd196061196099%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196060196096%_)))
                                                      (_%tl196062196101%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196060196096%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196062196101%_))
                                                      ((lambda (_%g196048196104%_
                                                                _%g196049196105%_
                                                                _%g196050196106%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self196043%_
                                _%g196048196104%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self196043%_
                                      _%g196049196105%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self196043%_
                                            _%g196050196106%_))
                                         (cons ''#f '()))))))
               _%hd196061196099%_
               _%hd196058196091%_
               _%hd196055196083%_)
              (_%g196046196067%_ _%g196047196070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196046196067%_
                                               _%g196047196070%_))))
                                      (_%g196046196067%_ _%g196047196070%_))))
                              (_%g196046196067%_ _%g196047196070%_))))
                      (_%g196046196067%_ _%g196047196070%_)))))
          (_%g196045196124%_ _%stx196044%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self195943%_ _%stx195944%_)
        (let* ((_%g195946195971%_
                (lambda (_%g195947195968%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195947195968%_))))
               (_%g195945196040%_
                (lambda (_%g195947195974%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195947195974%_))
                      (let ((_%e195952195976%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195947195974%_))))
                        (let ((_%hd195953195979%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195952195976%_)))
                              (_%tl195954195981%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195952195976%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195954195981%_))
                              (let ((_%e195955195984%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195954195981%_))))
                                (let ((_%hd195956195987%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195955195984%_)))
                                      (_%tl195957195989%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195955195984%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195957195989%_))
                                      (let ((_%e195958195992%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195957195989%_))))
                                        (let ((_%hd195959195995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195958195992%_)))
                                              (_%tl195960195997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195958195992%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195960195997%_))
                                              (let ((_%e195961196000%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl195960195997%_))))
                                                (let ((_%hd195962196003%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195961196000%_)))
                                                      (_%tl195963196005%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195961196000%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl195963196005%_))
                                                      (let ((_%e195964196008%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl195963196005%_))))
                (let ((_%hd195965196011%_
                       (let () (declare (not safe)) (##car _%e195964196008%_)))
                      (_%tl195966196013%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e195964196008%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl195966196013%_))
                      ((lambda (_%g195948196016%_
                                _%g195949196017%_
                                _%g195950196018%_
                                _%g195951196019%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self195943%_
                                        _%g195949196017%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self195943%_
                                              _%g195948196016%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self195943%_
                                                    _%g195950196018%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self195943%_
                                                          _%g195951196019%_))
                                                       (cons ''#f '())))))))
                       _%hd195965196011%_
                       _%hd195962196003%_
                       _%hd195959195995%_
                       _%hd195956195987%_)
                      (_%g195946195971%_ _%g195947195974%_))))
              (_%g195946195971%_ _%g195947195974%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195946195971%_
                                               _%g195947195974%_))))
                                      (_%g195946195971%_ _%g195947195974%_))))
                              (_%g195946195971%_ _%g195947195974%_))))
                      (_%g195946195971%_ _%g195947195974%_)))))
          (_%g195945196040%_ _%stx195944%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self195738%_ _%stx195739%_)
        (let* ((_%g195741195762%_
                (lambda (_%g195742195759%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195742195759%_))))
               (_%g195740195940%_
                (lambda (_%g195742195765%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195742195765%_))
                      (let ((_%e195746195767%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195742195765%_))))
                        (let ((_%hd195747195770%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195746195767%_)))
                              (_%tl195748195772%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195746195767%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195748195772%_))
                              (let ((_%e195749195775%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195748195772%_))))
                                (let ((_%hd195750195778%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195749195775%_)))
                                      (_%tl195751195780%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195749195775%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195751195780%_))
                                      (let ((_%e195752195783%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195751195780%_))))
                                        (let ((_%hd195753195786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195752195783%_)))
                                              (_%tl195754195788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195752195783%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195754195788%_))
                                              (let ((_%e195755195791%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl195754195788%_))))
                                                (let ((_%hd195756195794%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195755195791%_)))
                                                      (_%tl195757195796%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195755195791%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195757195796%_))
                                                      ((lambda (_%g195743195799%_
                                                                _%g195744195800%_
                                                                _%g195745195801%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self195738%_
                                    _%g195743195799%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self195738%_
                                          _%g195744195800%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp195819%_ ((_%rest195822%_
                                         (cons _%g195744195800%_
                                               (cons _%g195743195799%_ '())))
                                        (_%bind195824%_ '())
                                        (_%args195825%_ '()))
                       (let* ((_%rest195826195834%_ _%rest195822%_)
                              (_%else195828195842%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind195824%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp203960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (foldr__0 cons __tmp203960 _%args195825%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K195830195928%_
                               (lambda (_%rest195845%_ _%e195846%_)
                                 (let* ((_%__stx203597203598%_ _%e195846%_)
                                        (_%g195851195869%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx203597203598%_)))))
                                   (let ((_%__kont203599203600%_
                                          (lambda ()
                                            (_%lp195819%_
                                             _%rest195845%_
                                             _%bind195824%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e195846%_))
                                                   _%args195825%_))))
                                         (_%__kont203601203602%_
                                          (lambda ()
                                            (_%lp195819%_
                                             _%rest195845%_
                                             _%bind195824%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e195846%_))
                                                   _%args195825%_))))
                                         (_%__kont203603203604%_
                                          (lambda ()
                                            (let ((_%tmp195876%_
                                                   (let ((__tmp203961
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp203961))))
                                              (_%lp195819%_
                                               _%rest195845%_
                                               (cons (cons _%tmp195876%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e195846%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind195824%_)
                                               (cons _%tmp195876%_
                                                     _%args195825%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx203597203598%_))
                                         (let ((_%e195853195907%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx203597203598%_))))
                                           (let ((_%tl195855195912%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e195853195907%_)))
                                                 (_%hd195854195910%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e195853195907%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd195854195910%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd195854195910%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl195855195912%_))
                                                         (let ((_%e195856195915%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl195855195912%_))))
                   (let ((_%tl195858195920%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e195856195915%_)))
                         (_%hd195857195918%_
                          (let ()
                            (declare (not safe))
                            (##car _%e195856195915%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl195858195920%_))
                         (_%__kont203599203600%_)
                         (_%__kont203603203604%_))))
                 (_%__kont203603203604%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd195854195910%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl195855195912%_))
                     (let ((_%e195862195892%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl195855195912%_))))
                       (let ((_%tl195864195897%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e195862195892%_)))
                             (_%hd195863195895%_
                              (let ()
                                (declare (not safe))
                                (##car _%e195862195892%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl195864195897%_))
                             (_%__kont203601203602%_)
                             (_%__kont203603203604%_))))
                     (_%__kont203603203604%_))
                 (_%__kont203603203604%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont203603203604%_))))
                                         (_%__kont203603203604%_)))))))
                         (if (pair? _%rest195826195834%_)
                             (let ((_%hd195831195931%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest195826195834%_)))
                                   (_%tl195832195933%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest195826195834%_))))
                               (let* ((_%e195936%_ _%hd195831195931%_)
                                      (_%rest195938%_ _%tl195832195933%_))
                                 (_%K195830195928%_
                                  _%rest195938%_
                                  _%e195936%_)))
                             (_%else195828195842%_))))))
               _%hd195756195794%_
               _%hd195753195786%_
               _%hd195750195778%_)
              (_%g195741195762%_ _%g195742195765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195741195762%_
                                               _%g195742195765%_))))
                                      (_%g195741195762%_ _%g195742195765%_))))
                              (_%g195741195762%_ _%g195742195765%_))))
                      (_%g195741195762%_ _%g195742195765%_)))))
          (_%g195740195940%_ _%stx195739%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self195517%_ _%stx195518%_)
        (let* ((_%g195520195545%_
                (lambda (_%g195521195542%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195521195542%_))))
               (_%g195519195735%_
                (lambda (_%g195521195548%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195521195548%_))
                      (let ((_%e195526195550%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195521195548%_))))
                        (let ((_%hd195527195553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195526195550%_)))
                              (_%tl195528195555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195526195550%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195528195555%_))
                              (let ((_%e195529195558%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195528195555%_))))
                                (let ((_%hd195530195561%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195529195558%_)))
                                      (_%tl195531195563%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195529195558%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195531195563%_))
                                      (let ((_%e195532195566%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195531195563%_))))
                                        (let ((_%hd195533195569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195532195566%_)))
                                              (_%tl195534195571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195532195566%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195534195571%_))
                                              (let ((_%e195535195574%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl195534195571%_))))
                                                (let ((_%hd195536195577%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195535195574%_)))
                                                      (_%tl195537195579%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195535195574%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl195537195579%_))
                                                      (let ((_%e195538195582%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl195537195579%_))))
                (let ((_%hd195539195585%_
                       (let () (declare (not safe)) (##car _%e195538195582%_)))
                      (_%tl195540195587%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e195538195582%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl195540195587%_))
                      ((lambda (_%g195522195590%_
                                _%g195523195591%_
                                _%g195524195592%_
                                _%g195525195593%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self195517%_
                                            _%g195523195591%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self195517%_
                                                  _%g195522195590%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self195517%_
                                                        _%g195524195592%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp195614%_ ((_%rest195617%_
                                                 (cons _%g195524195592%_
                                                       (cons _%g195522195590%_
                                                             (cons _%g195523195591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind195619%_ '())
                                                (_%args195620%_ '()))
                               (let* ((_%rest195621195629%_ _%rest195617%_)
                                      (_%else195623195637%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind195619%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp203962 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (foldr__0 cons __tmp203962 _%args195620%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K195625195723%_
                                       (lambda (_%rest195640%_ _%e195641%_)
                                         (let* ((_%__stx203643203644%_
                                                 _%e195641%_)
                                                (_%g195646195664%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx203643203644%_)))))
                                           (let ((_%__kont203645203646%_
                                                  (lambda ()
                                                    (_%lp195614%_
                                                     _%rest195640%_
                                                     _%bind195619%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e195641%_))
                                                           _%args195620%_))))
                                                 (_%__kont203647203648%_
                                                  (lambda ()
                                                    (_%lp195614%_
                                                     _%rest195640%_
                                                     _%bind195619%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e195641%_))
                                                           _%args195620%_))))
                                                 (_%__kont203649203650%_
                                                  (lambda ()
                                                    (let ((_%tmp195671%_
                                                           (let ((__tmp203963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp203963))))
              (_%lp195614%_
               _%rest195640%_
               (cons (cons _%tmp195671%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e195641%_))
                                 '()))
                     _%bind195619%_)
               (cons _%tmp195671%_ _%args195620%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx203643203644%_))
                                                 (let ((_%e195648195702%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx203643203644%_))))
                                                   (let ((_%tl195650195707%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e195648195702%_)))
                                                         (_%hd195649195705%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e195648195702%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd195649195705%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd195649195705%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl195650195707%_))
                         (let ((_%e195651195710%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl195650195707%_))))
                           (let ((_%tl195653195715%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e195651195710%_)))
                                 (_%hd195652195713%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e195651195710%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl195653195715%_))
                                 (_%__kont203645203646%_)
                                 (_%__kont203649203650%_))))
                         (_%__kont203649203650%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd195649195705%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl195650195707%_))
                             (let ((_%e195657195687%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl195650195707%_))))
                               (let ((_%tl195659195692%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e195657195687%_)))
                                     (_%hd195658195690%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e195657195687%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl195659195692%_))
                                     (_%__kont203647203648%_)
                                     (_%__kont203649203650%_))))
                             (_%__kont203649203650%_))
                         (_%__kont203649203650%_)))
                 (_%__kont203649203650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont203649203650%_)))))))
                                 (if (pair? _%rest195621195629%_)
                                     (let ((_%hd195626195726%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest195621195629%_)))
                                           (_%tl195627195728%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest195621195629%_))))
                                       (let* ((_%e195731%_ _%hd195626195726%_)
                                              (_%rest195733%_
                                               _%tl195627195728%_))
                                         (_%K195625195723%_
                                          _%rest195733%_
                                          _%e195731%_)))
                                     (_%else195623195637%_))))))
                       _%hd195539195585%_
                       _%hd195536195577%_
                       _%hd195533195569%_
                       _%hd195530195561%_)
                      (_%g195520195545%_ _%g195521195548%_))))
              (_%g195520195545%_ _%g195521195548%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195520195545%_
                                               _%g195521195548%_))))
                                      (_%g195520195545%_ _%g195521195548%_))))
                              (_%g195520195545%_ _%g195521195548%_))))
                      (_%g195520195545%_ _%g195521195548%_)))))
          (_%g195519195735%_ _%stx195518%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self195356%_ _%stx195357%_)
        (letrec ((_%import-set-template195359%_
                  (lambda (_%in195462%_ _%phi195463%_)
                    (let ((_%iphi195465%_
                           (fx+ _%phi195463%_
                                (##direct-structure-ref
                                 _%in195462%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports195466%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in195462%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp195468%_ ((_%rest195470%_ _%imports195466%_)
                                         (_%r195471%_ '()))
                        (let* ((_%rest195472195480%_ _%rest195470%_)
                               (_%else195474195488%_ (lambda () _%r195471%_))
                               (_%K195476195505%_
                                (lambda (_%rest195491%_ _%in195492%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in195492%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi195465%_))
                                          (_%lp195468%_
                                           _%rest195491%_
                                           (cons _%in195492%_ _%r195471%_))
                                          (_%lp195468%_
                                           _%rest195491%_
                                           _%r195471%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in195492%_
                                             'gx#module-import::t))
                                          (let ((_%iphi195496%_
                                                 (fx+ _%phi195463%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in195492%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi195496%_))
                                                (_%lp195468%_
                                                 _%rest195491%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in195492%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r195471%_))
                                                (_%lp195468%_
                                                 _%rest195491%_
                                                 _%r195471%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in195492%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi195499%_
                                                     (fx+ _%iphi195465%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in195492%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi195499%_))
                                                    (_%lp195468%_
                                                     _%rest195491%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in195492%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r195471%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi195499%_))
                                                        (_%lp195468%_
                                                         _%rest195491%_
                                                         (let ((__tmp203964
                                                                (_%import-set-template195359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in195492%_
                         _%iphi195465%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r195471%_ __tmp203964)))
                (_%lp195468%_ _%rest195491%_ _%r195471%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp195468%_
                                               _%rest195491%_
                                               _%r195471%_)))))))
                          (if (pair? _%rest195472195480%_)
                              (let ((_%hd195477195508%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest195472195480%_)))
                                    (_%tl195478195510%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest195472195480%_))))
                                (let* ((_%in195513%_ _%hd195477195508%_)
                                       (_%rest195515%_ _%tl195478195510%_))
                                  (_%K195476195505%_
                                   _%rest195515%_
                                   _%in195513%_)))
                              (_%else195474195488%_))))))))
          (let* ((_%g195361195371%_
                  (lambda (_%g195362195368%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g195362195368%_))))
                 (_%g195360195459%_
                  (lambda (_%g195362195374%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g195362195374%_))
                        (let ((_%e195364195376%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g195362195374%_))))
                          (let ((_%hd195365195379%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195364195376%_)))
                                (_%tl195366195381%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195364195376%_))))
                            ((lambda (_%g195363195384%_)
                               (let ((_%ht195395%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp195397%_ ((_%rest195399%_
                                                     _%g195363195384%_)
                                                    (_%loads195400%_ '()))
                                   (letrec ((_%K195402%_
                                             (lambda (_%ctx195452%_
                                                      _%rest195453%_)
                                               (let ((_%id195455%_
                                                      (##structure-ref
                                                       _%ctx195452%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht195395%_
                                                        _%id195455%_))
                                                     (_%lp195397%_
                                                      _%rest195453%_
                                                      _%loads195400%_)
                                                     (let ((_%rt195457%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id195455%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht195395%_
                                                          _%id195455%_
                                                          _%rt195457%_))
                                                       (_%lp195397%_
                                                        _%rest195453%_
                                                        (cons _%rt195457%_
                                                              _%loads195400%_))))))))
                                     (let* ((_%rest195403195411%_
                                             _%rest195399%_)
                                            (_%else195405195423%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp203966
                                                            (lambda (_%g195418195420%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g195418195420%_)))
                   (__tmp203965 (reverse _%loads195400%_)))
               (declare (not safe))
               (##map __tmp203966 __tmp203965)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K195407195440%_
                                             (lambda (_%rest195426%_
                                                      _%in195427%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in195427%_
                                                      'gx#module-context::t))
                                                   (_%K195402%_
                                                    _%in195427%_
                                                    _%rest195426%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in195427%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in195427%_
                               '3
                               '#f
                               '#f)))
                   (_%K195402%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in195427%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest195426%_)
                   (_%lp195397%_ _%rest195426%_ _%loads195400%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in195427%_
                      'gx#import-set::t))
                   (let ((_%phi195432%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in195427%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi195432%_)
                         (_%K195402%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in195427%_
                             '1
                             '#f
                             '#f))
                          _%rest195426%_)
                         (if (fxpositive? _%phi195432%_)
                             (let ((_%deps195436%_
                                    (_%import-set-template195359%_
                                     _%in195427%_
                                     '0)))
                               (_%lp195397%_
                                (let ()
                                  (declare (not safe))
                                  (foldl__0
                                   cons
                                   _%rest195426%_
                                   _%deps195436%_))
                                _%loads195400%_))
                             (_%lp195397%_ _%rest195426%_ _%loads195400%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx195357%_
                      _%in195427%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest195403195411%_)
                                           (let ((_%hd195408195443%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest195403195411%_)))
                                                 (_%tl195409195445%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest195403195411%_))))
                                             (let* ((_%in195448%_
                                                     _%hd195408195443%_)
                                                    (_%rest195450%_
                                                     _%tl195409195445%_))
                                               (_%K195407195440%_
                                                _%rest195450%_
                                                _%in195448%_)))
                                           (_%else195405195423%_)))))))
                             _%tl195366195381%_)))
                        (_%g195361195371%_ _%g195362195374%_)))))
            (_%g195360195459%_ _%stx195357%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self195170%_ _%stx195171%_)
        (letrec ((_%add-lift!195173%_
                  (lambda (_%expr195354%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr195354%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote195174%_
                  (lambda (_%id195351%_ _%marks195352%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id195351%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks195352%_
                                                        '()))))))))
                 (_%generate-simple195175%_
                  (lambda (_%stxq195346%_)
                    (let ((_%gid195348%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid195349%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq195346%_))))
                      (_%add-lift!195173%_
                       (cons 'define
                             (cons _%gid195348%_
                                   (cons (_%generate-syntax-quote195174%_
                                          _%qid195349%_
                                          ''())
                                         '()))))
                      (let ((__tmp203967
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp203967 _%stxq195346%_ _%gid195348%_))
                      _%gid195348%_)))
                 (_%generate-serialized195176%_
                  (lambda (_%stxq195336%_ _%marks195337%_)
                    (let* ((_%mark-refs195339%_
                            (map _%generate-mark195177%_ _%marks195337%_))
                           (_%gid195341%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid195343%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq195336%_))))
                      (_%add-lift!195173%_
                       (cons 'define
                             (cons _%gid195341%_
                                   (cons (_%generate-syntax-quote195174%_
                                          _%qid195343%_
                                          (cons 'list _%mark-refs195339%_))
                                         '()))))
                      (let ((__tmp203968
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp203968 _%stxq195336%_ _%gid195341%_))
                      _%gid195341%_)))
                 (_%generate-mark195177%_
                  (lambda (_%mark195321%_)
                    (let ((_%$e195323%_
                           (let ((__tmp203969
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp203969 _%mark195321%_))))
                      (if _%$e195323%_
                          _%$e195323%_
                          (let* ((_%gid195327%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr195329%_
                                  (_%serialize-mark195178%_ _%mark195321%_))
                                 (_%ctx195331%_
                                  (let ((__tmp203970
                                         (##structure-ref
                                          _%mark195321%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp203970)))
                                 (_%ctx-ref195333%_
                                  (if (eq? _%ctx195331%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref195179%_
                                                               _%ctx195331%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp203971
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp203971
                               _%mark195321%_
                               _%gid195327%_))
                            (_%add-lift!195173%_
                             (cons 'define
                                   (cons _%gid195327%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr195329%_ '()))
                   (cons _%ctx-ref195333%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid195327%_)))))
                 (_%serialize-mark195178%_
                  (lambda (_%mark195269%_)
                    (letrec ((_%quote-e195271%_
                              (lambda (_%sym195319%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym195319%_))
                                    _%sym195319%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym195319%_))))))
                      (let* ((_%mark195272195281%_ _%mark195269%_)
                             (_%E195274195284%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark195272195281%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K195275195296%_
                              (lambda (_%trace195287%_
                                       _%phi195288%_
                                       _%ctx195289%_
                                       _%subst195290%_)
                                (let ((_%subs195292%_
                                       (if _%subst195290%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst195290%_))
                                           '())))
                                  (cons _%phi195288%_
                                        (let ((__tmp203972
                                               (lambda (_%pair195294%_)
                                                 (cons (_%quote-e195271%_
                                                        (car _%pair195294%_))
                                                       (_%quote-e195271%_
                                                        (cdr _%pair195294%_))))))
                                          (declare (not safe))
                                          (##map __tmp203972
                                                 _%subs195292%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark195272195281%_
                               'gx#expander-mark::t))
                            (let* ((_%e195276195299%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark195272195281%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst195302%_ _%e195276195299%_)
                                   (_%e195277195304%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark195272195281%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx195307%_ _%e195277195304%_)
                                   (_%e195278195309%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark195272195281%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi195312%_ _%e195278195309%_)
                                   (_%e195279195314%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark195272195281%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace195317%_ _%e195279195314%_))
                              (_%K195275195296%_
                               _%trace195317%_
                               _%phi195312%_
                               _%ctx195307%_
                               _%subst195302%_))
                            (_%E195274195284%_))))))
                 (_%context-ref195179%_
                  (lambda (_%ctx195256%_)
                    (if (let ((__tmp203973
                               (##structure-ref
                                _%ctx195256%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp203973
                           'gx#module-context::t))
                        (let ((_%ctx-ref195258%_
                               (_%context-ref-nested195181%_ _%ctx195256%_))
                              (_%ctx-origin195259%_
                               (_%context-ref-origin195180%_ _%ctx195256%_))
                              (_%origin195260%_
                               (_%context-ref-origin195180%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin195260%_ _%ctx-origin195259%_)
                              (let ((_%ref195262%_
                                     (_%context-ref-nested195181%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp195264%_ ((_%ref195266%_
                                                    (cdr _%ref195262%_))
                                                   (_%ctx-ref195267%_
                                                    (cdr _%ctx-ref195258%_)))
                                  (if (and (pair? _%ref195266%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref195266%_))
                                                (car _%ctx-ref195267%_)))
                                      (_%lp195264%_
                                       (cdr _%ref195266%_)
                                       (cdr _%ctx-ref195267%_))
                                      (cons '#f _%ctx-ref195267%_))))
                              _%ctx-ref195258%_))
                        (let ((__tmp203974
                               (##structure-ref
                                _%ctx195256%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp203974)))))
                 (_%context-ref-origin195180%_
                  (lambda (_%ctx195248%_)
                    (let _%lp195250%_ ((_%ctx195252%_ _%ctx195248%_))
                      (let ((_%super195254%_
                             (##structure-ref
                              _%ctx195252%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super195254%_
                               'gx#module-context::t))
                            (_%lp195250%_ _%super195254%_)
                            _%ctx195252%_)))))
                 (_%context-ref-nested195181%_
                  (lambda (_%ctx195239%_)
                    (let _%lp195241%_ ((_%ctx195243%_ _%ctx195239%_)
                                       (_%r195244%_ '()))
                      (let ((_%super195246%_
                             (##structure-ref
                              _%ctx195243%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super195246%_
                               'gx#module-context::t))
                            (_%lp195241%_
                             _%super195246%_
                             (cons (car (##structure-ref
                                         _%ctx195243%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r195244%_))
                            (cons (let ((__tmp203975
                                         (##structure-ref
                                          _%ctx195243%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp203975))
                                  _%r195244%_)))))))
          (let* ((_%g195183195196%_
                  (lambda (_%g195184195193%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g195184195193%_))))
                 (_%g195182195236%_
                  (lambda (_%g195184195199%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g195184195199%_))
                        (let ((_%e195186195201%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g195184195199%_))))
                          (let ((_%hd195187195204%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195186195201%_)))
                                (_%tl195188195206%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195186195201%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195188195206%_))
                                (let ((_%e195189195209%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195188195206%_))))
                                  (let ((_%hd195190195212%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195189195209%_)))
                                        (_%tl195191195214%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195189195209%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195191195214%_))
                                        ((lambda (_%g195185195217%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g195185195217%_))
                                               (let ((_%$e195230%_
                                                      (let ((__tmp203976
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp203976 _%g195185195217%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e195230%_
                                                     _%$e195230%_
                                                     (let ((_%marks195234%_
                                                            (##direct-structure-ref
                                                             _%g195185195217%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks195234%_)
                                                           (_%generate-simple195175%_
                                                            _%g195185195217%_)
                                                           (_%generate-serialized195176%_
                                                            _%g195185195217%_
                                                            _%marks195234%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g195185195217%_))))
                                         _%hd195190195212%_)
                                        (_%g195183195196%_
                                         _%g195184195199%_))))
                                (_%g195183195196%_ _%g195184195199%_))))
                        (_%g195183195196%_ _%g195184195199%_)))))
            (_%g195182195236%_ _%stx195171%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self195102%_ _%stx195103%_)
        (let* ((_%g195105195122%_
                (lambda (_%g195106195119%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195106195119%_))))
               (_%g195104195167%_
                (lambda (_%g195106195125%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195106195125%_))
                      (let ((_%e195109195127%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195106195125%_))))
                        (let ((_%hd195110195130%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195109195127%_)))
                              (_%tl195111195132%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195109195127%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195111195132%_))
                              (let ((_%e195112195135%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195111195132%_))))
                                (let ((_%hd195113195138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195112195135%_)))
                                      (_%tl195114195140%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195112195135%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195114195140%_))
                                      (let ((_%e195115195143%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195114195140%_))))
                                        (let ((_%hd195116195146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195115195143%_)))
                                              (_%tl195117195148%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195115195143%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195117195148%_))
                                              ((lambda (_%g195107195151%_
                                                        _%g195108195152%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g195108195152%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self195102%_
                              _%g195107195151%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd195116195146%_
                                               _%hd195113195138%_)
                                              (_%g195105195122%_
                                               _%g195106195125%_))))
                                      (_%g195105195122%_ _%g195106195125%_))))
                              (_%g195105195122%_ _%g195106195125%_))))
                      (_%g195105195122%_ _%g195106195125%_)))))
          (_%g195104195167%_ _%stx195103%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self195051%_ _%stx195052%_)
        (let* ((_%g195054195064%_
                (lambda (_%g195055195061%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195055195061%_))))
               (_%g195053195099%_
                (lambda (_%g195055195067%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195055195067%_))
                      (let ((_%e195057195069%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195055195067%_))))
                        (let ((_%hd195058195072%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195057195069%_)))
                              (_%tl195059195074%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195057195069%_))))
                          ((lambda (_%g195056195077%_)
                             (let* ((_%c-body195091%_
                                     (map (lambda (_%g195086195088%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self195051%_
                                               _%g195086195088%_)))
                                          _%g195056195077%_))
                                    (_%c-body195096%_
                                     (let ((__tmp203977
                                            (lambda (_%$obj195093%_)
                                              (not (eq? _%$obj195093%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp203977
                                        _%c-body195091%_))))
                               (cons '%#begin _%c-body195096%_)))
                           _%tl195059195074%_)))
                      (_%g195054195064%_ _%g195055195067%_)))))
          (_%g195053195099%_ _%stx195052%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self194956%_ _%stx194957%_)
        (let* ((_%g194959194969%_
                (lambda (_%g194960194966%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194960194966%_))))
               (_%g194958195048%_
                (lambda (_%g194960194972%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194960194972%_))
                      (let ((_%e194962194974%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194960194972%_))))
                        (let ((_%hd194963194977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194962194974%_)))
                              (_%tl194964194979%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194962194974%_))))
                          ((lambda (_%g194961194982%_)
                             (let* ((_%phi194992%_
                                     (let ((__tmp203978
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp203978 '1)))
                                    (_%block194994%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self194956%_ 'state))
                                      _%phi194992%_))
                                    (_%compiled194997%_
                                     (let ((__tmp203979
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self194956%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g194961194982%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp203979
                                        gx#current-expander-phi
                                        _%phi194992%_)))
                                    (_%g195000195010%_
                                     (lambda (_%g195001195007%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g195001195007%_))))
                                    (_%g194999195045%_
                                     (lambda (_%g195001195013%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g195001195013%_))
                                           (let ((_%e195003195015%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g195001195013%_))))
                                             (let ((_%hd195004195018%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e195003195015%_)))
                                                   (_%tl195005195020%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e195003195015%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd195004195018%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd195004195018%_))
                                                       ((lambda (_%g195002195023%_)
                                                          (let ((_%c-body195040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj195037%_)
                                   (not (eq? _%$obj195037%_ '#!void)))
                                 _%g195002195023%_)))
                    (if _%block194994%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block194994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body195040%_))
                        (if (null? _%c-body195040%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body195040%_)))))
                _%tl195005195020%_)
               (_%g195000195010%_ _%g195001195013%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g195000195010%_
                                                    _%g195001195013%_))))
                                           (_%g195000195010%_
                                            _%g195001195013%_)))))
                               (_%g194999195045%_ _%compiled194997%_)))
                           _%tl194964194979%_)))
                      (_%g194959194969%_ _%g194960194972%_)))))
          (_%g194958195048%_ _%stx194957%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self194887%_ _%stx194888%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self194887%_ 'state)))
        (let* ((_%g194890194904%_
                (lambda (_%g194891194901%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194891194901%_))))
               (_%g194889194953%_
                (lambda (_%g194891194907%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194891194907%_))
                      (let ((_%e194894194909%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194891194907%_))))
                        (let ((_%hd194895194912%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194894194909%_)))
                              (_%tl194896194914%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194894194909%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194896194914%_))
                              (let ((_%e194897194917%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194896194914%_))))
                                (let ((_%hd194898194920%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194897194917%_)))
                                      (_%tl194899194922%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194897194917%_))))
                                  ((lambda (_%g194892194925%_
                                            _%g194893194926%_)
                                     (let ((_%key194939%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g194893194926%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key194939%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx194888%_
                                              _%g194893194926%_
                                              _%key194939%_)))
                                       (let* ((_%ctx194941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g194893194926%_)))
                                              (_%code194944%_
                                               (let ((__tmp203980
                                                      (lambda ()
                                                        (let ((__tmp203981
                                                               (##structure-ref
                                                                _%ctx194941%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self194887%_
                                                           __tmp203981)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp203980
                                                  gx#current-expander-context
                                                  _%ctx194941%_)))
                                              (_%rt194946%_
                                               (let ((__tmp203982
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp203982
                                                  _%ctx194941%_)))
                                              (_%loader194948%_
                                               (if _%rt194946%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt194946%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid194950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g194893194926%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self194887%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid194950%_
                                                     (cons _%code194944%_
                                                           _%loader194948%_))))))
                                   _%tl194899194922%_
                                   _%hd194898194920%_)))
                              (_%g194890194904%_ _%g194891194907%_))))
                      (_%g194890194904%_ _%g194891194907%_)))))
          (_%g194889194953%_ _%stx194888%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx194874%_ _%context-chain194875%_)
        (let _%lp194877%_ ((_%ctx194879%_ _%ctx194874%_) (_%path194880%_ '()))
          (let ((_%super194882%_
                 (##structure-ref _%ctx194879%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super194882%_ _%context-chain194875%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx194879%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path194880%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super194882%_
                       'gx#module-context::t))
                    (_%lp194877%_
                     _%super194882%_
                     (cons (car (##structure-ref
                                 _%ctx194879%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path194880%_))
                    (cons (let ((__tmp203983
                                 (##structure-ref
                                  _%ctx194879%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp203983))
                          _%path194880%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp194867%_ ((_%ctx194869%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r194870%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx194869%_ 'gx#module-context::t))
              (_%lp194867%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx194869%_ '3 '#f '#f))
               (cons _%ctx194869%_ _%r194870%_))
              _%r194870%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self194632%_ _%stx194633%_)
        (letrec* ((_%context-chain194635%_ (gxc#current-context-chain))
                  (_%make-import-spec194636%_
                   (lambda (_%in194804%_)
                     (let* ((_%in194805194817%_ _%in194804%_)
                            (_%E194807194820%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in194805194817%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K194808194830%_
                             (lambda (_%phi194823%_
                                      _%name194824%_
                                      _%src-name194825%_
                                      _%src-phi194826%_
                                      _%src-key194827%_
                                      _%src-ctx194828%_)
                               (cons _%phi194823%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name194824%_))
                                           (cons _%src-phi194826%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name194825%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in194805194817%_
                              'gx#module-import::t))
                           (let ((_%e194809194833%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in194805194817%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e194809194833%_
                                    'gx#module-export::t))
                                 (let* ((_%e194812194836%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e194809194833%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx194839%_ _%e194812194836%_)
                                        (_%e194813194841%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e194809194833%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key194844%_ _%e194813194841%_)
                                        (_%e194814194846%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e194809194833%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi194849%_ _%e194814194846%_)
                                        (_%e194815194851%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e194809194833%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name194854%_ _%e194815194851%_)
                                        (_%e194810194856%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in194805194817%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name194859%_ _%e194810194856%_)
                                        (_%e194811194861%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in194805194817%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi194864%_ _%e194811194861%_))
                                   (_%K194808194830%_
                                    _%phi194864%_
                                    _%name194859%_
                                    _%src-name194854%_
                                    _%src-phi194849%_
                                    _%src-key194844%_
                                    _%src-ctx194839%_))
                                 (_%E194807194820%_)))
                           (_%E194807194820%_)))))
                  (_%make-import-path194637%_
                   (lambda (_%ctx194802%_)
                     (gxc#generate-meta-import-path
                      _%ctx194802%_
                      _%context-chain194635%_)))
                  (_%make-import-spec-in194638%_
                   (lambda (_%ctx194799%_ _%in194800%_)
                     (cons 'spec:
                           (cons (_%make-import-path194637%_ _%ctx194799%_)
                                 (reverse _%in194800%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self194632%_ 'state)))
          (let* ((_%g194640194650%_
                  (lambda (_%g194641194647%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194641194647%_))))
                 (_%g194639194796%_
                  (lambda (_%g194641194653%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194641194653%_))
                        (let ((_%e194643194655%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194641194653%_))))
                          (let ((_%hd194644194658%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194643194655%_)))
                                (_%tl194645194660%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194643194655%_))))
                            ((lambda (_%g194642194663%_)
                               (let _%lp194674%_ ((_%rest194676%_
                                                   _%g194642194663%_)
                                                  (_%current-src194677%_ '#f)
                                                  (_%current-in194678%_ '())
                                                  (_%r194679%_ '()))
                                 (let* ((_%rest194680194688%_ _%rest194676%_)
                                        (_%else194682194698%_
                                         (lambda ()
                                           (let ((_%r194696%_
                                                  (if _%current-src194677%_
                                                      (cons (_%make-import-spec-in194638%_
                                                             _%current-src194677%_
                                                             _%current-in194678%_)
                                                            _%r194679%_)
                                                      _%r194679%_)))
                                             (cons '%#import
                                                   (reverse _%r194696%_)))))
                                        (_%K194684194784%_
                                         (lambda (_%rest194701%_ _%in194702%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in194702%_
                                                  'gx#module-import::t))
                                               (let* ((_%in194704194711%_
                                                       _%in194702%_)
                                                      (_%E194706194714%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in194704194711%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K194707194722%_
               (lambda (_%src-ctx194717%_)
                 (if (eq? _%current-src194677%_ _%src-ctx194717%_)
                     (_%lp194674%_
                      _%rest194701%_
                      _%current-src194677%_
                      (cons (_%make-import-spec194636%_ _%in194702%_)
                            _%current-in194678%_)
                      _%r194679%_)
                     (if _%current-src194677%_
                         (_%lp194674%_
                          _%rest194701%_
                          _%src-ctx194717%_
                          (cons (_%make-import-spec194636%_ _%in194702%_) '())
                          (cons (_%make-import-spec-in194638%_
                                 _%current-src194677%_
                                 _%current-in194678%_)
                                _%r194679%_))
                         (_%lp194674%_
                          _%rest194701%_
                          _%src-ctx194717%_
                          (cons (_%make-import-spec194636%_ _%in194702%_) '())
                          _%r194679%_)))))
              (_%e194708194725%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in194704194711%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e194708194725%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e194709194728%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e194708194725%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx194731%_ _%e194709194728%_))
               (_%K194707194722%_ _%src-ctx194731%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E194706194714%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in194702%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi194734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in194702%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src194736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in194702%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in194776%_
                                                           (let* ((_%g194737194746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path194637%_ _%src194736%_))
                          (_%E194740194750%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g194737194746%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K194742194766%_
                            (lambda (_%path194764%_) _%path194764%_))
                           (_%K194741194756%_
                            (lambda (_%path194754%_)
                              (cons 'in: _%path194754%_))))
                       (if (pair? _%g194737194746%_)
                           (let ((_%tl194744194771%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g194737194746%_)))
                                 (_%hd194743194769%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g194737194746%_))))
                             (if (null? _%tl194744194771%_)
                                 (let ((_%path194774%_ _%hd194743194769%_))
                                   (_%K194742194766%_ _%path194774%_))
                                 (let ((_%path194759%_ _%g194737194746%_))
                                   (_%K194741194756%_ _%path194759%_))))
                           (let ((_%path194759%_ _%g194737194746%_))
                             (_%K194741194756%_ _%path194759%_))))))
                  (_%r194778%_
                   (if _%current-src194677%_
                       (cons (_%make-import-spec-in194638%_
                              _%current-src194677%_
                              _%current-in194678%_)
                             _%r194679%_)
                       _%r194679%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp194674%_
                                                      _%rest194701%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi194734%_)
                                                                _%src-in194776%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi194734%_
                                    (cons _%src-in194776%_ '()))))
                    _%r194778%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in194702%_
                                                          'gx#module-context::t))
                                                       (let ((_%r194782%_
                                                              (if _%current-src194677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in194638%_
                                 _%current-src194677%_
                                 _%current-in194678%_)
                                _%r194679%_)
                          _%r194679%_)))
                 (_%lp194674%_
                  _%rest194701%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path194637%_ _%in194702%_))
                        _%r194782%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest194680194688%_)
                                       (let ((_%hd194685194787%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest194680194688%_)))
                                             (_%tl194686194789%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest194680194688%_))))
                                         (let* ((_%in194792%_
                                                 _%hd194685194787%_)
                                                (_%rest194794%_
                                                 _%tl194686194789%_))
                                           (_%K194684194784%_
                                            _%rest194794%_
                                            _%in194792%_)))
                                       (_%else194682194698%_)))))
                             _%tl194645194660%_)))
                        (_%g194640194650%_ _%g194641194653%_)))))
            (_%g194639194796%_ _%stx194633%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self194442%_ _%stx194443%_)
        (letrec* ((_%context-chain194445%_ (gxc#current-context-chain))
                  (_%make-import-path194446%_
                   (lambda (_%ctx194630%_)
                     (gxc#generate-meta-import-path
                      _%ctx194630%_
                      _%context-chain194445%_))))
          (let* ((_%g194448194458%_
                  (lambda (_%g194449194455%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194449194455%_))))
                 (_%g194447194627%_
                  (lambda (_%g194449194461%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194449194461%_))
                        (let ((_%e194451194463%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194449194461%_))))
                          (let ((_%hd194452194466%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194451194463%_)))
                                (_%tl194453194468%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194451194463%_))))
                            ((lambda (_%g194450194471%_)
                               (let _%lp194482%_ ((_%rest194484%_
                                                   _%g194450194471%_)
                                                  (_%r194485%_ '()))
                                 (let* ((_%rest194486194494%_ _%rest194484%_)
                                        (_%else194488194502%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r194485%_))))
                                        (_%K194490194615%_
                                         (lambda (_%rest194505%_ _%out194506%_)
                                           (let* ((_%out194507194520%_
                                                   _%out194506%_)
                                                  (_%E194510194524%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out194507194520%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K194514194594%_
                                                    (lambda (_%name194590%_
                                                             _%phi194591%_
                                                             _%key194592%_)
                                                      (_%lp194482%_
                                                       _%rest194505%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi194591%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key194592%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name194590%_))
                                             '()))))
                     _%r194485%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K194511194574%_
                                                    (lambda (_%phi194528%_
                                                             _%src194529%_)
                                                      (let* ((_%out194569%_
                                                              (if _%src194529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g194530194539%_
                                              (_%make-import-path194446%_
                                               _%src194529%_))
                                             (_%E194533194543%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g194530194539%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K194535194559%_
                                               (lambda (_%path194557%_)
                                                 _%path194557%_))
                                              (_%K194534194549%_
                                               (lambda (_%path194547%_)
                                                 (cons 'in: _%path194547%_))))
                                          (if (pair? _%g194530194539%_)
                                              (let ((_%tl194537194564%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g194530194539%_)))
                                                    (_%hd194536194562%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g194530194539%_))))
                                                (if (null? _%tl194537194564%_)
                                                    (let ((_%path194567%_
                                                           _%hd194536194562%_))
                                                      (_%K194535194559%_
                                                       _%path194567%_))
                                                    (let ((_%path194552%_
                                                           _%g194530194539%_))
                                                      (_%K194534194549%_
                                                       _%path194552%_))))
                                              (let ((_%path194552%_
                                                     _%g194530194539%_))
                                                (_%K194534194549%_
                                                 _%path194552%_)))))
                                      '()))
                          '#t))
                     (_%out194571%_
                      (if (fxzero? _%phi194528%_)
                          _%out194569%_
                          (cons 'phi:
                                (cons _%phi194528%_
                                      (cons _%out194569%_ '()))))))
                (_%lp194482%_
                 _%rest194505%_
                 (cons _%out194571%_ _%r194485%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match194509194587%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out194507194520%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e194512194577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out194507194520%_
                               '1
                               '#f
                               '#f)))
                           (_%e194513194582%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out194507194520%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src194580%_ _%e194512194577%_)
                            (_%phi194585%_ _%e194513194582%_))
                        (_%K194511194574%_ _%phi194585%_ _%src194580%_)))
                    (_%E194510194524%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out194507194520%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e194515194597%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out194507194520%_
                        '1
                        '#f
                        '#f)))
                    (_%e194516194600%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out194507194520%_
                        '2
                        '#f
                        '#f)))
                    (_%e194517194605%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out194507194520%_
                        '3
                        '#f
                        '#f)))
                    (_%e194518194610%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out194507194520%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key194603%_ _%e194516194600%_)
                     (_%phi194608%_ _%e194517194605%_)
                     (_%name194613%_ _%e194518194610%_))
                 (_%K194514194594%_
                  _%name194613%_
                  _%phi194608%_
                  _%key194603%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match194509194587%_))))))))
                                   (if (pair? _%rest194486194494%_)
                                       (let ((_%hd194491194618%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest194486194494%_)))
                                             (_%tl194492194620%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest194486194494%_))))
                                         (let* ((_%out194623%_
                                                 _%hd194491194618%_)
                                                (_%rest194625%_
                                                 _%tl194492194620%_))
                                           (_%K194490194615%_
                                            _%rest194625%_
                                            _%out194623%_)))
                                       (_%else194488194502%_)))))
                             _%tl194453194468%_)))
                        (_%g194448194458%_ _%g194449194461%_)))))
            (_%g194447194627%_ _%stx194443%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self194403%_ _%stx194404%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self194403%_ 'state)))
        (let* ((_%g194406194416%_
                (lambda (_%g194407194413%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194407194413%_))))
               (_%g194405194439%_
                (lambda (_%g194407194419%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194407194419%_))
                      (let ((_%e194409194421%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194407194419%_))))
                        (let ((_%hd194410194424%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194409194421%_)))
                              (_%tl194411194426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194409194421%_))))
                          ((lambda (_%g194408194429%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g194408194429%_)))
                           _%tl194411194426%_)))
                      (_%g194406194416%_ _%g194407194419%_)))))
          (_%g194405194439%_ _%stx194404%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self194278%_ _%stx194279%_)
        (letrec ((_%generate1194281%_
                  (lambda (_%id194398%_ _%eid194399%_)
                    (let ((_%eid194401%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid194399%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid194401%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx194279%_
                             _%eid194401%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id194398%_))
                            (cons _%eid194401%_ '()))))))
          (let* ((_%g194283194311%_
                  (lambda (_%g194284194308%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194284194308%_))))
                 (_%g194282194395%_
                  (lambda (_%g194284194314%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194284194314%_))
                        (let ((_%e194287194316%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194284194314%_))))
                          (let ((_%hd194288194319%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194287194316%_)))
                                (_%tl194289194321%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194287194316%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl194289194321%_))
                                (let ((_g203984_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl194289194321%_
                                          '0))))
                                  (begin
                                    (let ((_g203985_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g203984_)
                                                 (##values-length _g203984_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g203985_ 2)))
                                          (error "Context expects 2 values"
                                                 _g203985_)))
                                    (let ((_%target194290194324%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g203984_ 0)))
                                          (_%tl194292194326%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g203984_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl194292194326%_))
                                          (letrec ((_%loop194293194329%_
                                                    (lambda (_%hd194291194332%_
                                                             _%eid194297194334%_
                                                             _%id194298194335%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd194291194332%_))
                                                          (let ((_%e194294194337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd194291194332%_))))
                    (let ((_%lp-hd194295194340%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194294194337%_)))
                          (_%lp-tl194296194342%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194294194337%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd194295194340%_))
                          (let ((_%e194301194345%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd194295194340%_))))
                            (let ((_%hd194302194348%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194301194345%_)))
                                  (_%tl194303194350%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194301194345%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl194303194350%_))
                                  (let ((_%e194304194353%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl194303194350%_))))
                                    (let ((_%hd194305194356%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194304194353%_)))
                                          (_%tl194306194358%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194304194353%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl194306194358%_))
                                          (_%loop194293194329%_
                                           _%lp-tl194296194342%_
                                           (cons _%hd194305194356%_
                                                 _%eid194297194334%_)
                                           (cons _%hd194302194348%_
                                                 _%id194298194335%_))
                                          (_%g194283194311%_
                                           _%g194284194314%_))))
                                  (_%g194283194311%_ _%g194284194314%_))))
                          (_%g194283194311%_ _%g194284194314%_))))
                  (let ((_%eid194299194361%_ (reverse _%eid194297194334%_))
                        (_%id194300194362%_ (reverse _%id194298194335%_)))
                    ((lambda (_%g194285194364%_ _%g194286194365%_)
                       (cons '%#extern
                             (map _%generate1194281%_
                                  (let ((__tmp203986
                                         (lambda (_%g194380194383%_
                                                  _%g194381194385%_)
                                           (cons _%g194380194383%_
                                                 _%g194381194385%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp203986
                                     '()
                                     _%g194286194365%_))
                                  (let ((__tmp203987
                                         (lambda (_%g194387194390%_
                                                  _%g194388194392%_)
                                           (cons _%g194387194390%_
                                                 _%g194388194392%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp203987
                                     '()
                                     _%g194285194364%_)))))
                     _%eid194299194361%_
                     _%id194300194362%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop194293194329%_
                                             _%target194290194324%_
                                             '()
                                             '()))
                                          (_%g194283194311%_
                                           _%g194284194314%_)))))
                                (_%g194283194311%_ _%g194284194314%_))))
                        (_%g194283194311%_ _%g194284194314%_)))))
            (_%g194282194395%_ _%stx194279%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self194067%_ _%stx194068%_)
        (letrec ((_%generate1194070%_
                  (lambda (_%id194272%_)
                    (let ((_%eid194274%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id194272%_)))
                          (_%ident194275%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id194272%_)))
                          (_%props194276%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id194272%_))))
                      (cons '%#define-runtime
                            (cons _%ident194275%_
                                  (cons _%eid194274%_ _%props194276%_))))))
                 (_%generate*194071%_
                  (lambda (_%all194240%_)
                    (let* ((_%all194241194249%_ _%all194240%_)
                           (_%else194243194257%_
                            (lambda () (cons '%#begin _%all194240%_)))
                           (_%K194245194262%_
                            (lambda (_%one194260%_) _%one194260%_)))
                      (if (pair? _%all194241194249%_)
                          (let ((_%hd194246194265%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all194241194249%_)))
                                (_%tl194247194267%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all194241194249%_))))
                            (let ((_%one194270%_ _%hd194246194265%_))
                              (if (null? _%tl194247194267%_)
                                  (_%K194245194262%_ _%one194270%_)
                                  (_%else194243194257%_))))
                          (_%else194243194257%_))))))
          (let* ((_%g194073194090%_
                  (lambda (_%g194074194087%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g194074194087%_))))
                 (_%g194072194237%_
                  (lambda (_%g194074194093%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g194074194093%_))
                        (let ((_%e194077194095%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g194074194093%_))))
                          (let ((_%hd194078194098%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194077194095%_)))
                                (_%tl194079194100%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194077194095%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl194079194100%_))
                                (let ((_%e194080194103%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl194079194100%_))))
                                  (let ((_%hd194081194106%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194080194103%_)))
                                        (_%tl194082194108%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194080194103%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl194082194108%_))
                                        (let ((_%e194083194111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl194082194108%_))))
                                          (let ((_%hd194084194114%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e194083194111%_)))
                                                (_%tl194085194116%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e194083194111%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194085194116%_))
                                                ((lambda (_%g194075194119%_
                                                          _%g194076194120%_)
                                                   (let _%lp194136%_ ((_%rest194138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g194076194120%_)
                              (_%r194139%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx203722203723%_
                                                             _%rest194138%_)
                                                            (_%g194144194161%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx203722203723%_)))))
               (let ((_%__kont203724203725%_
                      (lambda (_%g194146194224%_)
                        (_%lp194136%_ _%g194146194224%_ _%r194139%_)))
                     (_%__kont203726203727%_
                      (lambda (_%g194151194197%_ _%g194152194198%_)
                        (_%lp194136%_
                         _%g194151194197%_
                         (cons (_%generate1194070%_ _%g194152194198%_)
                               _%r194139%_))))
                     (_%__kont203728203729%_
                      (lambda (_%g194156194173%_)
                        (_%generate*194071%_
                         (let ((__tmp203988
                                (cons (_%generate1194070%_ _%g194156194173%_)
                                      '())))
                           (declare (not safe))
                           (foldl__0 cons __tmp203988 _%r194139%_)))))
                     (_%__kont203730203731%_
                      (lambda ()
                        (_%generate*194071%_ (reverse! _%r194139%_)))))
                 (let ((_%g194142194184%_
                        (lambda ()
                          (let ((_%g194156194173%_ _%__stx203722203723%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g194156194173%_))
                                (_%__kont203728203729%_ _%g194156194173%_)
                                (_%__kont203730203731%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx203722203723%_))
                       (let ((_%e194147194213%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx203722203723%_))))
                         (let ((_%tl194149194218%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e194147194213%_)))
                               (_%hd194148194216%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e194147194213%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd194148194216%_))
                               (let ((_%e194150194221%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd194148194216%_))))
                                 (if (equal? _%e194150194221%_ '#f)
                                     (_%__kont203724203725%_
                                      _%tl194149194218%_)
                                     (_%__kont203726203727%_
                                      _%tl194149194218%_
                                      _%hd194148194216%_)))
                               (_%__kont203726203727%_
                                _%tl194149194218%_
                                _%hd194148194216%_))))
                       (let () (declare (not safe)) (_%g194142194184%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd194084194114%_
                                                 _%hd194081194106%_)
                                                (_%g194073194090%_
                                                 _%g194074194093%_))))
                                        (_%g194073194090%_
                                         _%g194074194093%_))))
                                (_%g194073194090%_ _%g194074194093%_))))
                        (_%g194073194090%_ _%g194074194093%_)))))
            (_%g194072194237%_ _%stx194068%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self193964%_ _%stx193965%_)
        (let* ((_%g193967193984%_
                (lambda (_%g193968193981%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193968193981%_))))
               (_%g193966194064%_
                (lambda (_%g193968193987%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193968193987%_))
                      (let ((_%e193971193989%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193968193987%_))))
                        (let ((_%hd193972193992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193971193989%_)))
                              (_%tl193973193994%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193971193989%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193973193994%_))
                              (let ((_%e193974193997%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193973193994%_))))
                                (let ((_%hd193975194000%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193974193997%_)))
                                      (_%tl193976194002%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193974193997%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193976194002%_))
                                      (let ((_%e193977194005%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193976194002%_))))
                                        (let ((_%hd193978194008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193977194005%_)))
                                              (_%tl193979194010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193977194005%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193979194010%_))
                                              ((lambda (_%g193969194013%_
                                                        _%g193970194014%_)
                                                 (let* ((_%eid194029%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g193970194014%_)))
                                                        (_%phi194031%_
                                                         (let ((__tmp203989
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp203989 '1)))
                (_%block194033%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self193964%_ 'state))
                  _%phi194031%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g194036194043%_
                                                           (lambda (_%g194037194040%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g194037194040%_))))
                  (_%g194035194061%_
                   (lambda (_%g194037194046%_)
                     ((lambda (_%g194038194048%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self193964%_ 'state))
                         _%phi194031%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g194038194048%_
                                     (cons _%g193969194013%_ '())))))
                      _%g194037194046%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g194035194061%_
                                                      _%eid194029%_))
                                                   (if _%block194033%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block194033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g193970194014%_))
                                             (cons _%eid194029%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g193970194014%_))
                           (cons _%eid194029%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd193978194008%_
                                               _%hd193975194000%_)
                                              (_%g193967193984%_
                                               _%g193968193987%_))))
                                      (_%g193967193984%_ _%g193968193987%_))))
                              (_%g193967193984%_ _%g193968193987%_))))
                      (_%g193967193984%_ _%g193968193987%_)))))
          (_%g193966194064%_ _%stx193965%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self193896%_ _%stx193897%_)
        (let* ((_%g193899193916%_
                (lambda (_%g193900193913%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193900193913%_))))
               (_%g193898193961%_
                (lambda (_%g193900193919%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193900193919%_))
                      (let ((_%e193903193921%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193900193919%_))))
                        (let ((_%hd193904193924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193903193921%_)))
                              (_%tl193905193926%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193903193921%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193905193926%_))
                              (let ((_%e193906193929%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193905193926%_))))
                                (let ((_%hd193907193932%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193906193929%_)))
                                      (_%tl193908193934%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193906193929%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193908193934%_))
                                      (let ((_%e193909193937%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193908193934%_))))
                                        (let ((_%hd193910193940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193909193937%_)))
                                              (_%tl193911193942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193909193937%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193911193942%_))
                                              ((lambda (_%g193901193945%_
                                                        _%g193902193946%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g193902193946%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g193901193945%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd193910193940%_
                                               _%hd193907193932%_)
                                              (_%g193899193916%_
                                               _%g193900193919%_))))
                                      (_%g193899193916%_ _%g193900193919%_))))
                              (_%g193899193916%_ _%g193900193919%_))))
                      (_%g193899193916%_ _%g193900193919%_)))))
          (_%g193898193961%_ _%stx193897%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self193893%_ _%stx193894%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self193893%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx193894%_)
        (gxc#generate-meta-define-values% _%self193893%_ _%stx193894%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self193890%_ _%stx193891%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self193890%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx193891%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp203991 (list)) (__tmp203990 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp203991
         '(src n open blocks)
         __tmp203990
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args193887%_
        (apply make-instance gxc#meta-state::t _%$args193887%_)))
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
      (lambda (_%self193873%_ _%ctx193874%_)
        (let ((_%self193877%_ _%self193873%_))
          (if (let ((__tmp203992
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self193877%_))))
                (declare (not safe))
                (##fx< '4 __tmp203992))
              (begin
                (let ((__tmp203993
                       (let ((__tmp203994
                              (##structure-ref
                               _%ctx193874%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp203994))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self193877%_
                   __tmp203993
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self193877%_ '1 '2 '#f '#f))
                (let ((__tmp203995
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self193877%_
                   __tmp203995
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self193877%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp203996
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self193877%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self193877%_
                       '4
                       __tmp203996))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp203998 (list)) (__tmp203997 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp203998
         '(ctx phi n code)
         __tmp203997
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args193748%_
        (apply make-instance gxc#meta-state-block::t _%$args193748%_)))
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
      (lambda (_%state193708%_ _%phi193709%_)
        (let* ((_%state193710193718%_ _%state193708%_)
               (_%E193712193721%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state193710193718%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K193713193730%_
                (lambda (_%open193724%_ _%n193725%_ _%src193726%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open193724%_ _%phi193709%_))
                      '#f
                      (let ((_%block-ref193728%_
                             (let ((__tmp203999 (number->string _%n193725%_)))
                               (declare (not safe))
                               (##string-append
                                _%src193726%_
                                '"~"
                                __tmp203999))))
                        (##structure-set!
                         _%state193708%_
                         (let () (declare (not safe)) (##fx+ _%n193725%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp204000
                               (let ((__tmp204001
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp204001
                                  _%phi193709%_
                                  _%n193725%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open193724%_ _%phi193709%_ __tmp204000))
                        _%block-ref193728%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state193710193718%_
                 'gxc#meta-state::t))
              (let* ((_%e193714193733%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state193710193718%_
                         '1
                         '#f
                         '#f)))
                     (_%src193736%_ _%e193714193733%_)
                     (_%e193715193738%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state193710193718%_
                         '2
                         '#f
                         '#f)))
                     (_%n193741%_ _%e193715193738%_)
                     (_%e193716193743%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state193710193718%_
                         '3
                         '#f
                         '#f)))
                     (_%open193746%_ _%e193716193743%_))
                (_%K193713193730%_ _%open193746%_ _%n193741%_ _%src193736%_))
              (_%E193712193721%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state193702%_ _%phi193703%_ _%stx193704%_)
        (let ((_%block193706%_
               (let ((__tmp204002
                      (##structure-ref
                       _%state193702%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp204002 _%phi193703%_))))
          (##structure-set!
           _%block193706%_
           (cons _%stx193704%_
                 (##structure-ref
                  _%block193706%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state193696%_)
        (##structure-set!
         _%state193696%_
         (let ((__tmp204005
                (lambda (_%_193698%_ _%block193699%_ _%r193700%_)
                  (cons _%block193699%_ _%r193700%_)))
               (__tmp204004
                (##structure-ref _%state193696%_ '4 gxc#meta-state::t '#f))
               (__tmp204003
                (##structure-ref _%state193696%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp204005 __tmp204004 __tmp204003))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state193696%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state193649%_)
        (gxc#meta-state-end-phi! _%state193649%_)
        (let ((__tmp204007
               (lambda (_%block193651%_ _%r193652%_)
                 (let* ((_%block193653193662%_ _%block193651%_)
                        (_%E193655193665%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block193653193662%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K193656193673%_
                         (lambda (_%code193668%_
                                  _%n193669%_
                                  _%phi193670%_
                                  _%ctx193671%_)
                           (if (null? _%code193668%_)
                               _%r193652%_
                               (cons (cons _%ctx193671%_
                                           (cons _%phi193670%_
                                                 (cons _%n193669%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code193668%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r193652%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block193653193662%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e193657193676%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block193653193662%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx193679%_ _%e193657193676%_)
                              (_%e193658193681%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block193653193662%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi193684%_ _%e193658193681%_)
                              (_%e193659193686%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block193653193662%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n193689%_ _%e193659193686%_)
                              (_%e193660193691%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block193653193662%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code193694%_ _%e193660193691%_))
                         (_%K193656193673%_
                          _%code193694%_
                          _%n193689%_
                          _%phi193684%_
                          _%ctx193679%_))
                       (_%E193655193665%_)))))
              (__tmp204006
               (##structure-ref _%state193649%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp204007 '() __tmp204006))))
    (define gxc#collect-expression-refs
      (lambda (_%stx193645%_)
        (let ((_%ht193647%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht193647%_ _%stx193645%_)
          _%ht193647%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self193588%_ _%stx193589%_)
        (let* ((_%g193591193604%_
                (lambda (_%g193592193601%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193592193601%_))))
               (_%g193590193642%_
                (lambda (_%g193592193607%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193592193607%_))
                      (let ((_%e193594193609%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193592193607%_))))
                        (let ((_%hd193595193612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193594193609%_)))
                              (_%tl193596193614%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193594193609%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193596193614%_))
                              (let ((_%e193597193617%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193596193614%_))))
                                (let ((_%hd193598193620%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193597193617%_)))
                                      (_%tl193599193622%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193597193617%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl193599193622%_))
                                      ((lambda (_%g193593193625%_)
                                         (let* ((_%bind193637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g193593193625%_)))
                                                (_%eid193639%_
                                                 (if _%bind193637%_
                                                     (##structure-ref
                                                      _%bind193637%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g193593193625%_))))
                                                (__tmp204008
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self193588%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp204008
                                            _%eid193639%_
                                            _%eid193639%_)))
                                       _%hd193598193620%_)
                                      (_%g193591193604%_ _%g193592193607%_))))
                              (_%g193591193604%_ _%g193592193607%_))))
                      (_%g193591193604%_ _%g193592193607%_)))))
          (_%g193590193642%_ _%stx193589%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self193515%_ _%stx193516%_)
        (let* ((_%g193518193535%_
                (lambda (_%g193519193532%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193519193532%_))))
               (_%g193517193585%_
                (lambda (_%g193519193538%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193519193538%_))
                      (let ((_%e193522193540%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193519193538%_))))
                        (let ((_%hd193523193543%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193522193540%_)))
                              (_%tl193524193545%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193522193540%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193524193545%_))
                              (let ((_%e193525193548%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193524193545%_))))
                                (let ((_%hd193526193551%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193525193548%_)))
                                      (_%tl193527193553%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193525193548%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193527193553%_))
                                      (let ((_%e193528193556%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193527193553%_))))
                                        (let ((_%hd193529193559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193528193556%_)))
                                              (_%tl193530193561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193528193556%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193530193561%_))
                                              ((lambda (_%g193520193564%_
                                                        _%g193521193565%_)
                                                 (let* ((_%bind193580%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g193521193565%_)))
                                                        (_%eid193582%_
                                                         (if _%bind193580%_
                                                             (##structure-ref
                                                              _%bind193580%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g193521193565%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp204009
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self193515%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp204009
                                                      _%eid193582%_
                                                      _%eid193582%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self193515%_
                                                      _%g193520193564%_))))
                                               _%hd193529193559%_
                                               _%hd193526193551%_)
                                              (_%g193518193535%_
                                               _%g193519193538%_))))
                                      (_%g193518193535%_ _%g193519193538%_))))
                              (_%g193518193535%_ _%g193519193538%_))))
                      (_%g193518193535%_ _%g193519193538%_)))))
          (_%g193517193585%_ _%stx193516%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self193472%_ _%stx193473%_)
        (let* ((_%g193475193485%_
                (lambda (_%g193476193482%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193476193482%_))))
               (_%g193474193512%_
                (lambda (_%g193476193488%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193476193488%_))
                      (let ((_%e193478193490%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193476193488%_))))
                        (let ((_%hd193479193493%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193478193490%_)))
                              (_%tl193480193495%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193478193490%_))))
                          ((lambda (_%g193477193498%_)
                             (let ((__tmp204010
                                    (lambda (_%g193507193509%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self193472%_
                                         _%g193507193509%_)))))
                               (declare (not safe))
                               (ormap__0 __tmp204010 _%g193477193498%_)))
                           _%tl193480193495%_)))
                      (_%g193475193485%_ _%g193476193488%_)))))
          (_%g193474193512%_ _%stx193473%_))))
    (define gxc#count-values-single%
      (lambda (_%self193469%_ _%stx193470%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self193337%_ _%stx193338%_)
        (let* ((_%__stx203752203753%_ _%stx193338%_)
               (_%g193341193370%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203752203753%_)))))
          (let ((_%__kont203754203755%_
                 (lambda (_%g193343193436%_ _%g193344193437%_)
                   (length (let ((__tmp204011
                                  (lambda (_%g193458193461%_ _%g193459193463%_)
                                    (cons _%g193458193461%_
                                          _%g193459193463%_))))
                             (declare (not safe))
                             (foldr__0 __tmp204011 '() _%g193343193436%_)))))
                (_%__kont203758203759%_ (lambda () '#f)))
            (let ((_%__match203797203798%_
                   (lambda (_%e193345193382%_
                            _%hd193346193385%_
                            _%tl193347193387%_
                            _%e193348193390%_
                            _%hd193349193393%_
                            _%tl193350193395%_
                            _%e193351193398%_
                            _%hd193352193401%_
                            _%tl193353193403%_
                            _%e193354193406%_
                            _%hd193355193409%_
                            _%tl193356193411%_
                            _%__splice203756203757%_
                            _%target193357193414%_
                            _%tl193359193416%_)
                     (letrec ((_%loop193360193419%_
                               (lambda (_%hd193358193422%_
                                        _%rand193364193424%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd193358193422%_))
                                     (let ((_%e193361193426%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd193358193422%_))))
                                       (let ((_%lp-tl193363193431%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e193361193426%_)))
                                             (_%lp-hd193362193429%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e193361193426%_))))
                                         (_%loop193360193419%_
                                          _%lp-tl193363193431%_
                                          (cons _%lp-hd193362193429%_
                                                _%rand193364193424%_))))
                                     (let ((_%rand193365193434%_
                                            (reverse _%rand193364193424%_)))
                                       (let ((_%g193343193436%_
                                              _%rand193365193434%_)
                                             (_%g193344193437%_
                                              _%hd193355193409%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g193344193437%_
                                                'values))
                                             (_%__kont203754203755%_
                                              _%g193343193436%_
                                              _%g193344193437%_)
                                             (_%__kont203758203759%_))))))))
                       (_%loop193360193419%_ _%target193357193414%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx203752203753%_))
                  (let ((_%e193345193382%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx203752203753%_))))
                    (let ((_%tl193347193387%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193345193382%_)))
                          (_%hd193346193385%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193345193382%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193347193387%_))
                          (let ((_%e193348193390%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193347193387%_))))
                            (let ((_%tl193350193395%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193348193390%_)))
                                  (_%hd193349193393%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193348193390%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193349193393%_))
                                  (let ((_%e193351193398%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193349193393%_))))
                                    (let ((_%tl193353193403%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193351193398%_)))
                                          (_%hd193352193401%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193351193398%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193352193401%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd193352193401%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193353193403%_))
                                                  (let ((_%e193354193406%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193353193403%_))))
                                                    (let ((_%tl193356193411%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193354193406%_)))
                                                          (_%hd193355193409%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193354193406%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193356193411%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl193350193395%_))
                      (let ((_%__splice203756203757%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl193350193395%_
                                '0))))
                        (let ((_%tl193359193416%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203756203757%_ '1)))
                              (_%target193357193414%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203756203757%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193359193416%_))
                              (_%__match203797203798%_
                               _%e193345193382%_
                               _%hd193346193385%_
                               _%tl193347193387%_
                               _%e193348193390%_
                               _%hd193349193393%_
                               _%tl193350193395%_
                               _%e193351193398%_
                               _%hd193352193401%_
                               _%tl193353193403%_
                               _%e193354193406%_
                               _%hd193355193409%_
                               _%tl193356193411%_
                               _%__splice203756203757%_
                               _%target193357193414%_
                               _%tl193359193416%_)
                              (_%__kont203758203759%_))))
                      (_%__kont203758203759%_))
                  (_%__kont203758203759%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont203758203759%_))
                                              (_%__kont203758203759%_))
                                          (_%__kont203758203759%_))))
                                  (_%__kont203758203759%_))))
                          (_%__kont203758203759%_))))
                  (_%__kont203758203759%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self193242%_ _%stx193243%_)
        (let* ((_%g193245193266%_
                (lambda (_%g193246193263%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193246193263%_))))
               (_%g193244193334%_
                (lambda (_%g193246193269%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193246193269%_))
                      (let ((_%e193250193271%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193246193269%_))))
                        (let ((_%hd193251193274%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193250193271%_)))
                              (_%tl193252193276%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193250193271%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193252193276%_))
                              (let ((_%e193253193279%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193252193276%_))))
                                (let ((_%hd193254193282%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193253193279%_)))
                                      (_%tl193255193284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193253193279%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193255193284%_))
                                      (let ((_%e193256193287%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193255193284%_))))
                                        (let ((_%hd193257193290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193256193287%_)))
                                              (_%tl193258193292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193256193287%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193258193292%_))
                                              (let ((_%e193259193295%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193258193292%_))))
                                                (let ((_%hd193260193298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193259193295%_)))
                                                      (_%tl193261193300%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193259193295%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193261193300%_))
                                                      ((lambda (_%g193247193303%_
                                                                _%g193248193304%_
                                                                _%g193249193305%_)
                                                         (let ((_%c1193322193324%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self193242%_
                           _%g193248193304%_))))
                   (if _%c1193322193324%_
                       (let* ((_%c1193326%_ _%c1193322193324%_)
                              (_%c2193327193329%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self193242%_
                                  _%g193247193303%_))))
                         (if _%c2193327193329%_
                             (let ((_%c2193331%_ _%c2193327193329%_))
                               (if (fx= _%c1193326%_ _%c2193331%_)
                                   _%c1193326%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd193260193298%_
               _%hd193257193290%_
               _%hd193254193282%_)
              (_%g193245193266%_ _%g193246193269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g193245193266%_
                                               _%g193246193269%_))))
                                      (_%g193245193266%_ _%g193246193269%_))))
                              (_%g193245193266%_ _%g193246193269%_))))
                      (_%g193245193266%_ _%g193246193269%_)))))
          (_%g193244193334%_ _%stx193243%_))))))
