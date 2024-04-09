(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712643208)
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
        (letrec ((_%hash-e143499%_
                  (lambda (_%id143501%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id143501%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e143499%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp144886 (list gxc#::void::t))
            (__tmp144885 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp144886
         '()
         __tmp144885
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args143495%_
        (apply make-instance gxc#::collect-bindings::t _%$args143495%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp144887
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
        (__make-promise __tmp144887)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx143487%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self143490%_
                (let ((__obj144861
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj144861))
               (__tmp144888
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143490%_ _%stx143487%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144888
           gxc#current-compile-method
           _%self143490%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp144890 (list gxc#::void::t))
            (__tmp144889 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp144890
         '(modules)
         __tmp144889
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args143484%_
        (apply make-instance gxc#::lift-modules::t _%$args143484%_)))
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
      (let ((__tmp144891
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
        (__make-promise __tmp144891)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords143458%_ _%modules143455143459%_ _%stx143461%_)
        (let ((_%modules143464%_
               (if (eq? _%modules143455143459%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules143455143459%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self143466%_
                  (let ((__obj144863
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144863
                       _%modules143464%_
                       '1
                       '#f
                       '#f))
                    __obj144863))
                 (__tmp144892
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143466%_ _%stx143461%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144892
             gxc#current-compile-method
             _%self143466%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords143473%_ . _%args143474%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords143473%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143473%_
                  'modules:
                  absent-value))
               _%args143474%_)))
    (define gxc#apply-lift-modules
      (lambda _%args143456143480%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args143456143480%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp144894 (list)) (__tmp144893 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp144894
         '()
         __tmp144893
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args143451%_
        (apply make-instance gxc#::find-runtime-code::t _%$args143451%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp144895
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
        (__make-promise __tmp144895)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx143443%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self143446%_
                (let ((__obj144865
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj144865))
               (__tmp144896
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143446%_ _%stx143443%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144896
           gxc#current-compile-method
           _%self143446%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp144898 (list gxc#::false::t))
            (__tmp144897 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp144898
         '()
         __tmp144897
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args143440%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args143440%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp144899
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
        (__make-promise __tmp144899)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx143432%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self143435%_
                (let ((__obj144867
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj144867))
               (__tmp144900
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143435%_ _%stx143432%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144900
           gxc#current-compile-method
           _%self143435%_))))
    (define gxc#::count-values::t
      (let ((__tmp144902 (list gxc#::false-expression::t))
            (__tmp144901 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp144902
         '()
         __tmp144901
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args143429%_
        (apply make-instance gxc#::count-values::t _%$args143429%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp144903
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
        (__make-promise __tmp144903)))
    (define gxc#apply-count-values
      (lambda (_%stx143421%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self143424%_
                (let ((__obj144869
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj144869))
               (__tmp144904
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143424%_ _%stx143421%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144904
           gxc#current-compile-method
           _%self143424%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp144905 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp144905
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args143418%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args143418%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp144906
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
        (__make-promise __tmp144906)))
    (define gxc#::generate-loader::t
      (let ((__tmp144908 (list gxc#::generate-runtime-empty::t))
            (__tmp144907 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp144908
         '()
         __tmp144907
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args143414%_
        (apply make-instance gxc#::generate-loader::t _%$args143414%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp144909
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
        (__make-promise __tmp144909)))
    (define gxc#apply-generate-loader
      (lambda (_%stx143406%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self143409%_
                (let ((__obj144872
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj144872))
               (__tmp144910
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143409%_ _%stx143406%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144910
           gxc#current-compile-method
           _%self143409%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp144911 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp144911
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args143403%_
        (apply make-instance gxc#::generate-runtime::t _%$args143403%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp144912
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
        (__make-promise __tmp144912)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx143395%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self143398%_
                (let ((__obj144874
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj144874))
               (__tmp144913
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143398%_ _%stx143395%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144913
           gxc#current-compile-method
           _%self143398%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp144915 (list gxc#::generate-runtime::t))
            (__tmp144914 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp144915
         '()
         __tmp144914
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args143392%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args143392%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp144916
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
        (__make-promise __tmp144916)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx143384%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self143387%_
                (let ((__obj144876
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj144876))
               (__tmp144917
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143387%_ _%stx143384%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144917
           gxc#current-compile-method
           _%self143387%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp144918 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp144918
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args143381%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args143381%_)))
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
      (let ((__tmp144919
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
        (__make-promise __tmp144919)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords143355%_ _%table143352143356%_ _%stx143358%_)
        (let ((_%table143361%_
               (if (eq? _%table143352143356%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table143352143356%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self143363%_
                  (let ((__obj144878
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144878
                       _%table143361%_
                       '1
                       '#f
                       '#f))
                    __obj144878))
                 (__tmp144920
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143363%_ _%stx143358%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144920
             gxc#current-compile-method
             _%self143363%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords143370%_ . _%args143371%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords143370%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143370%_
                  'table:
                  absent-value))
               _%args143371%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args143353143377%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args143353143377%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp144922 (list gxc#::void-expression::t))
            (__tmp144921 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp144922
         '(state)
         __tmp144921
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args143348%_
        (apply make-instance gxc#::generate-meta::t _%$args143348%_)))
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
      (let ((__tmp144923
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
        (__make-promise __tmp144923)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords143322%_ _%state143319143323%_ _%stx143325%_)
        (let ((_%state143328%_
               (if (eq? _%state143319143323%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143319143323%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self143330%_
                  (let ((__obj144880
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144880
                       _%state143328%_
                       '1
                       '#f
                       '#f))
                    __obj144880))
                 (__tmp144924
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143330%_ _%stx143325%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144924
             gxc#current-compile-method
             _%self143330%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords143337%_ . _%args143338%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords143337%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143337%_
                  'state:
                  absent-value))
               _%args143338%_)))
    (define gxc#apply-generate-meta
      (lambda _%args143320143344%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args143320143344%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp144926 (list)) (__tmp144925 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp144926
         '(state)
         __tmp144925
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args143315%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args143315%_)))
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
      (let ((__tmp144927
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
        (__make-promise __tmp144927)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords143289%_ _%state143286143290%_ _%stx143292%_)
        (let ((_%state143295%_
               (if (eq? _%state143286143290%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143286143290%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self143297%_
                  (let ((__obj144882
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144882
                       _%state143295%_
                       '1
                       '#f
                       '#f))
                    __obj144882))
                 (__tmp144928
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143297%_ _%stx143292%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144928
             gxc#current-compile-method
             _%self143297%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords143304%_ . _%args143305%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords143304%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143304%_
                  'state:
                  absent-value))
               _%args143305%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args143287143311%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args143287143311%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self143215%_ _%stx143216%_)
        (let* ((_%g143218143235%_
                (lambda (_%g143219143232%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143219143232%_))))
               (_%g143217143282%_
                (lambda (_%g143219143238%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143219143238%_))
                      (let ((_%e143222143240%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143219143238%_))))
                        (let ((_%hd143223143243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143222143240%_)))
                              (_%tl143224143245%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143222143240%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143224143245%_))
                              (let ((_%e143225143248%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143224143245%_))))
                                (let ((_%hd143226143251%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143225143248%_)))
                                      (_%tl143227143253%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143225143248%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143227143253%_))
                                      (let ((_%e143228143256%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143227143253%_))))
                                        (let ((_%hd143229143259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143228143256%_)))
                                              (_%tl143230143261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143228143256%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143230143261%_))
                                              ((lambda (_%L143264%_
                                                        _%L143265%_)
                                                 (let ((__tmp144929
                                                        (lambda (_%bind143280%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind143280%_))
                      (gxc#add-module-binding! _%bind143280%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp144929
                                                    _%L143265%_)))
                                               _%hd143229143259%_
                                               _%hd143226143251%_)
                                              (_%g143218143235%_
                                               _%g143219143238%_))))
                                      (_%g143218143235%_ _%g143219143238%_))))
                              (_%g143218143235%_ _%g143219143238%_))))
                      (_%g143218143235%_ _%g143219143238%_)))))
          (_%g143217143282%_ _%stx143216%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self143147%_ _%stx143148%_)
        (let* ((_%g143150143167%_
                (lambda (_%g143151143164%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143151143164%_))))
               (_%g143149143212%_
                (lambda (_%g143151143170%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143151143170%_))
                      (let ((_%e143154143172%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143151143170%_))))
                        (let ((_%hd143155143175%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143154143172%_)))
                              (_%tl143156143177%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143154143172%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143156143177%_))
                              (let ((_%e143157143180%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143156143177%_))))
                                (let ((_%hd143158143183%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143157143180%_)))
                                      (_%tl143159143185%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143157143180%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143159143185%_))
                                      (let ((_%e143160143188%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143159143185%_))))
                                        (let ((_%hd143161143191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143160143188%_)))
                                              (_%tl143162143193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143160143188%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143162143193%_))
                                              ((lambda (_%L143196%_
                                                        _%L143197%_)
                                                 (gxc#add-module-binding!
                                                  _%L143197%_
                                                  '#t))
                                               _%hd143161143191%_
                                               _%hd143158143183%_)
                                              (_%g143150143167%_
                                               _%g143151143170%_))))
                                      (_%g143150143167%_ _%g143151143170%_))))
                              (_%g143150143167%_ _%g143151143170%_))))
                      (_%g143150143167%_ _%g143151143170%_)))))
          (_%g143149143212%_ _%stx143148%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self143089%_ _%stx143090%_)
        (let* ((_%g143092143106%_
                (lambda (_%g143093143103%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143093143103%_))))
               (_%g143091143144%_
                (lambda (_%g143093143109%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143093143109%_))
                      (let ((_%e143096143111%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143093143109%_))))
                        (let ((_%hd143097143114%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143096143111%_)))
                              (_%tl143098143116%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143096143111%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143098143116%_))
                              (let ((_%e143099143119%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143098143116%_))))
                                (let ((_%hd143100143122%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143099143119%_)))
                                      (_%tl143101143124%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143099143119%_))))
                                  ((lambda (_%L143127%_ _%L143128%_)
                                     (let ((_%ctx143141%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L143128%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self143089%_
                                           'modules))
                                        (cons _%ctx143141%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self143089%_
                                                        'modules)))))
                                       (let ((__tmp144930
                                              (lambda ()
                                                (let ((__tmp144931
                                                       (##structure-ref
                                                        _%ctx143141%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143089%_
                                                   __tmp144931)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp144930
                                          gx#current-expander-context
                                          _%ctx143141%_))))
                                   _%tl143101143124%_
                                   _%hd143100143122%_)))
                              (_%g143092143106%_ _%g143093143109%_))))
                      (_%g143092143106%_ _%g143093143109%_)))))
          (_%g143091143144%_ _%stx143090%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls143042143044%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls143042143044%_
              (let ((_%decls143047%_ _%decls143042143044%_))
                (let _%lp143049%_ ((_%rest143051%_ _%decls143047%_))
                  (let* ((_%rest143052143060%_ _%rest143051%_)
                         (_%else143054143068%_ (lambda () '#f))
                         (_%K143056143077%_
                          (lambda (_%decls143071%_ _%decl143072%_)
                            (if (equal? _%decl143072%_ '(not safe))
                                '#t
                                (if (equal? _%decl143072%_ '(safe))
                                    '#f
                                    (_%lp143049%_ _%decls143071%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest143052143060%_))
                        (let ((_%hd143057143080%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest143052143060%_)))
                              (_%tl143058143082%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest143052143060%_))))
                          (let* ((_%decl143085%_ _%hd143057143080%_)
                                 (_%decls143087%_ _%tl143058143082%_))
                            (_%K143056143077%_
                             _%decls143087%_
                             _%decl143085%_)))
                        (_%else143054143068%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id143036%_ _%syntax?143037%_)
        (let ((_%eid143039%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id143036%_))
                '1
                gx#binding::t
                '#f))
              (_%ht143040%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid143039%_))
              '#!void
              (let ((__tmp144932
                     (let ((__tmp144933
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid143039%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp144933 _%syntax?143037%_))))
                (declare (not safe))
                (hash-put! _%ht143040%_ _%eid143039%_ __tmp144932))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id143034%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id143034%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key142989%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key142989%_))
            _%key142989%_
            (if (uninterned-symbol? _%key142989%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key142989%_))
                (let* ((_%key142993143000%_ _%key142989%_)
                       (_%E142995143004%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key142993143000%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K142996143022%_
                        (lambda (_%mark143007%_ _%eid143008%_)
                          (let ((_%$e143010%_
                                 (##structure-ref
                                  _%mark143007%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e143010%_
                                ((lambda (_%ht143013%_)
                                   (let ((_%$e143015%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht143013%_
                                             _%eid143008%_))))
                                     (if _%$e143015%_
                                         ((lambda (_%id143018%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id143018%_))
                                                _%id143018%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id143018%_))))
                                          _%$e143015%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid143008%_))))
                                 _%$e143010%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid143008%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%key142993143000%_))
                      (let ((_%hd142997143025%_
                             (let ()
                               (declare (not safe))
                               (##car _%key142993143000%_)))
                            (_%tl142998143027%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key142993143000%_))))
                        (let* ((_%eid143030%_ _%hd142997143025%_)
                               (_%mark143032%_ _%tl142998143027%_))
                          (_%K142996143022%_ _%mark143032%_ _%eid143030%_)))
                      (_%E142995143004%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self142986%_ _%stx142987%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self142833%_ _%stx142834%_)
        (letrec ((_%simplify142836%_
                  (lambda (_%body142884%_)
                    (let _%lp142886%_ ((_%rest142888%_ _%body142884%_)
                                       (_%r142889%_ '()))
                      (let* ((_%rest142890142898%_ _%rest142888%_)
                             (_%else142892142906%_
                              (lambda () (reverse _%r142889%_)))
                             (_%K142894142974%_
                              (lambda (_%rest142909%_ _%hd142910%_)
                                (let* ((_%hd142911142927%_ _%hd142910%_)
                                       (_%else142915142935%_
                                        (lambda ()
                                          (_%lp142886%_
                                           _%rest142909%_
                                           (cons _%hd142910%_ _%r142889%_)))))
                                  (let ((_%K142923142964%_
                                         (lambda (_%exprs142962%_)
                                           (_%lp142886%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest142909%_
                                               _%exprs142962%_))
                                            _%r142889%_)))
                                        (_%K142918142948%_
                                         (lambda ()
                                           (if (null? _%rest142909%_)
                                               (_%lp142886%_
                                                _%rest142909%_
                                                (cons _%hd142910%_
                                                      _%r142889%_))
                                               (_%lp142886%_
                                                _%rest142909%_
                                                _%r142889%_))))
                                        (_%K142917142940%_
                                         (lambda ()
                                           (if (null? _%rest142909%_)
                                               (_%lp142886%_
                                                _%rest142909%_
                                                (cons _%hd142910%_
                                                      _%r142889%_))
                                               (_%lp142886%_
                                                _%rest142909%_
                                                _%r142889%_)))))
                                    (let ((_%try-match142914142943%_
                                           (lambda ()
                                             (if (symbol? _%hd142911142927%_)
                                                 (_%K142917142940%_)
                                                 (_%else142915142935%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd142911142927%_))
                                          (let ((_%tl142925142969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd142911142927%_)))
                                                (_%hd142924142967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd142911142927%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd142924142967%_
                                                         'begin))
                                                (let ((_%exprs142972%_
                                                       _%tl142925142969%_))
                                                  (_%K142923142964%_
                                                   _%exprs142972%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd142924142967%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl142925142969%_))
                                                        (let ((_%tl142922142956%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl142925142969%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl142922142956%_))
                      (_%K142918142948%_)
                      (_%try-match142914142943%_)))
                (_%try-match142914142943%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match142914142943%_))))
                                          (_%try-match142914142943%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142890142898%_))
                            (let ((_%hd142895142977%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142890142898%_)))
                                  (_%tl142896142979%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142890142898%_))))
                              (let* ((_%hd142982%_ _%hd142895142977%_)
                                     (_%rest142984%_ _%tl142896142979%_))
                                (_%K142894142974%_
                                 _%rest142984%_
                                 _%hd142982%_)))
                            (_%else142892142906%_)))))))
          (let* ((_%g142838142848%_
                  (lambda (_%g142839142845%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142839142845%_))))
                 (_%g142837142881%_
                  (lambda (_%g142839142851%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142839142851%_))
                        (let ((_%e142841142853%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142839142851%_))))
                          (let ((_%hd142842142856%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142841142853%_)))
                                (_%tl142843142858%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142841142853%_))))
                            ((lambda (_%L142861%_)
                               (let* ((_%body142876%_
                                       (map (lambda (_%g142871142873%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self142833%_
                                                 _%g142871142873%_)))
                                            _%L142861%_))
                                      (_%body142878%_
                                       (_%simplify142836%_ _%body142876%_)))
                                 (if (let ((__tmp144934
                                            (length _%body142878%_)))
                                       (declare (not safe))
                                       (##fx= __tmp144934 '1))
                                     (car _%body142878%_)
                                     (cons 'begin _%body142878%_))))
                             _%tl142843142858%_)))
                        (_%g142838142848%_ _%g142839142851%_)))))
            (_%g142837142881%_ _%stx142834%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self142794%_ _%stx142795%_)
        (let* ((_%g142797142807%_
                (lambda (_%g142798142804%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142798142804%_))))
               (_%g142796142830%_
                (lambda (_%g142798142810%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142798142810%_))
                      (let ((_%e142800142812%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142798142810%_))))
                        (let ((_%hd142801142815%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142800142812%_)))
                              (_%tl142802142817%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142800142812%_))))
                          ((lambda (_%L142820%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L142820%_))))
                           _%tl142802142817%_)))
                      (_%g142797142807%_ _%g142798142810%_)))))
          (_%g142796142830%_ _%stx142795%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self142558%_ _%stx142559%_)
        (let* ((_%__stx143524143525%_ _%stx142559%_)
               (_%g142563142615%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx143524143525%_)))))
          (let ((_%__kont143526143527%_
                 (lambda (_%L142776%_ _%L142777%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self142558%_ _%L142776%_))))
                (_%__kont143528143529%_
                 (lambda (_%L142724%_ _%L142725%_ _%L142726%_)
                   (if (let ((__tmp144935
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L142726%_))))
                         (declare (not safe))
                         (##memq __tmp144935 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self142558%_ _%L142724%_)))))
                (_%__kont143532143533%_
                 (lambda (_%L142644%_ _%L142645%_)
                   (let ((_%decls142660%_ (map gx#syntax->datum _%L142645%_)))
                     (let ((__tmp144938
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls142660%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self142558%_
                                                   _%L142644%_))
                                                '())))))
                           (__tmp144936
                            (let ((__tmp144937
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp144937 _%decls142660%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp144938
                        gxc#current-compile-decls
                        __tmp144936))))))
            (let* ((_%__match143579143580%_
                    (lambda (_%e142579142668%_
                             _%hd142580142671%_
                             _%tl142581142673%_
                             _%e142582142676%_
                             _%hd142583142679%_
                             _%tl142584142681%_
                             _%e142585142684%_
                             _%hd142586142687%_
                             _%tl142587142689%_
                             _%__splice143530143531%_
                             _%target142588142692%_
                             _%tl142590142694%_)
                      (letrec ((_%loop142591142697%_
                                (lambda (_%hd142589142700%_
                                         _%param142595142702%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142589142700%_))
                                      (let ((_%e142592142705%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142589142700%_))))
                                        (let ((_%lp-tl142594142710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142592142705%_)))
                                              (_%lp-hd142593142708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142592142705%_))))
                                          (_%loop142591142697%_
                                           _%lp-tl142594142710%_
                                           (cons _%lp-hd142593142708%_
                                                 _%param142595142702%_))))
                                      (let ((_%param142596142713%_
                                             (reverse _%param142595142702%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142584142681%_))
                                            (let ((_%e142597142716%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142584142681%_))))
                                              (let ((_%tl142599142721%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142597142716%_)))
                                                    (_%hd142598142719%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142597142716%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142599142721%_))
                                                    (let ((_%L142724%_
                                                           _%hd142598142719%_)
                                                          (_%L142725%_
                                                           _%param142596142713%_)
                                                          (_%L142726%_
                                                           _%hd142586142687%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L142726%_))
                       (not (let ((__tmp144939
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L142726%_))))
                              (declare (not safe))
                              (##memq __tmp144939 gxc#gambit-annotations))))
                  (_%__kont143528143529%_ _%L142724%_ _%L142725%_ _%L142726%_)
                  (_%__kont143532143533%_
                   _%hd142598142719%_
                   _%hd142583142679%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g142563142615%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g142563142615%_))))))))
                        (_%loop142591142697%_ _%target142588142692%_ '()))))
                   (_%__match143553143554%_
                    (lambda (_%e142567142752%_
                             _%hd142568142755%_
                             _%tl142569142757%_
                             _%e142570142760%_
                             _%hd142571142763%_
                             _%tl142572142765%_
                             _%e142573142768%_
                             _%hd142574142771%_
                             _%tl142575142773%_)
                      (let ((_%L142776%_ _%hd142574142771%_)
                            (_%L142777%_ _%hd142571142763%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L142777%_))
                            (_%__kont143526143527%_ _%L142776%_ _%L142777%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd142571142763%_))
                                (let ((_%e142585142684%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd142571142763%_))))
                                  (let ((_%tl142587142689%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142585142684%_)))
                                        (_%hd142586142687%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142585142684%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl142587142689%_))
                                        (let ((_%__splice143530143531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl142587142689%_
                                                  '0))))
                                          (let ((_%tl142590142694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143530143531%_
                                                    '1)))
                                                (_%target142588142692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143530143531%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142590142694%_))
                                                (_%__match143579143580%_
                                                 _%e142567142752%_
                                                 _%hd142568142755%_
                                                 _%tl142569142757%_
                                                 _%e142570142760%_
                                                 _%hd142571142763%_
                                                 _%tl142572142765%_
                                                 _%e142585142684%_
                                                 _%hd142586142687%_
                                                 _%tl142587142689%_
                                                 _%__splice143530143531%_
                                                 _%target142588142692%_
                                                 _%tl142590142694%_)
                                                (_%__kont143532143533%_
                                                 _%hd142574142771%_
                                                 _%hd142571142763%_))))
                                        (_%__kont143532143533%_
                                         _%hd142574142771%_
                                         _%hd142571142763%_))))
                                (_%__kont143532143533%_
                                 _%hd142574142771%_
                                 _%hd142571142763%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx143524143525%_))
                  (let ((_%e142567142752%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx143524143525%_))))
                    (let ((_%tl142569142757%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142567142752%_)))
                          (_%hd142568142755%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142567142752%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142569142757%_))
                          (let ((_%e142570142760%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142569142757%_))))
                            (let ((_%tl142572142765%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142570142760%_)))
                                  (_%hd142571142763%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142570142760%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl142572142765%_))
                                  (let ((_%e142573142768%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl142572142765%_))))
                                    (let ((_%tl142575142773%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142573142768%_)))
                                          (_%hd142574142771%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142573142768%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142575142773%_))
                                          (_%__match143553143554%_
                                           _%e142567142752%_
                                           _%hd142568142755%_
                                           _%tl142569142757%_
                                           _%e142570142760%_
                                           _%hd142571142763%_
                                           _%tl142572142765%_
                                           _%e142573142768%_
                                           _%hd142574142771%_
                                           _%tl142575142773%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142571142763%_))
                                              (let ((_%e142585142684%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142571142763%_))))
                                                (let ((_%tl142587142689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142585142684%_)))
                                                      (_%hd142586142687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142585142684%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl142587142689%_))
                                                      (let ((_%__splice143530143531%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl142587142689%_ '0))))
                (let ((_%tl142590142694%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143530143531%_ '1)))
                      (_%target142588142692%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143530143531%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142590142694%_))
                      (_%__match143579143580%_
                       _%e142567142752%_
                       _%hd142568142755%_
                       _%tl142569142757%_
                       _%e142570142760%_
                       _%hd142571142763%_
                       _%tl142572142765%_
                       _%e142585142684%_
                       _%hd142586142687%_
                       _%tl142587142689%_
                       _%__splice143530143531%_
                       _%target142588142692%_
                       _%tl142590142694%_)
                      (let () (declare (not safe)) (_%g142563142615%_)))))
              (let () (declare (not safe)) (_%g142563142615%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g142563142615%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142571142763%_))
                                      (let ((_%e142585142684%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142571142763%_))))
                                        (let ((_%tl142587142689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142585142684%_)))
                                              (_%hd142586142687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142585142684%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl142587142689%_))
                                              (let ((_%__splice143530143531%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl142587142689%_
                                                        '0))))
                                                (let ((_%tl142590142694%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143530143531%_
                                                          '1)))
                                                      (_%target142588142692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143530143531%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142590142694%_))
                                                      (_%__match143579143580%_
                                                       _%e142567142752%_
                                                       _%hd142568142755%_
                                                       _%tl142569142757%_
                                                       _%e142570142760%_
                                                       _%hd142571142763%_
                                                       _%tl142572142765%_
                                                       _%e142585142684%_
                                                       _%hd142586142687%_
                                                       _%tl142587142689%_
                                                       _%__splice143530143531%_
                                                       _%target142588142692%_
                                                       _%tl142590142694%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g142563142615%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142563142615%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142563142615%_))))))
                          (let () (declare (not safe)) (_%g142563142615%_)))))
                  (let () (declare (not safe)) (_%g142563142615%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self142517%_ _%stx142518%_)
        (let* ((_%g142520142530%_
                (lambda (_%g142521142527%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142521142527%_))))
               (_%g142519142555%_
                (lambda (_%g142521142533%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142521142533%_))
                      (let ((_%e142523142535%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142521142533%_))))
                        (let ((_%hd142524142538%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142523142535%_)))
                              (_%tl142525142540%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142523142535%_))))
                          ((lambda (_%L142543%_)
                             (let ((_%decls142553%_
                                    (map gx#syntax->datum _%L142543%_)))
                               (let ((__tmp144940
                                      (let ((__tmp144941
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp144941
                                         _%decls142553%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp144940))
                               (cons 'declare _%decls142553%_)))
                           _%tl142525142540%_)))
                      (_%g142520142530%_ _%g142521142533%_)))))
          (_%g142519142555%_ _%stx142518%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self142263%_ _%stx142264%_)
        (let* ((_%g142266142283%_
                (lambda (_%g142267142280%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142267142280%_))))
               (_%g142265142514%_
                (lambda (_%g142267142286%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142267142286%_))
                      (let ((_%e142270142288%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142267142286%_))))
                        (let ((_%hd142271142291%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142270142288%_)))
                              (_%tl142272142293%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142270142288%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142272142293%_))
                              (let ((_%e142273142296%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142272142293%_))))
                                (let ((_%hd142274142299%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142273142296%_)))
                                      (_%tl142275142301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142273142296%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142275142301%_))
                                      (let ((_%e142276142304%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142275142301%_))))
                                        (let ((_%hd142277142307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142276142304%_)))
                                              (_%tl142278142309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142276142304%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142278142309%_))
                                              ((lambda (_%L142312%_
                                                        _%L142313%_)
                                                 (let* ((_%__stx143632143633%_
                                                         _%L142313%_)
                                                        (_%g142330142344%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx143632143633%_)))))
                                                   (let ((_%__kont143634143635%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self142263%_
                                                               _%L142312%_))))
                                                         (_%__kont143636143637%_
                                                          (lambda (_%L142476%_)
                                                            (let ((_%eid142485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L142476%_))))
                      (let ((_%lambda-expr142486142488%_
                             (gxc#apply-find-lambda-expression _%L142312%_)))
                        (if _%lambda-expr142486142488%_
                            (let* ((_%lambda-expr142491%_
                                    _%lambda-expr142486142488%_)
                                   (__tmp144942
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp144942
                               _%lambda-expr142491%_
                               _%eid142485%_))
                            '#f))
                      (cons 'define
                            (cons _%eid142485%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self142263%_
                                           _%L142312%_))
                                        '()))))))
                 (_%__kont143638143639%_
                  (lambda ()
                    (let* ((_%tmp142351%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body142460%_
                            (let _%lp142353%_ ((_%rest142355%_ _%L142313%_)
                                               (_%k142356%_ '0)
                                               (_%r142357%_ '()))
                              (let* ((_%__stx143602143603%_ _%rest142355%_)
                                     (_%g142362142379%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx143602143603%_)))))
                                (let ((_%__kont143604143605%_
                                       (lambda (_%L142447%_)
                                         (_%lp142353%_
                                          _%L142447%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k142356%_ '1))
                                          _%r142357%_)))
                                      (_%__kont143606143607%_
                                       (lambda (_%L142420%_ _%L142421%_)
                                         (_%lp142353%_
                                          _%L142420%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k142356%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L142421%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp142351%_
                           _%k142356%_
                           _%L142420%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r142357%_))))
                                      (_%__kont143608143609%_
                                       (lambda (_%L142391%_)
                                         (let ((__tmp144943
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L142391%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp142351%_
                                 _%k142356%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp144943
                                            _%r142357%_))))
                                      (_%__kont143610143611%_
                                       (lambda () (reverse _%r142357%_))))
                                  (let ((_%g142360142407%_
                                         (lambda ()
                                           (let ((_%L142391%_
                                                  _%__stx143602143603%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L142391%_))
                                                 (_%__kont143608143609%_
                                                  _%L142391%_)
                                                 (_%__kont143610143611%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx143602143603%_))
                                        (let ((_%e142365142436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx143602143603%_))))
                                          (let ((_%tl142367142441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142365142436%_)))
                                                (_%hd142366142439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142365142436%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd142366142439%_))
                                                (let ((_%e142368142444%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142366142439%_))))
                                                  (if (equal? _%e142368142444%_
                                                              '#f)
                                                      (_%__kont143604143605%_
                                                       _%tl142367142441%_)
                                                      (_%__kont143606143607%_
                                                       _%tl142367142441%_
                                                       _%hd142366142439%_)))
                                                (_%__kont143606143607%_
                                                 _%tl142367142441%_
                                                 _%hd142366142439%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g142360142407%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp142351%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142263%_
                                                       _%L142312%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp142351%_
                                         _%L142313%_
                                         _%L142312%_)
                                        _%body142460%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx143632143633%_))
                                                         (let ((_%e142332142498%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx143632143633%_))))
                   (let ((_%tl142334142503%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e142332142498%_)))
                         (_%hd142333142501%_
                          (let ()
                            (declare (not safe))
                            (##car _%e142332142498%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd142333142501%_))
                         (let ((_%e142335142506%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd142333142501%_))))
                           (if (equal? _%e142335142506%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142334142503%_))
                                   (_%__kont143634143635%_)
                                   (_%__kont143638143639%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142334142503%_))
                                   (_%__kont143636143637%_ _%hd142333142501%_)
                                   (_%__kont143638143639%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142334142503%_))
                             (_%__kont143636143637%_ _%hd142333142501%_)
                             (_%__kont143638143639%_)))))
                 (_%__kont143638143639%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142277142307%_
                                               _%hd142274142299%_)
                                              (_%g142266142283%_
                                               _%g142267142286%_))))
                                      (_%g142266142283%_ _%g142267142286%_))))
                              (_%g142266142283%_ _%g142267142286%_))))
                      (_%g142266142283%_ _%g142267142286%_)))))
          (_%g142265142514%_ _%stx142264%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals142238%_ _%hd142239%_ _%expr142240%_)
        (let ((_%$e142242%_ (gxc#apply-count-values _%expr142240%_)))
          (if _%$e142242%_
              ((lambda (_%count142245%_)
                 (let ((_%len142247%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142239%_)))
                       (_%cmp142248%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142239%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len142247%_ '0))
                           (_%cmp142248%_ _%count142245%_ _%len142247%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr142240%_
                          _%hd142239%_)))))
               _%$e142242%_)
              (let* ((_%len142254%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd142239%_)))
                     (_%cmp142256%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd142239%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg142258%_
                      (let ((__tmp144945
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd142239%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp144944 (number->string _%len142254%_)))
                        (declare (not safe))
                        (##string-append __tmp144945 __tmp144944 '" values")))
                     (_%count142260%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (not (let ()
                                (declare (not safe))
                                (gx#stx-list? _%hd142239%_)))
                         (let ()
                           (declare (not safe))
                           (##fx= _%len142254%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count142260%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals142238%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp142256%_
                                (cons _%count142260%_
                                      (cons _%len142254%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp142256%_
                                                        (cons _%count142260%_
                                                              (cons _%len142254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg142258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count142260%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var142233%_)
        (letrec ((_%generate-inline142235%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var142233%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var142233%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline142235%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline142235%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var142226%_ _%i142227%_ _%rest142228%_)
        (letrec ((_%generate-inline142230%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i142227%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest142228%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var142226%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var142226%_
                                                      (cons '0 '())))
                                          (cons _%var142226%_ '()))))
                        (cons '##vector-ref
                              (cons _%var142226%_ (cons _%i142227%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline142230%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline142230%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var142220%_ _%i142221%_)
        (if (let () (declare (not safe)) (##fx= _%i142221%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var142220%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var142220%_ '()))
                                  (cons (cons 'list (cons _%var142220%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var142220%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var142220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var142220%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i142221%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var142220%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var142220%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var142220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var142220%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var142220%_ '()))
                                (cons _%i142221%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var142220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i142221%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self142152%_ _%stx142153%_)
        (let* ((_%g142155142172%_
                (lambda (_%g142156142169%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142156142169%_))))
               (_%g142154142217%_
                (lambda (_%g142156142175%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142156142175%_))
                      (let ((_%e142159142177%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142156142175%_))))
                        (let ((_%hd142160142180%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142159142177%_)))
                              (_%tl142161142182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142159142177%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142161142182%_))
                              (let ((_%e142162142185%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142161142182%_))))
                                (let ((_%hd142163142188%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142162142185%_)))
                                      (_%tl142164142190%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142162142185%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142164142190%_))
                                      (let ((_%e142165142193%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142164142190%_))))
                                        (let ((_%hd142166142196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142165142193%_)))
                                              (_%tl142167142198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142165142193%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142167142198%_))
                                              ((lambda (_%L142201%_
                                                        _%L142202%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self142152%_
                                                  _%L142202%_
                                                  _%L142201%_))
                                               _%hd142166142196%_
                                               _%hd142163142188%_)
                                              (_%g142155142172%_
                                               _%g142156142175%_))))
                                      (_%g142155142172%_ _%g142156142175%_))))
                              (_%g142155142172%_ _%g142156142175%_))))
                      (_%g142155142172%_ _%g142156142175%_)))))
          (_%g142154142217%_ _%stx142153%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self142111%_ _%hd142112%_ _%body142113%_)
        (let* ((_%hd142115%_ (gxc#generate-runtime-lambda-head _%hd142112%_))
               (_%body142117%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self142111%_ _%body142113%_)))
               (_%body142149%_
                (let* ((_%body142118142126%_ _%body142117%_)
                       (_%else142120142134%_
                        (lambda () (cons _%body142117%_ '())))
                       (_%K142122142139%_
                        (lambda (_%exprs142137%_) _%exprs142137%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body142118142126%_))
                      (let ((_%hd142123142142%_
                             (let ()
                               (declare (not safe))
                               (##car _%body142118142126%_)))
                            (_%tl142124142144%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body142118142126%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd142123142142%_ 'begin))
                            (let ((_%exprs142147%_ _%tl142124142144%_))
                              (_%K142122142139%_ _%exprs142147%_))
                            (_%else142120142134%_)))
                      (_%else142120142134%_)))))
          (cons 'lambda (cons _%hd142115%_ _%body142149%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd142109%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd142109%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self140648%_ _%stx140649%_)
        (letrec ((_%dispatch-case?140651%_
                  (lambda (_%hd141339%_ _%body141340%_)
                    (let* ((_%form141342%_
                            (cons _%hd141339%_ (cons _%body141340%_ '())))
                           (_%__stx143664143665%_ _%form141342%_)
                           (_%g141347141504%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx143664143665%_)))))
                      (let ((_%__kont143666143667%_
                             (lambda (_%L142029%_ _%L142030%_ _%L142031%_)
                               '#t))
                            (_%__kont143672143673%_
                             (lambda (_%L141817%_
                                      _%L141818%_
                                      _%L141819%_
                                      _%L141820%_
                                      _%L141821%_
                                      _%L141822%_)
                               '#t))
                            (_%__kont143678143679%_
                             (lambda (_%L141612%_
                                      _%L141613%_
                                      _%L141614%_
                                      _%L141615%_)
                               '#t))
                            (_%__kont143680143681%_ (lambda () '#f)))
                        (let* ((_%__match143805143806%_
                                (lambda (_%e141464141516%_
                                         _%hd141465141519%_
                                         _%tl141466141521%_
                                         _%e141467141524%_
                                         _%hd141468141527%_
                                         _%tl141469141529%_
                                         _%e141470141532%_
                                         _%hd141471141535%_
                                         _%tl141472141537%_
                                         _%e141473141540%_
                                         _%hd141474141543%_
                                         _%tl141475141545%_
                                         _%e141476141548%_
                                         _%hd141477141551%_
                                         _%tl141478141553%_
                                         _%e141479141556%_
                                         _%hd141480141559%_
                                         _%tl141481141561%_
                                         _%e141482141564%_
                                         _%hd141483141567%_
                                         _%tl141484141569%_
                                         _%e141485141572%_
                                         _%hd141486141575%_
                                         _%tl141487141577%_
                                         _%e141488141580%_
                                         _%hd141489141583%_
                                         _%tl141490141585%_
                                         _%e141491141588%_
                                         _%hd141492141591%_
                                         _%tl141493141593%_
                                         _%e141494141596%_
                                         _%hd141495141599%_
                                         _%tl141496141601%_
                                         _%e141497141604%_
                                         _%hd141498141607%_
                                         _%tl141499141609%_)
                                  (let ((_%L141612%_ _%hd141498141607%_)
                                        (_%L141613%_ _%hd141489141583%_)
                                        (_%L141614%_ _%hd141480141559%_)
                                        (_%L141615%_ _%hd141465141519%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L141615%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L141614%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L141615%_
                                                _%L141612%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L141613%_
                                                     _%L141615%_))))
                                        (_%__kont143678143679%_
                                         _%L141612%_
                                         _%L141613%_
                                         _%L141614%_
                                         _%L141615%_)
                                        (_%__kont143680143681%_)))))
                               (_%__match143777143778%_
                                (lambda (_%e141464141516%_
                                         _%hd141465141519%_
                                         _%tl141466141521%_
                                         _%e141467141524%_
                                         _%hd141468141527%_
                                         _%tl141469141529%_
                                         _%e141470141532%_
                                         _%hd141471141535%_
                                         _%tl141472141537%_
                                         _%e141473141540%_
                                         _%hd141474141543%_
                                         _%tl141475141545%_
                                         _%e141476141548%_
                                         _%hd141477141551%_
                                         _%tl141478141553%_
                                         _%e141479141556%_
                                         _%hd141480141559%_
                                         _%tl141481141561%_
                                         _%e141482141564%_
                                         _%hd141483141567%_
                                         _%tl141484141569%_
                                         _%e141485141572%_
                                         _%hd141486141575%_
                                         _%tl141487141577%_
                                         _%e141488141580%_
                                         _%hd141489141583%_
                                         _%tl141490141585%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141484141569%_))
                                      (let ((_%e141491141588%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141484141569%_))))
                                        (let ((_%tl141493141593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141491141588%_)))
                                              (_%hd141492141591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141491141588%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd141492141591%_))
                                              (let ((_%e141494141596%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd141492141591%_))))
                                                (let ((_%tl141496141601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141494141596%_)))
                                                      (_%hd141495141599%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141494141596%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd141495141599%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd141495141599%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141496141601%_))
                      (let ((_%e141497141604%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141496141601%_))))
                        (let ((_%tl141499141609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141497141604%_)))
                              (_%hd141498141607%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141497141604%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141499141609%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl141493141593%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141469141529%_))
                                      (_%__match143805143806%_
                                       _%e141464141516%_
                                       _%hd141465141519%_
                                       _%tl141466141521%_
                                       _%e141467141524%_
                                       _%hd141468141527%_
                                       _%tl141469141529%_
                                       _%e141470141532%_
                                       _%hd141471141535%_
                                       _%tl141472141537%_
                                       _%e141473141540%_
                                       _%hd141474141543%_
                                       _%tl141475141545%_
                                       _%e141476141548%_
                                       _%hd141477141551%_
                                       _%tl141478141553%_
                                       _%e141479141556%_
                                       _%hd141480141559%_
                                       _%tl141481141561%_
                                       _%e141482141564%_
                                       _%hd141483141567%_
                                       _%tl141484141569%_
                                       _%e141485141572%_
                                       _%hd141486141575%_
                                       _%tl141487141577%_
                                       _%e141488141580%_
                                       _%hd141489141583%_
                                       _%tl141490141585%_
                                       _%e141491141588%_
                                       _%hd141492141591%_
                                       _%tl141493141593%_
                                       _%e141494141596%_
                                       _%hd141495141599%_
                                       _%tl141496141601%_
                                       _%e141497141604%_
                                       _%hd141498141607%_
                                       _%tl141499141609%_)
                                      (_%__kont143680143681%_))
                                  (_%__kont143680143681%_))
                              (_%__kont143680143681%_))))
                      (_%__kont143680143681%_))
                  (_%__kont143680143681%_))
              (_%__kont143680143681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143680143681%_))))
                                      (_%__kont143680143681%_))))
                               (_%__match143707143708%_
                                (lambda (_%e141400141657%_
                                         _%hd141401141660%_
                                         _%tl141402141662%_
                                         _%__splice143674143675%_
                                         _%target141403141665%_
                                         _%tl141405141667%_)
                                  (letrec ((_%loop141406141670%_
                                            (lambda (_%hd141404141673%_
                                                     _%arg141410141675%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141404141673%_))
                                                  (let ((_%e141407141678%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141404141673%_))))
                                                    (let ((_%lp-tl141409141683%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141407141678%_)))
                                                          (_%lp-hd141408141681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141407141678%_))))
                                                      (_%loop141406141670%_
                                                       _%lp-tl141409141683%_
                                                       (cons _%lp-hd141408141681%_
                                                             _%arg141410141675%_))))
                                                  (let ((_%arg141411141686%_
                                                         (reverse _%arg141410141675%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141402141662%_))
                                                        (let ((_%e141412141689%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141402141662%_))))
                  (let ((_%tl141414141694%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141412141689%_)))
                        (_%hd141413141692%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141412141689%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141413141692%_))
                        (let ((_%e141415141697%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141413141692%_))))
                          (let ((_%tl141417141702%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141415141697%_)))
                                (_%hd141416141700%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141415141697%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141416141700%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141416141700%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141417141702%_))
                                        (let ((_%e141418141705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141417141702%_))))
                                          (let ((_%tl141420141710%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141418141705%_)))
                                                (_%hd141419141708%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141418141705%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141419141708%_))
                                                (let ((_%e141421141713%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141419141708%_))))
                                                  (let ((_%tl141423141718%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141421141713%_)))
                                                        (_%hd141422141716%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141421141713%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141422141716%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141422141716%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141423141718%_))
                        (let ((_%e141424141721%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141423141718%_))))
                          (let ((_%tl141426141726%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141424141721%_)))
                                (_%hd141425141724%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141424141721%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141426141726%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141420141710%_))
                                    (let ((_%e141427141729%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141420141710%_))))
                                      (let ((_%tl141429141734%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141427141729%_)))
                                            (_%hd141428141732%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141427141729%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141428141732%_))
                                            (let ((_%e141430141737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141428141732%_))))
                                              (let ((_%tl141432141742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141430141737%_)))
                                                    (_%hd141431141740%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141430141737%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141431141740%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141431141740%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141432141742%_))
                                                            (let ((_%e141433141745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141432141742%_))))
                      (let ((_%tl141435141750%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141433141745%_)))
                            (_%hd141434141748%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141433141745%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141435141750%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141429141734%_))
                                (if (let ((__tmp144946
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl141429141734%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp144946 '1))
                                    (let ((_%__splice143676143677%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141429141734%_
                                              '1))))
                                      (let ((_%tl141438141755%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143676143677%_
                                                '1)))
                                            (_%target141436141753%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143676143677%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141438141755%_))
                                            (let ((_%e141445141758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141438141755%_))))
                                              (let ((_%tl141447141763%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141445141758%_)))
                                                    (_%hd141446141761%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141445141758%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd141446141761%_))
                                                    (let ((_%e141448141766%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd141446141761%_))))
                                                      (let ((_%tl141450141771%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141448141766%_)))
                    (_%hd141449141769%_
                     (let () (declare (not safe)) (##car _%e141448141766%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd141449141769%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd141449141769%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl141450141771%_))
                            (let ((_%e141451141774%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl141450141771%_))))
                              (let ((_%tl141453141779%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141451141774%_)))
                                    (_%hd141452141777%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141451141774%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl141453141779%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141447141763%_))
                                        (letrec ((_%loop141439141782%_
                                                  (lambda (_%hd141437141785%_
                                                           _%xarg141443141787%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd141437141785%_))
                                                        (let ((_%e141440141790%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd141437141785%_))))
                  (let ((_%lp-tl141442141795%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141440141790%_)))
                        (_%lp-hd141441141793%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141440141790%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd141441141793%_))
                        (let ((_%e141454141798%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd141441141793%_))))
                          (let ((_%tl141456141803%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141454141798%_)))
                                (_%hd141455141801%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141454141798%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141455141801%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd141455141801%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141456141803%_))
                                        (let ((_%e141457141806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141456141803%_))))
                                          (let ((_%tl141459141811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141457141806%_)))
                                                (_%hd141458141809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141457141806%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141459141811%_))
                                                (_%loop141439141782%_
                                                 _%lp-tl141442141795%_
                                                 (cons _%hd141458141809%_
                                                       _%xarg141443141787%_))
                                                (_%__match143777143778%_
                                                 _%e141400141657%_
                                                 _%hd141401141660%_
                                                 _%tl141402141662%_
                                                 _%e141412141689%_
                                                 _%hd141413141692%_
                                                 _%tl141414141694%_
                                                 _%e141415141697%_
                                                 _%hd141416141700%_
                                                 _%tl141417141702%_
                                                 _%e141418141705%_
                                                 _%hd141419141708%_
                                                 _%tl141420141710%_
                                                 _%e141421141713%_
                                                 _%hd141422141716%_
                                                 _%tl141423141718%_
                                                 _%e141424141721%_
                                                 _%hd141425141724%_
                                                 _%tl141426141726%_
                                                 _%e141427141729%_
                                                 _%hd141428141732%_
                                                 _%tl141429141734%_
                                                 _%e141430141737%_
                                                 _%hd141431141740%_
                                                 _%tl141432141742%_
                                                 _%e141433141745%_
                                                 _%hd141434141748%_
                                                 _%tl141435141750%_))))
                                        (_%__match143777143778%_
                                         _%e141400141657%_
                                         _%hd141401141660%_
                                         _%tl141402141662%_
                                         _%e141412141689%_
                                         _%hd141413141692%_
                                         _%tl141414141694%_
                                         _%e141415141697%_
                                         _%hd141416141700%_
                                         _%tl141417141702%_
                                         _%e141418141705%_
                                         _%hd141419141708%_
                                         _%tl141420141710%_
                                         _%e141421141713%_
                                         _%hd141422141716%_
                                         _%tl141423141718%_
                                         _%e141424141721%_
                                         _%hd141425141724%_
                                         _%tl141426141726%_
                                         _%e141427141729%_
                                         _%hd141428141732%_
                                         _%tl141429141734%_
                                         _%e141430141737%_
                                         _%hd141431141740%_
                                         _%tl141432141742%_
                                         _%e141433141745%_
                                         _%hd141434141748%_
                                         _%tl141435141750%_))
                                    (_%__match143777143778%_
                                     _%e141400141657%_
                                     _%hd141401141660%_
                                     _%tl141402141662%_
                                     _%e141412141689%_
                                     _%hd141413141692%_
                                     _%tl141414141694%_
                                     _%e141415141697%_
                                     _%hd141416141700%_
                                     _%tl141417141702%_
                                     _%e141418141705%_
                                     _%hd141419141708%_
                                     _%tl141420141710%_
                                     _%e141421141713%_
                                     _%hd141422141716%_
                                     _%tl141423141718%_
                                     _%e141424141721%_
                                     _%hd141425141724%_
                                     _%tl141426141726%_
                                     _%e141427141729%_
                                     _%hd141428141732%_
                                     _%tl141429141734%_
                                     _%e141430141737%_
                                     _%hd141431141740%_
                                     _%tl141432141742%_
                                     _%e141433141745%_
                                     _%hd141434141748%_
                                     _%tl141435141750%_))
                                (_%__match143777143778%_
                                 _%e141400141657%_
                                 _%hd141401141660%_
                                 _%tl141402141662%_
                                 _%e141412141689%_
                                 _%hd141413141692%_
                                 _%tl141414141694%_
                                 _%e141415141697%_
                                 _%hd141416141700%_
                                 _%tl141417141702%_
                                 _%e141418141705%_
                                 _%hd141419141708%_
                                 _%tl141420141710%_
                                 _%e141421141713%_
                                 _%hd141422141716%_
                                 _%tl141423141718%_
                                 _%e141424141721%_
                                 _%hd141425141724%_
                                 _%tl141426141726%_
                                 _%e141427141729%_
                                 _%hd141428141732%_
                                 _%tl141429141734%_
                                 _%e141430141737%_
                                 _%hd141431141740%_
                                 _%tl141432141742%_
                                 _%e141433141745%_
                                 _%hd141434141748%_
                                 _%tl141435141750%_))))
                        (_%__match143777143778%_
                         _%e141400141657%_
                         _%hd141401141660%_
                         _%tl141402141662%_
                         _%e141412141689%_
                         _%hd141413141692%_
                         _%tl141414141694%_
                         _%e141415141697%_
                         _%hd141416141700%_
                         _%tl141417141702%_
                         _%e141418141705%_
                         _%hd141419141708%_
                         _%tl141420141710%_
                         _%e141421141713%_
                         _%hd141422141716%_
                         _%tl141423141718%_
                         _%e141424141721%_
                         _%hd141425141724%_
                         _%tl141426141726%_
                         _%e141427141729%_
                         _%hd141428141732%_
                         _%tl141429141734%_
                         _%e141430141737%_
                         _%hd141431141740%_
                         _%tl141432141742%_
                         _%e141433141745%_
                         _%hd141434141748%_
                         _%tl141435141750%_))))
                (let ((_%xarg141444141814%_ (reverse _%xarg141443141787%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141414141694%_))
                      (let ((_%L141817%_ _%hd141452141777%_)
                            (_%L141818%_ _%xarg141444141814%_)
                            (_%L141819%_ _%hd141434141748%_)
                            (_%L141820%_ _%hd141425141724%_)
                            (_%L141821%_ _%tl141405141667%_)
                            (_%L141822%_ _%arg141411141686%_))
                        (if (and (let ((__tmp144947
                                        (let ((__tmp144948
                                               (lambda (_%g141865141868%_
                                                        _%g141866141870%_)
                                                 (cons _%g141865141868%_
                                                       _%g141866141870%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp144948
                                           '()
                                           _%L141822%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp144947))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L141821%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L141820%_
                                    'apply))
                                 (let ((__tmp144951
                                        (length (let ((__tmp144952
                                                       (lambda (_%g141872141875%_
                                                                _%g141873141877%_)
                                                         (cons _%g141872141875%_
                                                               _%g141873141877%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp144952
                                                   '()
                                                   _%L141822%_))))
                                       (__tmp144949
                                        (length (let ((__tmp144950
                                                       (lambda (_%g141879141882%_
                                                                _%g141880141884%_)
                                                         (cons _%g141879141882%_
                                                               _%g141880141884%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp144950
                                                   '()
                                                   _%L141818%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp144951 __tmp144949))
                                 (let ((__tmp144955
                                        (let ((__tmp144956
                                               (lambda (_%g141886141889%_
                                                        _%g141887141891%_)
                                                 (cons _%g141886141889%_
                                                       _%g141887141891%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp144956
                                           '()
                                           _%L141822%_)))
                                       (__tmp144953
                                        (let ((__tmp144954
                                               (lambda (_%g141893141896%_
                                                        _%g141894141898%_)
                                                 (cons _%g141893141896%_
                                                       _%g141894141898%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp144954
                                           '()
                                           _%L141818%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp144955
                                    __tmp144953))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L141821%_
                                    _%L141817%_))
                                 (not (let ((__tmp144960
                                             (lambda (_%g141900141902%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g141900141902%_
                                                  _%L141819%_))))
                                            (__tmp144957
                                             (let ((__tmp144959
                                                    (lambda (_%g141904141907%_
                                                             _%g141905141909%_)
                                                      (cons _%g141904141907%_
                                                            _%g141905141909%_)))
                                                   (__tmp144958
                                                    (cons _%L141821%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp144959
                                                __tmp144958
                                                _%L141822%_))))
                                        (declare (not safe))
                                        (__find __tmp144960 __tmp144957))))
                            (_%__kont143672143673%_
                             _%L141817%_
                             _%L141818%_
                             _%L141819%_
                             _%L141820%_
                             _%L141821%_
                             _%L141822%_)
                            (_%__match143777143778%_
                             _%e141400141657%_
                             _%hd141401141660%_
                             _%tl141402141662%_
                             _%e141412141689%_
                             _%hd141413141692%_
                             _%tl141414141694%_
                             _%e141415141697%_
                             _%hd141416141700%_
                             _%tl141417141702%_
                             _%e141418141705%_
                             _%hd141419141708%_
                             _%tl141420141710%_
                             _%e141421141713%_
                             _%hd141422141716%_
                             _%tl141423141718%_
                             _%e141424141721%_
                             _%hd141425141724%_
                             _%tl141426141726%_
                             _%e141427141729%_
                             _%hd141428141732%_
                             _%tl141429141734%_
                             _%e141430141737%_
                             _%hd141431141740%_
                             _%tl141432141742%_
                             _%e141433141745%_
                             _%hd141434141748%_
                             _%tl141435141750%_)))
                      (_%__match143777143778%_
                       _%e141400141657%_
                       _%hd141401141660%_
                       _%tl141402141662%_
                       _%e141412141689%_
                       _%hd141413141692%_
                       _%tl141414141694%_
                       _%e141415141697%_
                       _%hd141416141700%_
                       _%tl141417141702%_
                       _%e141418141705%_
                       _%hd141419141708%_
                       _%tl141420141710%_
                       _%e141421141713%_
                       _%hd141422141716%_
                       _%tl141423141718%_
                       _%e141424141721%_
                       _%hd141425141724%_
                       _%tl141426141726%_
                       _%e141427141729%_
                       _%hd141428141732%_
                       _%tl141429141734%_
                       _%e141430141737%_
                       _%hd141431141740%_
                       _%tl141432141742%_
                       _%e141433141745%_
                       _%hd141434141748%_
                       _%tl141435141750%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop141439141782%_
                                           _%target141436141753%_
                                           '()))
                                        (_%__match143777143778%_
                                         _%e141400141657%_
                                         _%hd141401141660%_
                                         _%tl141402141662%_
                                         _%e141412141689%_
                                         _%hd141413141692%_
                                         _%tl141414141694%_
                                         _%e141415141697%_
                                         _%hd141416141700%_
                                         _%tl141417141702%_
                                         _%e141418141705%_
                                         _%hd141419141708%_
                                         _%tl141420141710%_
                                         _%e141421141713%_
                                         _%hd141422141716%_
                                         _%tl141423141718%_
                                         _%e141424141721%_
                                         _%hd141425141724%_
                                         _%tl141426141726%_
                                         _%e141427141729%_
                                         _%hd141428141732%_
                                         _%tl141429141734%_
                                         _%e141430141737%_
                                         _%hd141431141740%_
                                         _%tl141432141742%_
                                         _%e141433141745%_
                                         _%hd141434141748%_
                                         _%tl141435141750%_))
                                    (_%__match143777143778%_
                                     _%e141400141657%_
                                     _%hd141401141660%_
                                     _%tl141402141662%_
                                     _%e141412141689%_
                                     _%hd141413141692%_
                                     _%tl141414141694%_
                                     _%e141415141697%_
                                     _%hd141416141700%_
                                     _%tl141417141702%_
                                     _%e141418141705%_
                                     _%hd141419141708%_
                                     _%tl141420141710%_
                                     _%e141421141713%_
                                     _%hd141422141716%_
                                     _%tl141423141718%_
                                     _%e141424141721%_
                                     _%hd141425141724%_
                                     _%tl141426141726%_
                                     _%e141427141729%_
                                     _%hd141428141732%_
                                     _%tl141429141734%_
                                     _%e141430141737%_
                                     _%hd141431141740%_
                                     _%tl141432141742%_
                                     _%e141433141745%_
                                     _%hd141434141748%_
                                     _%tl141435141750%_))))
                            (_%__match143777143778%_
                             _%e141400141657%_
                             _%hd141401141660%_
                             _%tl141402141662%_
                             _%e141412141689%_
                             _%hd141413141692%_
                             _%tl141414141694%_
                             _%e141415141697%_
                             _%hd141416141700%_
                             _%tl141417141702%_
                             _%e141418141705%_
                             _%hd141419141708%_
                             _%tl141420141710%_
                             _%e141421141713%_
                             _%hd141422141716%_
                             _%tl141423141718%_
                             _%e141424141721%_
                             _%hd141425141724%_
                             _%tl141426141726%_
                             _%e141427141729%_
                             _%hd141428141732%_
                             _%tl141429141734%_
                             _%e141430141737%_
                             _%hd141431141740%_
                             _%tl141432141742%_
                             _%e141433141745%_
                             _%hd141434141748%_
                             _%tl141435141750%_))
                        (_%__match143777143778%_
                         _%e141400141657%_
                         _%hd141401141660%_
                         _%tl141402141662%_
                         _%e141412141689%_
                         _%hd141413141692%_
                         _%tl141414141694%_
                         _%e141415141697%_
                         _%hd141416141700%_
                         _%tl141417141702%_
                         _%e141418141705%_
                         _%hd141419141708%_
                         _%tl141420141710%_
                         _%e141421141713%_
                         _%hd141422141716%_
                         _%tl141423141718%_
                         _%e141424141721%_
                         _%hd141425141724%_
                         _%tl141426141726%_
                         _%e141427141729%_
                         _%hd141428141732%_
                         _%tl141429141734%_
                         _%e141430141737%_
                         _%hd141431141740%_
                         _%tl141432141742%_
                         _%e141433141745%_
                         _%hd141434141748%_
                         _%tl141435141750%_))
                    (_%__match143777143778%_
                     _%e141400141657%_
                     _%hd141401141660%_
                     _%tl141402141662%_
                     _%e141412141689%_
                     _%hd141413141692%_
                     _%tl141414141694%_
                     _%e141415141697%_
                     _%hd141416141700%_
                     _%tl141417141702%_
                     _%e141418141705%_
                     _%hd141419141708%_
                     _%tl141420141710%_
                     _%e141421141713%_
                     _%hd141422141716%_
                     _%tl141423141718%_
                     _%e141424141721%_
                     _%hd141425141724%_
                     _%tl141426141726%_
                     _%e141427141729%_
                     _%hd141428141732%_
                     _%tl141429141734%_
                     _%e141430141737%_
                     _%hd141431141740%_
                     _%tl141432141742%_
                     _%e141433141745%_
                     _%hd141434141748%_
                     _%tl141435141750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match143777143778%_
                                                     _%e141400141657%_
                                                     _%hd141401141660%_
                                                     _%tl141402141662%_
                                                     _%e141412141689%_
                                                     _%hd141413141692%_
                                                     _%tl141414141694%_
                                                     _%e141415141697%_
                                                     _%hd141416141700%_
                                                     _%tl141417141702%_
                                                     _%e141418141705%_
                                                     _%hd141419141708%_
                                                     _%tl141420141710%_
                                                     _%e141421141713%_
                                                     _%hd141422141716%_
                                                     _%tl141423141718%_
                                                     _%e141424141721%_
                                                     _%hd141425141724%_
                                                     _%tl141426141726%_
                                                     _%e141427141729%_
                                                     _%hd141428141732%_
                                                     _%tl141429141734%_
                                                     _%e141430141737%_
                                                     _%hd141431141740%_
                                                     _%tl141432141742%_
                                                     _%e141433141745%_
                                                     _%hd141434141748%_
                                                     _%tl141435141750%_))))
                                            (_%__match143777143778%_
                                             _%e141400141657%_
                                             _%hd141401141660%_
                                             _%tl141402141662%_
                                             _%e141412141689%_
                                             _%hd141413141692%_
                                             _%tl141414141694%_
                                             _%e141415141697%_
                                             _%hd141416141700%_
                                             _%tl141417141702%_
                                             _%e141418141705%_
                                             _%hd141419141708%_
                                             _%tl141420141710%_
                                             _%e141421141713%_
                                             _%hd141422141716%_
                                             _%tl141423141718%_
                                             _%e141424141721%_
                                             _%hd141425141724%_
                                             _%tl141426141726%_
                                             _%e141427141729%_
                                             _%hd141428141732%_
                                             _%tl141429141734%_
                                             _%e141430141737%_
                                             _%hd141431141740%_
                                             _%tl141432141742%_
                                             _%e141433141745%_
                                             _%hd141434141748%_
                                             _%tl141435141750%_))))
                                    (_%__match143777143778%_
                                     _%e141400141657%_
                                     _%hd141401141660%_
                                     _%tl141402141662%_
                                     _%e141412141689%_
                                     _%hd141413141692%_
                                     _%tl141414141694%_
                                     _%e141415141697%_
                                     _%hd141416141700%_
                                     _%tl141417141702%_
                                     _%e141418141705%_
                                     _%hd141419141708%_
                                     _%tl141420141710%_
                                     _%e141421141713%_
                                     _%hd141422141716%_
                                     _%tl141423141718%_
                                     _%e141424141721%_
                                     _%hd141425141724%_
                                     _%tl141426141726%_
                                     _%e141427141729%_
                                     _%hd141428141732%_
                                     _%tl141429141734%_
                                     _%e141430141737%_
                                     _%hd141431141740%_
                                     _%tl141432141742%_
                                     _%e141433141745%_
                                     _%hd141434141748%_
                                     _%tl141435141750%_))
                                (_%__match143777143778%_
                                 _%e141400141657%_
                                 _%hd141401141660%_
                                 _%tl141402141662%_
                                 _%e141412141689%_
                                 _%hd141413141692%_
                                 _%tl141414141694%_
                                 _%e141415141697%_
                                 _%hd141416141700%_
                                 _%tl141417141702%_
                                 _%e141418141705%_
                                 _%hd141419141708%_
                                 _%tl141420141710%_
                                 _%e141421141713%_
                                 _%hd141422141716%_
                                 _%tl141423141718%_
                                 _%e141424141721%_
                                 _%hd141425141724%_
                                 _%tl141426141726%_
                                 _%e141427141729%_
                                 _%hd141428141732%_
                                 _%tl141429141734%_
                                 _%e141430141737%_
                                 _%hd141431141740%_
                                 _%tl141432141742%_
                                 _%e141433141745%_
                                 _%hd141434141748%_
                                 _%tl141435141750%_))
                            (_%__kont143680143681%_))))
                    (_%__kont143680143681%_))
                (_%__kont143680143681%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont143680143681%_))))
                                            (_%__kont143680143681%_))))
                                    (_%__kont143680143681%_))
                                (_%__kont143680143681%_))))
                        (_%__kont143680143681%_))
                    (_%__kont143680143681%_))
                (_%__kont143680143681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont143680143681%_))))
                                        (_%__kont143680143681%_))
                                    (_%__kont143680143681%_))
                                (_%__kont143680143681%_))))
                        (_%__kont143680143681%_))))
                (_%__kont143680143681%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop141406141670%_
                                     _%target141403141665%_
                                     '()))))
                               (_%__match143695143696%_
                                (lambda (_%e141352141917%_
                                         _%hd141353141920%_
                                         _%tl141354141922%_
                                         _%__splice143668143669%_
                                         _%target141355141925%_
                                         _%tl141357141927%_)
                                  (letrec ((_%loop141358141930%_
                                            (lambda (_%hd141356141933%_
                                                     _%arg141362141935%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141356141933%_))
                                                  (let ((_%e141359141938%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141356141933%_))))
                                                    (let ((_%lp-tl141361141943%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141359141938%_)))
                                                          (_%lp-hd141360141941%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141359141938%_))))
                                                      (_%loop141358141930%_
                                                       _%lp-tl141361141943%_
                                                       (cons _%lp-hd141360141941%_
                                                             _%arg141362141935%_))))
                                                  (let ((_%arg141363141946%_
                                                         (reverse _%arg141362141935%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141354141922%_))
                                                        (let ((_%e141364141949%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141354141922%_))))
                  (let ((_%tl141366141954%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141364141949%_)))
                        (_%hd141365141952%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141364141949%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141365141952%_))
                        (let ((_%e141367141957%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141365141952%_))))
                          (let ((_%tl141369141962%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141367141957%_)))
                                (_%hd141368141960%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141367141957%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141368141960%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141368141960%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141369141962%_))
                                        (let ((_%e141370141965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141369141962%_))))
                                          (let ((_%tl141372141970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141370141965%_)))
                                                (_%hd141371141968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141370141965%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141371141968%_))
                                                (let ((_%e141373141973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141371141968%_))))
                                                  (let ((_%tl141375141978%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141373141973%_)))
                                                        (_%hd141374141976%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141373141973%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141374141976%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141374141976%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141375141978%_))
                        (let ((_%e141376141981%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141375141978%_))))
                          (let ((_%tl141378141986%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141376141981%_)))
                                (_%hd141377141984%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141376141981%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141378141986%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141372141970%_))
                                    (let ((_%__splice143670143671%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141372141970%_
                                              '0))))
                                      (let ((_%tl141381141991%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143670143671%_
                                                '1)))
                                            (_%target141379141989%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143670143671%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141381141991%_))
                                            (letrec ((_%loop141382141994%_
                                                      (lambda (_%hd141380141997%_
                                                               _%xarg141386141999%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141380141997%_))
                                                            (let ((_%e141383142002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141380141997%_))))
                      (let ((_%lp-tl141385142007%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141383142002%_)))
                            (_%lp-hd141384142005%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141383142002%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141384142005%_))
                            (let ((_%e141388142010%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141384142005%_))))
                              (let ((_%tl141390142015%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141388142010%_)))
                                    (_%hd141389142013%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141388142010%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141389142013%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141389142013%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141390142015%_))
                                            (let ((_%e141391142018%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141390142015%_))))
                                              (let ((_%tl141393142023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141391142018%_)))
                                                    (_%hd141392142021%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141391142018%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141393142023%_))
                                                    (_%loop141382141994%_
                                                     _%lp-tl141385142007%_
                                                     (cons _%hd141392142021%_
                                                           _%xarg141386141999%_))
                                                    (_%__match143707143708%_
                                                     _%e141352141917%_
                                                     _%hd141353141920%_
                                                     _%tl141354141922%_
                                                     _%__splice143668143669%_
                                                     _%target141355141925%_
                                                     _%tl141357141927%_))))
                                            (_%__match143707143708%_
                                             _%e141352141917%_
                                             _%hd141353141920%_
                                             _%tl141354141922%_
                                             _%__splice143668143669%_
                                             _%target141355141925%_
                                             _%tl141357141927%_))
                                        (_%__match143707143708%_
                                         _%e141352141917%_
                                         _%hd141353141920%_
                                         _%tl141354141922%_
                                         _%__splice143668143669%_
                                         _%target141355141925%_
                                         _%tl141357141927%_))
                                    (_%__match143707143708%_
                                     _%e141352141917%_
                                     _%hd141353141920%_
                                     _%tl141354141922%_
                                     _%__splice143668143669%_
                                     _%target141355141925%_
                                     _%tl141357141927%_))))
                            (_%__match143707143708%_
                             _%e141352141917%_
                             _%hd141353141920%_
                             _%tl141354141922%_
                             _%__splice143668143669%_
                             _%target141355141925%_
                             _%tl141357141927%_))))
                    (let ((_%xarg141387142026%_
                           (reverse _%xarg141386141999%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141366141954%_))
                          (let ((_%L142029%_ _%xarg141387142026%_)
                                (_%L142030%_ _%hd141377141984%_)
                                (_%L142031%_ _%arg141363141946%_))
                            (if (and (let ((__tmp144961
                                            (let ((__tmp144962
                                                   (lambda (_%g142059142062%_
                                                            _%g142060142064%_)
                                                     (cons _%g142059142062%_
                                                           _%g142060142064%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp144962
                                               '()
                                               _%L142031%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp144961))
                                     (let ((__tmp144965
                                            (length (let ((__tmp144966
                                                           (lambda (_%g142066142069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142067142071%_)
                     (cons _%g142066142069%_ _%g142067142071%_))))
              (declare (not safe))
              (__foldr1 __tmp144966 '() _%L142031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp144963
                                            (length (let ((__tmp144964
                                                           (lambda (_%g142073142076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142074142078%_)
                     (cons _%g142073142076%_ _%g142074142078%_))))
              (declare (not safe))
              (__foldr1 __tmp144964 '() _%L142029%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp144965 __tmp144963))
                                     (let ((__tmp144969
                                            (let ((__tmp144970
                                                   (lambda (_%g142080142083%_
                                                            _%g142081142085%_)
                                                     (cons _%g142080142083%_
                                                           _%g142081142085%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp144970
                                               '()
                                               _%L142031%_)))
                                           (__tmp144967
                                            (let ((__tmp144968
                                                   (lambda (_%g142087142090%_
                                                            _%g142088142092%_)
                                                     (cons _%g142087142090%_
                                                           _%g142088142092%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp144968
                                               '()
                                               _%L142029%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp144969
                                        __tmp144967))
                                     (not (let ((__tmp144973
                                                 (lambda (_%g142094142096%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g142094142096%_
                                                      _%L142030%_))))
                                                (__tmp144971
                                                 (let ((__tmp144972
                                                        (lambda (_%g142098142101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g142099142103%_)
                  (cons _%g142098142101%_ _%g142099142103%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp144972
                                                    '()
                                                    _%L142031%_))))
                                            (declare (not safe))
                                            (__find __tmp144973 __tmp144971))))
                                (_%__kont143666143667%_
                                 _%L142029%_
                                 _%L142030%_
                                 _%L142031%_)
                                (_%__match143707143708%_
                                 _%e141352141917%_
                                 _%hd141353141920%_
                                 _%tl141354141922%_
                                 _%__splice143668143669%_
                                 _%target141355141925%_
                                 _%tl141357141927%_)))
                          (_%__match143707143708%_
                           _%e141352141917%_
                           _%hd141353141920%_
                           _%tl141354141922%_
                           _%__splice143668143669%_
                           _%target141355141925%_
                           _%tl141357141927%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop141382141994%_
                                               _%target141379141989%_
                                               '()))
                                            (_%__match143707143708%_
                                             _%e141352141917%_
                                             _%hd141353141920%_
                                             _%tl141354141922%_
                                             _%__splice143668143669%_
                                             _%target141355141925%_
                                             _%tl141357141927%_))))
                                    (_%__match143707143708%_
                                     _%e141352141917%_
                                     _%hd141353141920%_
                                     _%tl141354141922%_
                                     _%__splice143668143669%_
                                     _%target141355141925%_
                                     _%tl141357141927%_))
                                (_%__match143707143708%_
                                 _%e141352141917%_
                                 _%hd141353141920%_
                                 _%tl141354141922%_
                                 _%__splice143668143669%_
                                 _%target141355141925%_
                                 _%tl141357141927%_))))
                        (_%__match143707143708%_
                         _%e141352141917%_
                         _%hd141353141920%_
                         _%tl141354141922%_
                         _%__splice143668143669%_
                         _%target141355141925%_
                         _%tl141357141927%_))
                    (_%__match143707143708%_
                     _%e141352141917%_
                     _%hd141353141920%_
                     _%tl141354141922%_
                     _%__splice143668143669%_
                     _%target141355141925%_
                     _%tl141357141927%_))
                (_%__match143707143708%_
                 _%e141352141917%_
                 _%hd141353141920%_
                 _%tl141354141922%_
                 _%__splice143668143669%_
                 _%target141355141925%_
                 _%tl141357141927%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match143707143708%_
                                                 _%e141352141917%_
                                                 _%hd141353141920%_
                                                 _%tl141354141922%_
                                                 _%__splice143668143669%_
                                                 _%target141355141925%_
                                                 _%tl141357141927%_))))
                                        (_%__match143707143708%_
                                         _%e141352141917%_
                                         _%hd141353141920%_
                                         _%tl141354141922%_
                                         _%__splice143668143669%_
                                         _%target141355141925%_
                                         _%tl141357141927%_))
                                    (_%__match143707143708%_
                                     _%e141352141917%_
                                     _%hd141353141920%_
                                     _%tl141354141922%_
                                     _%__splice143668143669%_
                                     _%target141355141925%_
                                     _%tl141357141927%_))
                                (_%__match143707143708%_
                                 _%e141352141917%_
                                 _%hd141353141920%_
                                 _%tl141354141922%_
                                 _%__splice143668143669%_
                                 _%target141355141925%_
                                 _%tl141357141927%_))))
                        (_%__match143707143708%_
                         _%e141352141917%_
                         _%hd141353141920%_
                         _%tl141354141922%_
                         _%__splice143668143669%_
                         _%target141355141925%_
                         _%tl141357141927%_))))
                (_%__match143707143708%_
                 _%e141352141917%_
                 _%hd141353141920%_
                 _%tl141354141922%_
                 _%__splice143668143669%_
                 _%target141355141925%_
                 _%tl141357141927%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop141358141930%_
                                     _%target141355141925%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx143664143665%_))
                              (let ((_%e141352141917%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx143664143665%_))))
                                (let ((_%tl141354141922%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141352141917%_)))
                                      (_%hd141353141920%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141352141917%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141353141920%_))
                                      (let ((_%__splice143668143669%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141353141920%_
                                                '0))))
                                        (let ((_%tl141357141927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143668143669%_
                                                  '1)))
                                              (_%target141355141925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143668143669%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141357141927%_))
                                              (_%__match143695143696%_
                                               _%e141352141917%_
                                               _%hd141353141920%_
                                               _%tl141354141922%_
                                               _%__splice143668143669%_
                                               _%target141355141925%_
                                               _%tl141357141927%_)
                                              (_%__match143707143708%_
                                               _%e141352141917%_
                                               _%hd141353141920%_
                                               _%tl141354141922%_
                                               _%__splice143668143669%_
                                               _%target141355141925%_
                                               _%tl141357141927%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141354141922%_))
                                          (let ((_%e141467141524%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141354141922%_))))
                                            (let ((_%tl141469141529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141467141524%_)))
                                                  (_%hd141468141527%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141467141524%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141468141527%_))
                                                  (let ((_%e141470141532%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141468141527%_))))
                                                    (let ((_%tl141472141537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141470141532%_)))
                                                          (_%hd141471141535%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141470141532%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141471141535%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141471141535%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141472141537%_))
                          (let ((_%e141473141540%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141472141537%_))))
                            (let ((_%tl141475141545%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141473141540%_)))
                                  (_%hd141474141543%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141473141540%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141474141543%_))
                                  (let ((_%e141476141548%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141474141543%_))))
                                    (let ((_%tl141478141553%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141476141548%_)))
                                          (_%hd141477141551%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141476141548%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141477141551%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141477141551%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141478141553%_))
                                                  (let ((_%e141479141556%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141478141553%_))))
                                                    (let ((_%tl141481141561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141479141556%_)))
                                                          (_%hd141480141559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141479141556%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141481141561%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141475141545%_))
                      (let ((_%e141482141564%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141475141545%_))))
                        (let ((_%tl141484141569%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141482141564%_)))
                              (_%hd141483141567%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141482141564%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141483141567%_))
                              (let ((_%e141485141572%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141483141567%_))))
                                (let ((_%tl141487141577%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141485141572%_)))
                                      (_%hd141486141575%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141485141572%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141486141575%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141486141575%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141487141577%_))
                                              (let ((_%e141488141580%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141487141577%_))))
                                                (let ((_%tl141490141585%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141488141580%_)))
                                                      (_%hd141489141583%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141488141580%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141490141585%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141484141569%_))
                                                          (let ((_%e141491141588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141484141569%_))))
                    (let ((_%tl141493141593%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141491141588%_)))
                          (_%hd141492141591%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141491141588%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd141492141591%_))
                          (let ((_%e141494141596%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd141492141591%_))))
                            (let ((_%tl141496141601%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141494141596%_)))
                                  (_%hd141495141599%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141494141596%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd141495141599%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd141495141599%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141496141601%_))
                                          (let ((_%e141497141604%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141496141601%_))))
                                            (let ((_%tl141499141609%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141497141604%_)))
                                                  (_%hd141498141607%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141497141604%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141499141609%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141493141593%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141469141529%_))
                                                          (_%__match143805143806%_
                                                           _%e141352141917%_
                                                           _%hd141353141920%_
                                                           _%tl141354141922%_
                                                           _%e141467141524%_
                                                           _%hd141468141527%_
                                                           _%tl141469141529%_
                                                           _%e141470141532%_
                                                           _%hd141471141535%_
                                                           _%tl141472141537%_
                                                           _%e141473141540%_
                                                           _%hd141474141543%_
                                                           _%tl141475141545%_
                                                           _%e141476141548%_
                                                           _%hd141477141551%_
                                                           _%tl141478141553%_
                                                           _%e141479141556%_
                                                           _%hd141480141559%_
                                                           _%tl141481141561%_
                                                           _%e141482141564%_
                                                           _%hd141483141567%_
                                                           _%tl141484141569%_
                                                           _%e141485141572%_
                                                           _%hd141486141575%_
                                                           _%tl141487141577%_
                                                           _%e141488141580%_
                                                           _%hd141489141583%_
                                                           _%tl141490141585%_
                                                           _%e141491141588%_
                                                           _%hd141492141591%_
                                                           _%tl141493141593%_
                                                           _%e141494141596%_
                                                           _%hd141495141599%_
                                                           _%tl141496141601%_
                                                           _%e141497141604%_
                                                           _%hd141498141607%_
                                                           _%tl141499141609%_)
                                                          (_%__kont143680143681%_))
                                                      (_%__kont143680143681%_))
                                                  (_%__kont143680143681%_))))
                                          (_%__kont143680143681%_))
                                      (_%__kont143680143681%_))
                                  (_%__kont143680143681%_))))
                          (_%__kont143680143681%_))))
                  (_%__kont143680143681%_))
              (_%__kont143680143681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143680143681%_))
                                          (_%__kont143680143681%_))
                                      (_%__kont143680143681%_))))
                              (_%__kont143680143681%_))))
                      (_%__kont143680143681%_))
                  (_%__kont143680143681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143680143681%_))
                                              (_%__kont143680143681%_))
                                          (_%__kont143680143681%_))))
                                  (_%__kont143680143681%_))))
                          (_%__kont143680143681%_))
                      (_%__kont143680143681%_))
                  (_%__kont143680143681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143680143681%_))))
                                          (_%__kont143680143681%_)))))
                              (_%__kont143680143681%_)))))))
                 (_%dispatch-case-e140652%_
                  (lambda (_%hd140803%_ _%body140804%_)
                    (let* ((_%form140806%_
                            (cons _%hd140803%_ (cons _%body140804%_ '())))
                           (_%__stx143808143809%_ _%form140806%_)
                           (_%g140810140934%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx143808143809%_)))))
                      (let ((_%__kont143810143811%_
                             (lambda (_%L141305%_ _%L141306%_ _%L141307%_)
                               (let ((__tmp144974
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141306%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140648%_
                                  __tmp144974))))
                            (_%__kont143816143817%_
                             (lambda (_%L141153%_
                                      _%L141154%_
                                      _%L141155%_
                                      _%L141156%_)
                               (let ((__tmp144975
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141153%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140648%_
                                  __tmp144975))))
                            (_%__kont143820143821%_
                             (lambda (_%L141019%_ _%L141020%_ _%L141021%_)
                               (let ((__tmp144976
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141019%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140648%_
                                  __tmp144976)))))
                        (let* ((_%__match143917143918%_
                                (lambda (_%e140900140939%_
                                         _%hd140901140942%_
                                         _%tl140902140944%_
                                         _%e140903140947%_
                                         _%hd140904140950%_
                                         _%tl140905140952%_
                                         _%e140906140955%_
                                         _%hd140907140958%_
                                         _%tl140908140960%_
                                         _%e140909140963%_
                                         _%hd140910140966%_
                                         _%tl140911140968%_
                                         _%e140912140971%_
                                         _%hd140913140974%_
                                         _%tl140914140976%_
                                         _%e140915140979%_
                                         _%hd140916140982%_
                                         _%tl140917140984%_
                                         _%e140918140987%_
                                         _%hd140919140990%_
                                         _%tl140920140992%_
                                         _%e140921140995%_
                                         _%hd140922140998%_
                                         _%tl140923141000%_
                                         _%e140924141003%_
                                         _%hd140925141006%_
                                         _%tl140926141008%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140920140992%_))
                                      (let ((_%e140927141011%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140920140992%_))))
                                        (let ((_%tl140929141016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140927141011%_)))
                                              (_%hd140928141014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140927141011%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140929141016%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl140905140952%_))
                                                  (_%__kont143820143821%_
                                                   _%hd140925141006%_
                                                   _%hd140916140982%_
                                                   _%hd140901140942%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140810140934%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g140810140934%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g140810140934%_)))))
                               (_%__match143847143848%_
                                (lambda (_%e140861141057%_
                                         _%hd140862141060%_
                                         _%tl140863141062%_
                                         _%__splice143818143819%_
                                         _%target140864141065%_
                                         _%tl140866141067%_)
                                  (letrec ((_%loop140867141070%_
                                            (lambda (_%hd140865141073%_
                                                     _%arg140871141075%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140865141073%_))
                                                  (let ((_%e140868141078%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140865141073%_))))
                                                    (let ((_%lp-tl140870141083%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140868141078%_)))
                                                          (_%lp-hd140869141081%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140868141078%_))))
                                                      (_%loop140867141070%_
                                                       _%lp-tl140870141083%_
                                                       (cons _%lp-hd140869141081%_
                                                             _%arg140871141075%_))))
                                                  (let ((_%arg140872141086%_
                                                         (reverse _%arg140871141075%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140863141062%_))
                                                        (let ((_%e140873141089%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl140863141062%_))))
                  (let ((_%tl140875141094%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140873141089%_)))
                        (_%hd140874141092%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140873141089%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140874141092%_))
                        (let ((_%e140876141097%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140874141092%_))))
                          (let ((_%tl140878141102%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140876141097%_)))
                                (_%hd140877141100%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140876141097%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd140877141100%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd140877141100%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140878141102%_))
                                        (let ((_%e140879141105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140878141102%_))))
                                          (let ((_%tl140881141110%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140879141105%_)))
                                                (_%hd140880141108%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140879141105%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140880141108%_))
                                                (let ((_%e140882141113%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140880141108%_))))
                                                  (let ((_%tl140884141118%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140882141113%_)))
                                                        (_%hd140883141116%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140882141113%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd140883141116%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd140883141116%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl140884141118%_))
                        (let ((_%e140885141121%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl140884141118%_))))
                          (let ((_%tl140887141126%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140885141121%_)))
                                (_%hd140886141124%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140885141121%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140887141126%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl140881141110%_))
                                    (let ((_%e140888141129%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl140881141110%_))))
                                      (let ((_%tl140890141134%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140888141129%_)))
                                            (_%hd140889141132%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140888141129%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd140889141132%_))
                                            (let ((_%e140891141137%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd140889141132%_))))
                                              (let ((_%tl140893141142%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e140891141137%_)))
                                                    (_%hd140892141140%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e140891141137%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd140892141140%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd140892141140%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl140893141142%_))
                                                            (let ((_%e140894141145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140893141142%_))))
                      (let ((_%tl140896141150%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140894141145%_)))
                            (_%hd140895141148%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140894141145%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140896141150%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140875141094%_))
                                (_%__kont143816143817%_
                                 _%hd140895141148%_
                                 _%hd140886141124%_
                                 _%tl140866141067%_
                                 _%arg140872141086%_)
                                (_%__match143917143918%_
                                 _%e140861141057%_
                                 _%hd140862141060%_
                                 _%tl140863141062%_
                                 _%e140873141089%_
                                 _%hd140874141092%_
                                 _%tl140875141094%_
                                 _%e140876141097%_
                                 _%hd140877141100%_
                                 _%tl140878141102%_
                                 _%e140879141105%_
                                 _%hd140880141108%_
                                 _%tl140881141110%_
                                 _%e140882141113%_
                                 _%hd140883141116%_
                                 _%tl140884141118%_
                                 _%e140885141121%_
                                 _%hd140886141124%_
                                 _%tl140887141126%_
                                 _%e140888141129%_
                                 _%hd140889141132%_
                                 _%tl140890141134%_
                                 _%e140891141137%_
                                 _%hd140892141140%_
                                 _%tl140893141142%_
                                 _%e140894141145%_
                                 _%hd140895141148%_
                                 _%tl140896141150%_))
                            (let ()
                              (declare (not safe))
                              (_%g140810140934%_)))))
                    (let () (declare (not safe)) (_%g140810140934%_)))
                (let () (declare (not safe)) (_%g140810140934%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g140810140934%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g140810140934%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g140810140934%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g140810140934%_)))))
                        (let () (declare (not safe)) (_%g140810140934%_)))
                    (let () (declare (not safe)) (_%g140810140934%_)))
                (let () (declare (not safe)) (_%g140810140934%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140810140934%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140810140934%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g140810140934%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g140810140934%_)))))
                        (let () (declare (not safe)) (_%g140810140934%_)))))
                (let () (declare (not safe)) (_%g140810140934%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop140867141070%_
                                     _%target140864141065%_
                                     '()))))
                               (_%__match143835143836%_
                                (lambda (_%e140815141193%_
                                         _%hd140816141196%_
                                         _%tl140817141198%_
                                         _%__splice143812143813%_
                                         _%target140818141201%_
                                         _%tl140820141203%_)
                                  (letrec ((_%loop140821141206%_
                                            (lambda (_%hd140819141209%_
                                                     _%arg140825141211%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140819141209%_))
                                                  (let ((_%e140822141214%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140819141209%_))))
                                                    (let ((_%lp-tl140824141219%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140822141214%_)))
                                                          (_%lp-hd140823141217%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140822141214%_))))
                                                      (_%loop140821141206%_
                                                       _%lp-tl140824141219%_
                                                       (cons _%lp-hd140823141217%_
                                                             _%arg140825141211%_))))
                                                  (let ((_%arg140826141222%_
                                                         (reverse _%arg140825141211%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140817141198%_))
                                                        (let ((_%e140827141225%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl140817141198%_))))
                  (let ((_%tl140829141230%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140827141225%_)))
                        (_%hd140828141228%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140827141225%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140828141228%_))
                        (let ((_%e140830141233%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140828141228%_))))
                          (let ((_%tl140832141238%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140830141233%_)))
                                (_%hd140831141236%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140830141233%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd140831141236%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd140831141236%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140832141238%_))
                                        (let ((_%e140833141241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140832141238%_))))
                                          (let ((_%tl140835141246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140833141241%_)))
                                                (_%hd140834141244%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140833141241%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140834141244%_))
                                                (let ((_%e140836141249%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140834141244%_))))
                                                  (let ((_%tl140838141254%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140836141249%_)))
                                                        (_%hd140837141252%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140836141249%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd140837141252%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd140837141252%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl140838141254%_))
                        (let ((_%e140839141257%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl140838141254%_))))
                          (let ((_%tl140841141262%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140839141257%_)))
                                (_%hd140840141260%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140839141257%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140841141262%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl140835141246%_))
                                    (let ((_%__splice143814143815%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl140835141246%_
                                              '0))))
                                      (let ((_%tl140844141267%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143814143815%_
                                                '1)))
                                            (_%target140842141265%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143814143815%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl140844141267%_))
                                            (letrec ((_%loop140845141270%_
                                                      (lambda (_%hd140843141273%_
                                                               _%xarg140849141275%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd140843141273%_))
                                                            (let ((_%e140846141278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd140843141273%_))))
                      (let ((_%lp-tl140848141283%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140846141278%_)))
                            (_%lp-hd140847141281%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140846141278%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd140847141281%_))
                            (let ((_%e140851141286%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd140847141281%_))))
                              (let ((_%tl140853141291%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e140851141286%_)))
                                    (_%hd140852141289%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e140851141286%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd140852141289%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd140852141289%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl140853141291%_))
                                            (let ((_%e140854141294%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl140853141291%_))))
                                              (let ((_%tl140856141299%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e140854141294%_)))
                                                    (_%hd140855141297%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e140854141294%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl140856141299%_))
                                                    (_%loop140845141270%_
                                                     _%lp-tl140848141283%_
                                                     (cons _%hd140855141297%_
                                                           _%xarg140849141275%_))
                                                    (_%__match143847143848%_
                                                     _%e140815141193%_
                                                     _%hd140816141196%_
                                                     _%tl140817141198%_
                                                     _%__splice143812143813%_
                                                     _%target140818141201%_
                                                     _%tl140820141203%_))))
                                            (_%__match143847143848%_
                                             _%e140815141193%_
                                             _%hd140816141196%_
                                             _%tl140817141198%_
                                             _%__splice143812143813%_
                                             _%target140818141201%_
                                             _%tl140820141203%_))
                                        (_%__match143847143848%_
                                         _%e140815141193%_
                                         _%hd140816141196%_
                                         _%tl140817141198%_
                                         _%__splice143812143813%_
                                         _%target140818141201%_
                                         _%tl140820141203%_))
                                    (_%__match143847143848%_
                                     _%e140815141193%_
                                     _%hd140816141196%_
                                     _%tl140817141198%_
                                     _%__splice143812143813%_
                                     _%target140818141201%_
                                     _%tl140820141203%_))))
                            (_%__match143847143848%_
                             _%e140815141193%_
                             _%hd140816141196%_
                             _%tl140817141198%_
                             _%__splice143812143813%_
                             _%target140818141201%_
                             _%tl140820141203%_))))
                    (let ((_%xarg140850141302%_
                           (reverse _%xarg140849141275%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl140829141230%_))
                          (_%__kont143810143811%_
                           _%xarg140850141302%_
                           _%hd140840141260%_
                           _%arg140826141222%_)
                          (_%__match143847143848%_
                           _%e140815141193%_
                           _%hd140816141196%_
                           _%tl140817141198%_
                           _%__splice143812143813%_
                           _%target140818141201%_
                           _%tl140820141203%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop140845141270%_
                                               _%target140842141265%_
                                               '()))
                                            (_%__match143847143848%_
                                             _%e140815141193%_
                                             _%hd140816141196%_
                                             _%tl140817141198%_
                                             _%__splice143812143813%_
                                             _%target140818141201%_
                                             _%tl140820141203%_))))
                                    (_%__match143847143848%_
                                     _%e140815141193%_
                                     _%hd140816141196%_
                                     _%tl140817141198%_
                                     _%__splice143812143813%_
                                     _%target140818141201%_
                                     _%tl140820141203%_))
                                (_%__match143847143848%_
                                 _%e140815141193%_
                                 _%hd140816141196%_
                                 _%tl140817141198%_
                                 _%__splice143812143813%_
                                 _%target140818141201%_
                                 _%tl140820141203%_))))
                        (_%__match143847143848%_
                         _%e140815141193%_
                         _%hd140816141196%_
                         _%tl140817141198%_
                         _%__splice143812143813%_
                         _%target140818141201%_
                         _%tl140820141203%_))
                    (_%__match143847143848%_
                     _%e140815141193%_
                     _%hd140816141196%_
                     _%tl140817141198%_
                     _%__splice143812143813%_
                     _%target140818141201%_
                     _%tl140820141203%_))
                (_%__match143847143848%_
                 _%e140815141193%_
                 _%hd140816141196%_
                 _%tl140817141198%_
                 _%__splice143812143813%_
                 _%target140818141201%_
                 _%tl140820141203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match143847143848%_
                                                 _%e140815141193%_
                                                 _%hd140816141196%_
                                                 _%tl140817141198%_
                                                 _%__splice143812143813%_
                                                 _%target140818141201%_
                                                 _%tl140820141203%_))))
                                        (_%__match143847143848%_
                                         _%e140815141193%_
                                         _%hd140816141196%_
                                         _%tl140817141198%_
                                         _%__splice143812143813%_
                                         _%target140818141201%_
                                         _%tl140820141203%_))
                                    (_%__match143847143848%_
                                     _%e140815141193%_
                                     _%hd140816141196%_
                                     _%tl140817141198%_
                                     _%__splice143812143813%_
                                     _%target140818141201%_
                                     _%tl140820141203%_))
                                (_%__match143847143848%_
                                 _%e140815141193%_
                                 _%hd140816141196%_
                                 _%tl140817141198%_
                                 _%__splice143812143813%_
                                 _%target140818141201%_
                                 _%tl140820141203%_))))
                        (_%__match143847143848%_
                         _%e140815141193%_
                         _%hd140816141196%_
                         _%tl140817141198%_
                         _%__splice143812143813%_
                         _%target140818141201%_
                         _%tl140820141203%_))))
                (_%__match143847143848%_
                 _%e140815141193%_
                 _%hd140816141196%_
                 _%tl140817141198%_
                 _%__splice143812143813%_
                 _%target140818141201%_
                 _%tl140820141203%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop140821141206%_
                                     _%target140818141201%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx143808143809%_))
                              (let ((_%e140815141193%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx143808143809%_))))
                                (let ((_%tl140817141198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140815141193%_)))
                                      (_%hd140816141196%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140815141193%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd140816141196%_))
                                      (let ((_%__splice143812143813%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd140816141196%_
                                                '0))))
                                        (let ((_%tl140820141203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143812143813%_
                                                  '1)))
                                              (_%target140818141201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143812143813%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140820141203%_))
                                              (_%__match143835143836%_
                                               _%e140815141193%_
                                               _%hd140816141196%_
                                               _%tl140817141198%_
                                               _%__splice143812143813%_
                                               _%target140818141201%_
                                               _%tl140820141203%_)
                                              (_%__match143847143848%_
                                               _%e140815141193%_
                                               _%hd140816141196%_
                                               _%tl140817141198%_
                                               _%__splice143812143813%_
                                               _%target140818141201%_
                                               _%tl140820141203%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl140817141198%_))
                                          (let ((_%e140903140947%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl140817141198%_))))
                                            (let ((_%tl140905140952%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e140903140947%_)))
                                                  (_%hd140904140950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e140903140947%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140904140950%_))
                                                  (let ((_%e140906140955%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140904140950%_))))
                                                    (let ((_%tl140908140960%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140906140955%_)))
                                                          (_%hd140907140958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140906140955%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd140907140958%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd140907140958%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140908140960%_))
                          (let ((_%e140909140963%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140908140960%_))))
                            (let ((_%tl140911140968%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140909140963%_)))
                                  (_%hd140910140966%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140909140963%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd140910140966%_))
                                  (let ((_%e140912140971%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd140910140966%_))))
                                    (let ((_%tl140914140976%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140912140971%_)))
                                          (_%hd140913140974%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140912140971%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd140913140974%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd140913140974%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl140914140976%_))
                                                  (let ((_%e140915140979%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl140914140976%_))))
                                                    (let ((_%tl140917140984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140915140979%_)))
                                                          (_%hd140916140982%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140915140979%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl140917140984%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl140911140968%_))
                      (let ((_%e140918140987%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl140911140968%_))))
                        (let ((_%tl140920140992%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140918140987%_)))
                              (_%hd140919140990%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140918140987%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd140919140990%_))
                              (let ((_%e140921140995%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd140919140990%_))))
                                (let ((_%tl140923141000%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140921140995%_)))
                                      (_%hd140922140998%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140921140995%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd140922140998%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd140922140998%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140923141000%_))
                                              (let ((_%e140924141003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140923141000%_))))
                                                (let ((_%tl140926141008%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140924141003%_)))
                                                      (_%hd140925141006%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140924141003%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl140926141008%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl140920140992%_))
                                                          (let ((_%e140927141011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl140920140992%_))))
                    (let ((_%tl140929141016%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140927141011%_)))
                          (_%hd140928141014%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140927141011%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl140929141016%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl140905140952%_))
                              (_%__kont143820143821%_
                               _%hd140925141006%_
                               _%hd140916140982%_
                               _%hd140816141196%_)
                              (let ()
                                (declare (not safe))
                                (_%g140810140934%_)))
                          (let () (declare (not safe)) (_%g140810140934%_)))))
                  (let () (declare (not safe)) (_%g140810140934%_)))
              (let () (declare (not safe)) (_%g140810140934%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g140810140934%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140810140934%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g140810140934%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g140810140934%_)))))
                      (let () (declare (not safe)) (_%g140810140934%_)))
                  (let () (declare (not safe)) (_%g140810140934%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140810140934%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g140810140934%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140810140934%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g140810140934%_)))))
                          (let () (declare (not safe)) (_%g140810140934%_)))
                      (let () (declare (not safe)) (_%g140810140934%_)))
                  (let () (declare (not safe)) (_%g140810140934%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140810140934%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140810140934%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g140810140934%_))))))))
                 (_%generate1140653%_
                  (lambda (_%args140788%_
                           _%arglen140789%_
                           _%hd140790%_
                           _%body140791%_)
                    (let* ((_%len140793%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd140790%_)))
                           (_%condition140798%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd140790%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen140789%_
                                                (cons _%len140793%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen140789%_ (cons _%len140793%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len140793%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen140789%_
                                                    (cons _%len140793%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen140789%_ (cons _%len140793%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch140800%_
                            (if (_%dispatch-case?140651%_
                                 _%hd140790%_
                                 _%body140791%_)
                                (_%dispatch-case-e140652%_
                                 _%hd140790%_
                                 _%body140791%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self140648%_
                                 _%hd140790%_
                                 _%body140791%_))))
                      (cons _%condition140798%_
                            (cons (cons 'apply
                                        (cons _%dispatch140800%_
                                              (cons _%args140788%_ '())))
                                  '()))))))
          (let* ((_%g140655140683%_
                  (lambda (_%g140656140680%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140656140680%_))))
                 (_%g140654140785%_
                  (lambda (_%g140656140686%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140656140686%_))
                        (let ((_%e140659140688%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140656140686%_))))
                          (let ((_%hd140660140691%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140659140688%_)))
                                (_%tl140661140693%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140659140688%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl140661140693%_))
                                (let ((_g144977_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl140661140693%_
                                          '0))))
                                  (begin
                                    (let ((_g144978_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144977_)
                                                 (##vector-length _g144977_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144978_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144978_)))
                                    (let ((_%target140662140696%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g144977_ 0)))
                                          (_%tl140664140698%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g144977_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140664140698%_))
                                          (letrec ((_%loop140665140701%_
                                                    (lambda (_%hd140663140704%_
                                                             _%body140669140706%_
                                                             _%hd140670140708%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd140663140704%_))
                                                          (let ((_%e140666140711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd140663140704%_))))
                    (let ((_%lp-hd140667140714%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140666140711%_)))
                          (_%lp-tl140668140716%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140666140711%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd140667140714%_))
                          (let ((_%e140673140719%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd140667140714%_))))
                            (let ((_%hd140674140722%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140673140719%_)))
                                  (_%tl140675140724%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140673140719%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl140675140724%_))
                                  (let ((_%e140676140727%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl140675140724%_))))
                                    (let ((_%hd140677140730%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140676140727%_)))
                                          (_%tl140678140732%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140676140727%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140678140732%_))
                                          (_%loop140665140701%_
                                           _%lp-tl140668140716%_
                                           (cons _%hd140677140730%_
                                                 _%body140669140706%_)
                                           (cons _%hd140674140722%_
                                                 _%hd140670140708%_))
                                          (_%g140655140683%_
                                           _%g140656140686%_))))
                                  (_%g140655140683%_ _%g140656140686%_))))
                          (_%g140655140683%_ _%g140656140686%_))))
                  (let ((_%body140671140735%_ (reverse _%body140669140706%_))
                        (_%hd140672140737%_ (reverse _%hd140670140708%_)))
                    ((lambda (_%L140740%_ _%L140741%_)
                       (let ((_%args140760%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen140761%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name140762%_
                              (let ((_%$e140757%_
                                     (let ((__tmp144979
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp144979 _%stx140649%_))))
                                (if _%$e140757%_
                                    _%$e140757%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args140760%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen140761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args140760%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args140760%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp144983
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name140762%_
                                                                (cons _%args140760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp144980
                                  (map (lambda (_%g140763140766%_
                                                _%g140764140768%_)
                                         (_%generate1140653%_
                                          _%args140760%_
                                          _%arglen140761%_
                                          _%g140763140766%_
                                          _%g140764140768%_))
                                       (let ((__tmp144981
                                              (lambda (_%g140770140773%_
                                                       _%g140771140775%_)
                                                (cons _%g140770140773%_
                                                      _%g140771140775%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp144981
                                          '()
                                          _%L140741%_))
                                       (let ((__tmp144982
                                              (lambda (_%g140777140780%_
                                                       _%g140778140782%_)
                                                (cons _%g140777140780%_
                                                      _%g140778140782%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp144982
                                          '()
                                          _%L140740%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp144983 __tmp144980)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body140671140735%_
                     _%hd140672140737%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop140665140701%_
                                             _%target140662140696%_
                                             '()
                                             '()))
                                          (_%g140655140683%_
                                           _%g140656140686%_)))))
                                (_%g140655140683%_ _%g140656140686%_))))
                        (_%g140655140683%_ _%g140656140686%_)))))
            (_%g140654140785%_ _%stx140649%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self139885%_ _%stx139886%_ _%compiled-body?139887%_)
        (letrec ((_%generate-simple139889%_
                  (lambda (_%hd140633%_ _%body140634%_)
                    (_%coalesce-boolean139890%_
                     (_%simplify-let139891%_
                      (gxc#generate-runtime-simple-let
                       _%self139885%_
                       'let
                       _%hd140633%_
                       _%body140634%_
                       _%compiled-body?139887%_)))))
                 (_%coalesce-boolean139890%_
                  (lambda (_%code140494%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code140495140521%_ _%code140494%_)
                               (_%else140497140529%_
                                (lambda () _%code140494%_))
                               (_%K140499140566%_
                                (lambda (_%expr2140532%_
                                         _%expr1140533%_
                                         _%id140534%_)
                                  (let* ((_%expr2140535140543%_
                                          _%expr2140532%_)
                                         (_%else140537140551%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1140533%_
                                                        (cons _%expr2140532%_
                                                              '())))))
                                         (_%K140539140556%_
                                          (lambda (_%exprs140554%_)
                                            (cons 'or
                                                  (cons _%expr1140533%_
                                                        _%exprs140554%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2140535140543%_))
                                        (let ((_%hd140540140559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2140535140543%_)))
                                              (_%tl140541140561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2140535140543%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140540140559%_ 'or))
                                              (let ((_%exprs140564%_
                                                     _%tl140541140561%_))
                                                (_%K140539140556%_
                                                 _%exprs140564%_))
                                              (_%else140537140551%_)))
                                        (_%else140537140551%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code140495140521%_))
                              (let ((_%hd140500140569%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code140495140521%_)))
                                    (_%tl140501140571%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code140495140521%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd140500140569%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl140501140571%_))
                                        (let ((_%hd140502140574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl140501140571%_)))
                                              (_%tl140503140576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl140501140571%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd140502140574%_))
                                              (let ((_%hd140514140579%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd140502140574%_)))
                                                    (_%tl140515140581%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd140502140574%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd140514140579%_))
                                                    (let ((_%hd140516140584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd140514140579%_)))
                                                          (_%tl140517140586%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd140514140579%_))))
                                                      (let ((_%id140589%_
                                                             _%hd140516140584%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl140517140586%_))
                                                            (let ((_%hd140518140591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl140517140586%_)))
                          (_%tl140519140593%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140517140586%_))))
                      (let ((_%expr1140596%_ _%hd140518140591%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl140519140593%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl140515140581%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140503140576%_))
                                    (let ((_%hd140504140598%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140503140576%_)))
                                          (_%tl140505140600%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140503140576%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd140504140598%_))
                                          (let ((_%hd140506140603%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd140504140598%_)))
                                                (_%tl140507140605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd140504140598%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd140506140603%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140507140605%_))
                                                    (let ((_%hd140508140608%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140507140605%_)))
                                                          (_%tl140509140610%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140507140605%_))))
                                                      (if ((lambda (_%g140612140614%_)
                                                             (eq? _%g140612140614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id140589%_))
                   _%hd140508140608%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl140509140610%_))
                      (let ((_%hd140510140617%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl140509140610%_)))
                            (_%tl140511140619%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl140509140610%_))))
                        (if ((lambda (_%g140621140623%_)
                               (eq? _%g140621140623%_ _%id140589%_))
                             _%hd140510140617%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140511140619%_))
                                (let ((_%hd140512140626%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140511140619%_)))
                                      (_%tl140513140628%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140511140619%_))))
                                  (let ((_%expr2140631%_ _%hd140512140626%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl140513140628%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl140505140600%_))
                                            (_%K140499140566%_
                                             _%expr2140631%_
                                             _%expr1140596%_
                                             _%id140589%_)
                                            (_%else140497140529%_))
                                        (_%else140497140529%_))))
                                (_%else140497140529%_))
                            (_%else140497140529%_)))
                      (_%else140497140529%_))
                  (_%else140497140529%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140497140529%_))
                                                (_%else140497140529%_)))
                                          (_%else140497140529%_)))
                                    (_%else140497140529%_))
                                (_%else140497140529%_))
                            (_%else140497140529%_))))
                    (_%else140497140529%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140497140529%_)))
                                              (_%else140497140529%_)))
                                        (_%else140497140529%_))
                                    (_%else140497140529%_)))
                              (_%else140497140529%_)))
                        _%code140494%_)))
                 (_%simplify-let139891%_
                  (lambda (_%code140193%_)
                    (let* ((_%code140194140266%_ _%code140193%_)
                           (_%else140199140274%_ (lambda () _%code140193%_)))
                      (let ((_%K140258140474%_
                             (lambda (_%expr140472%_) _%expr140472%_))
                            (_%K140241140420%_
                             (lambda (_%body140416%_
                                      _%expr140417%_
                                      _%id140418%_)
                               (cons 'let
                                     (cons (cons (cons _%id140418%_
                                                       (cons _%expr140417%_
                                                             '()))
                                                 '())
                                           _%body140416%_))))
                            (_%K140218140344%_
                             (lambda (_%body140338%_
                                      _%expr2140339%_
                                      _%id2140340%_
                                      _%expr1140341%_
                                      _%id1140342%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140342%_
                                                       (cons _%expr1140341%_
                                                             '()))
                                                 (cons (cons _%id2140340%_
                                                             (cons _%expr2140339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body140338%_))))
                            (_%K140201140283%_
                             (lambda (_%body140278%_
                                      _%bind140279%_
                                      _%expr1140280%_
                                      _%id1140281%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140281%_
                                                       (cons _%expr1140280%_
                                                             '()))
                                                 _%bind140279%_)
                                           _%body140278%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code140194140266%_))
                            (let ((_%tl140260140479%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code140194140266%_)))
                                  (_%hd140259140477%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code140194140266%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140259140477%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl140260140479%_))
                                      (let ((_%tl140262140484%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl140260140479%_)))
                                            (_%hd140261140482%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl140260140479%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd140261140482%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl140262140484%_))
                                                (let ((_%tl140264140489%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl140262140484%_)))
                                                      (_%hd140263140487%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl140262140484%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl140264140489%_))
                                                      (let ((_%expr140492%_
                                                             _%hd140263140487%_))
                                                        (_%K140258140474%_
                                                         _%expr140492%_))
                                                      (_%else140199140274%_)))
                                                (_%else140199140274%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd140261140482%_))
                                                (let ((_%tl140253140435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd140261140482%_)))
                                                      (_%hd140252140433%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd140261140482%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd140252140433%_))
                                                      (let ((_%tl140255140440%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd140252140433%_)))
                    (_%hd140254140438%_
                     (let () (declare (not safe)) (##car _%hd140252140433%_))))
                (if (let () (declare (not safe)) (##pair? _%tl140255140440%_))
                    (let ((_%tl140257140447%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140255140440%_)))
                          (_%hd140256140445%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl140255140440%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl140257140447%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl140253140435%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl140262140484%_))
                                  (let ((_%tl140247140454%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl140262140484%_)))
                                        (_%hd140246140452%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl140262140484%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd140246140452%_))
                                        (let ((_%tl140249140459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd140246140452%_)))
                                              (_%hd140248140457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd140246140452%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140248140457%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl140249140459%_))
                                                  (let ((_%tl140251140464%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl140249140459%_)))
                                                        (_%hd140250140462%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl140249140459%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd140250140462%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl140247140454%_))
                                                            (let ((_%id140443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd140254140438%_)
                          (_%expr140450%_ _%hd140256140445%_)
                          (_%body140467%_ _%tl140251140464%_))
                      (_%K140241140420%_
                       _%body140467%_
                       _%expr140450%_
                       _%id140443%_))
                    (_%else140199140274%_))
                (if (let () (declare (not safe)) (##pair? _%hd140250140462%_))
                    (let ((_%tl140230140393%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd140250140462%_)))
                          (_%hd140229140391%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd140250140462%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd140229140391%_))
                          (let ((_%tl140232140398%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd140229140391%_)))
                                (_%hd140231140396%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd140229140391%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140232140398%_))
                                (let ((_%tl140234140405%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140232140398%_)))
                                      (_%hd140233140403%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140232140398%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140234140405%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140230140393%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl140247140454%_))
                                              (let ((_%id1140367%_
                                                     _%hd140254140438%_)
                                                    (_%expr1140374%_
                                                     _%hd140256140445%_)
                                                    (_%id2140401%_
                                                     _%hd140231140396%_)
                                                    (_%expr2140408%_
                                                     _%hd140233140403%_)
                                                    (_%body140410%_
                                                     _%tl140251140464%_))
                                                (_%K140218140344%_
                                                 _%body140410%_
                                                 _%expr2140408%_
                                                 _%id2140401%_
                                                 _%expr1140374%_
                                                 _%id1140367%_))
                                              (_%else140199140274%_))
                                          (_%else140199140274%_))
                                      (_%else140199140274%_)))
                                (_%else140199140274%_)))
                          (_%else140199140274%_)))
                    (_%else140199140274%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else140199140274%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd140248140457%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl140249140459%_))
                                                      (let ((_%tl140211140327%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl140249140459%_)))
                    (_%hd140210140325%_
                     (let () (declare (not safe)) (##car _%tl140249140459%_))))
                (if (let () (declare (not safe)) (##null? _%tl140247140454%_))
                    (let ((_%id1140306%_ _%hd140254140438%_)
                          (_%expr1140313%_ _%hd140256140445%_)
                          (_%bind140330%_ _%hd140210140325%_)
                          (_%body140332%_ _%tl140211140327%_))
                      (_%K140201140283%_
                       _%body140332%_
                       _%bind140330%_
                       _%expr1140313%_
                       _%id1140306%_))
                    (_%else140199140274%_)))
              (_%else140199140274%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else140199140274%_))))
                                        (_%else140199140274%_)))
                                  (_%else140199140274%_))
                              (_%else140199140274%_))
                          (_%else140199140274%_)))
                    (_%else140199140274%_)))
              (_%else140199140274%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else140199140274%_))))
                                      (_%else140199140274%_))
                                  (_%else140199140274%_)))
                            (_%else140199140274%_))))))
                 (_%generate-values139892%_
                  (lambda (_%hd140006%_ _%body140007%_)
                    (let _%lp140009%_ ((_%rest140011%_ _%hd140006%_)
                                       (_%bind140012%_ '())
                                       (_%check140013%_ '())
                                       (_%post140014%_ '()))
                      (let* ((_%__stx144137144138%_ _%rest140011%_)
                             (_%g140017140028%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144137144138%_)))))
                        (let ((_%__kont144139144140%_
                               (lambda (_%L140055%_ _%L140056%_)
                                 (let* ((_%__stx144093144094%_ _%L140056%_)
                                        (_%g140071140096%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144093144094%_)))))
                                   (let ((_%__kont144095144096%_
                                          (lambda (_%L140169%_ _%L140170%_)
                                            (let ((_%eid140184%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140170%_)))
                                                  (_%expr140185%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139885%_
                                                      _%L140169%_))))
                                              (_%lp140009%_
                                               _%L140055%_
                                               (cons (cons _%eid140184%_
                                                           (cons _%expr140185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind140012%_)
                                               _%check140013%_
                                               _%post140014%_))))
                                         (_%__kont144097144098%_
                                          (lambda (_%L140117%_ _%L140118%_)
                                            (let* ((_%vals140131%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140133%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals140131%_
                                                     _%L140118%_
                                                     _%L140117%_))
                                                   (_%refs140135%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals140131%_
                                                     _%L140118%_))
                                                   (_%expr140137%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self139885%_
                                                       _%L140117%_))))
                                              (_%lp140009%_
                                               _%L140055%_
                                               (cons (cons _%vals140131%_
                                                           (cons _%expr140137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind140012%_)
                                               (cons _%check-values140133%_
                                                     _%check140013%_)
                                               (cons _%refs140135%_
                                                     _%post140014%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144093144094%_))
                                         (let ((_%e140075140145%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144093144094%_))))
                                           (let ((_%tl140077140150%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140075140145%_)))
                                                 (_%hd140076140148%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140075140145%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140076140148%_))
                                                 (let ((_%e140078140153%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140076140148%_))))
                                                   (let ((_%tl140080140158%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140078140153%_)))
                                                         (_%hd140079140156%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140078140153%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140080140158%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140077140150%_))
                     (let ((_%e140081140161%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140077140150%_))))
                       (let ((_%tl140083140166%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140081140161%_)))
                             (_%hd140082140164%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140081140161%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140083140166%_))
                             (_%__kont144095144096%_
                              _%hd140082140164%_
                              _%hd140079140156%_)
                             (let ()
                               (declare (not safe))
                               (_%g140071140096%_)))))
                     (let () (declare (not safe)) (_%g140071140096%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140077140150%_))
                     (let ((_%e140089140109%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140077140150%_))))
                       (let ((_%tl140091140114%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140089140109%_)))
                             (_%hd140090140112%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140089140109%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140091140114%_))
                             (_%__kont144097144098%_
                              _%hd140090140112%_
                              _%hd140076140148%_)
                             (let ()
                               (declare (not safe))
                               (_%g140071140096%_)))))
                     (let () (declare (not safe)) (_%g140071140096%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140077140150%_))
                                                     (let ((_%e140089140109%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140077140150%_))))
                                                       (let ((_%tl140091140114%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140089140109%_)))
                     (_%hd140090140112%_
                      (let () (declare (not safe)) (##car _%e140089140109%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140091140114%_))
                     (_%__kont144097144098%_
                      _%hd140090140112%_
                      _%hd140076140148%_)
                     (let () (declare (not safe)) (_%g140071140096%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140071140096%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140071140096%_)))))))
                              (_%__kont144141144142%_
                               (lambda ()
                                 (let* ((_%body140035%_
                                         (if _%compiled-body?139887%_
                                             _%body140007%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self139885%_
                                                _%body140007%_))))
                                        (_%body140037%_
                                         (_%generate-values-post139893%_
                                          _%post140014%_
                                          _%body140035%_))
                                        (_%body140039%_
                                         (_%generate-values-check139894%_
                                          _%check140013%_
                                          _%body140037%_)))
                                   (cons 'let
                                         (cons (reverse _%bind140012%_)
                                               (cons _%body140039%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144137144138%_))
                              (let ((_%e140021140047%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144137144138%_))))
                                (let ((_%tl140023140052%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140021140047%_)))
                                      (_%hd140022140050%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140021140047%_))))
                                  (_%__kont144139144140%_
                                   _%tl140023140052%_
                                   _%hd140022140050%_)))
                              (_%__kont144141144142%_)))))))
                 (_%generate-values-post139893%_
                  (lambda (_%post139965%_ _%body139966%_)
                    (let _%lp139968%_ ((_%rest139970%_ _%post139965%_)
                                       (_%body139971%_ _%body139966%_))
                      (let* ((_%rest139972139980%_ _%rest139970%_)
                             (_%else139974139988%_ (lambda () _%body139971%_))
                             (_%K139976139994%_
                              (lambda (_%rest139991%_ _%bind139992%_)
                                (_%lp139968%_
                                 _%rest139991%_
                                 (cons 'let
                                       (cons _%bind139992%_
                                             (cons _%body139971%_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139972139980%_))
                            (let ((_%hd139977139997%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139972139980%_)))
                                  (_%tl139978139999%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139972139980%_))))
                              (let* ((_%bind140002%_ _%hd139977139997%_)
                                     (_%rest140004%_ _%tl139978139999%_))
                                (_%K139976139994%_
                                 _%rest140004%_
                                 _%bind140002%_)))
                            (_%else139974139988%_))))))
                 (_%generate-values-check139894%_
                  (lambda (_%check139962%_ _%body139963%_)
                    (cons 'begin
                          (let ((__tmp144985 (cons _%body139963%_ '()))
                                (__tmp144984 (reverse _%check139962%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp144985 __tmp144984))))))
          (let* ((_%g139896139913%_
                  (lambda (_%g139897139910%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139897139910%_))))
                 (_%g139895139959%_
                  (lambda (_%g139897139916%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139897139916%_))
                        (let ((_%e139900139918%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139897139916%_))))
                          (let ((_%hd139901139921%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139900139918%_)))
                                (_%tl139902139923%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139900139918%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139902139923%_))
                                (let ((_%e139903139926%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139902139923%_))))
                                  (let ((_%hd139904139929%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139903139926%_)))
                                        (_%tl139905139931%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139903139926%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139905139931%_))
                                        (let ((_%e139906139934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139905139931%_))))
                                          (let ((_%hd139907139937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139906139934%_)))
                                                (_%tl139908139939%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139906139934%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139908139939%_))
                                                ((lambda (_%L139942%_
                                                          _%L139943%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L139943%_)
                                                       (_%generate-simple139889%_
                                                        _%L139943%_
                                                        _%L139942%_)
                                                       (_%generate-values139892%_
                                                        _%L139943%_
                                                        _%L139942%_)))
                                                 _%hd139907139937%_
                                                 _%hd139904139929%_)
                                                (_%g139896139913%_
                                                 _%g139897139916%_))))
                                        (_%g139896139913%_
                                         _%g139897139916%_))))
                                (_%g139896139913%_ _%g139897139916%_))))
                        (_%g139896139913%_ _%g139897139916%_)))))
            (_%g139895139959%_ _%stx139886%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self140639%_ _%stx140640%_)
        (let ((_%compiled-body?140642%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self140639%_
           _%stx140640%_
           _%compiled-body?140642%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g144987_
        (let ((_g144986_ (let () (declare (not safe)) (##length _g144987_))))
          (cond ((let () (declare (not safe)) (##fx= _g144986_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g144987_))
                ((let () (declare (not safe)) (##fx= _g144986_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g144987_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g144987_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals139779%_ _%hd139780%_)
        (let _%lp139782%_ ((_%rest139784%_ _%hd139780%_)
                           (_%k139785%_ '0)
                           (_%r139786%_ '()))
          (let* ((_%__stx144151144152%_ _%rest139784%_)
                 (_%g139791139808%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx144151144152%_)))))
            (let ((_%__kont144153144154%_
                   (lambda (_%L139871%_)
                     (_%lp139782%_
                      _%L139871%_
                      (let () (declare (not safe)) (##fx+ _%k139785%_ '1))
                      _%r139786%_)))
                  (_%__kont144155144156%_
                   (lambda (_%L139844%_ _%L139845%_)
                     (_%lp139782%_
                      _%L139844%_
                      (let () (declare (not safe)) (##fx+ _%k139785%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L139845%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals139779%_
                                         _%k139785%_
                                         _%L139844%_)
                                        '()))
                            _%r139786%_))))
                  (_%__kont144157144158%_
                   (lambda (_%L139820%_)
                     (let ((__tmp144988
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L139820%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals139779%_
                                               _%k139785%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp144988 _%r139786%_))))
                  (_%__kont144159144160%_ (lambda () (reverse _%r139786%_))))
              (let ((_%g139789139831%_
                     (lambda ()
                       (let ((_%L139820%_ _%__stx144151144152%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L139820%_))
                             (_%__kont144157144158%_ _%L139820%_)
                             (_%__kont144159144160%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx144151144152%_))
                    (let ((_%e139794139860%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx144151144152%_))))
                      (let ((_%tl139796139865%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139794139860%_)))
                            (_%hd139795139863%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139794139860%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd139795139863%_))
                            (let ((_%e139797139868%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd139795139863%_))))
                              (if (equal? _%e139797139868%_ '#f)
                                  (_%__kont144153144154%_ _%tl139796139865%_)
                                  (_%__kont144155144156%_
                                   _%tl139796139865%_
                                   _%hd139795139863%_)))
                            (_%__kont144155144156%_
                             _%tl139796139865%_
                             _%hd139795139863%_))))
                    (let () (declare (not safe)) (_%g139789139831%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self139458%_ _%stx139459%_ _%compiled-body?139460%_)
        (letrec ((_%generate-simple139462%_
                  (lambda (_%hd139764%_ _%body139765%_)
                    (gxc#generate-runtime-simple-let
                     _%self139458%_
                     'letrec
                     _%hd139764%_
                     _%body139765%_
                     _%compiled-body?139460%_)))
                 (_%generate-values139463%_
                  (lambda (_%hd139543%_ _%body139544%_)
                    (let _%lp139546%_ ((_%rest139548%_ _%hd139543%_)
                                       (_%bind139549%_ '())
                                       (_%check139550%_ '())
                                       (_%post139551%_ '()))
                      (let* ((_%__stx144225144226%_ _%rest139548%_)
                             (_%g139554139565%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144225144226%_)))))
                        (let ((_%__kont144227144228%_
                               (lambda (_%L139592%_ _%L139593%_)
                                 (let* ((_%__stx144181144182%_ _%L139593%_)
                                        (_%g139608139633%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144181144182%_)))))
                                   (let ((_%__kont144183144184%_
                                          (lambda (_%L139740%_ _%L139741%_)
                                            (let ((_%eid139755%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L139741%_)))
                                                  (_%expr139756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139458%_
                                                      _%L139740%_))))
                                              (_%lp139546%_
                                               _%L139592%_
                                               (cons (cons _%eid139755%_
                                                           (cons _%expr139756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind139549%_)
                                               _%check139550%_
                                               _%post139551%_))))
                                         (_%__kont144185144186%_
                                          (lambda (_%L139654%_ _%L139655%_)
                                            (let* ((_%vals139668%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values139670%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals139668%_
                                                     _%L139655%_
                                                     _%L139654%_))
                                                   (_%refs139672%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals139668%_
                                                     _%L139655%_))
                                                   (_%expr139674%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self139458%_
                                                       _%L139654%_))))
                                              (_%lp139546%_
                                               _%L139592%_
                                               (let ((__tmp144990
                                                      (cons (cons _%vals139668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr139674%_ '()))
                    _%bind139549%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp144989
                                                      (map (lambda (_%e139676139678%_)
                                                             (let* ((_%g139680139689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e139676139678%_)
                            (_%E139682139693%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g139680139689%_
                                        '([eid _])))
                               '#!void))
                            (_%K139683139698%_
                             (lambda (_%eid139696%_)
                               (cons _%eid139696%_ (cons '#!void '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g139680139689%_))
                           (let ((_%hd139684139701%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g139680139689%_)))
                                 (_%tl139685139703%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g139680139689%_))))
                             (let ((_%eid139706%_ _%hd139684139701%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%tl139685139703%_))
                                   (let ((_%tl139687139708%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl139685139703%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _%tl139687139708%_))
                                         (_%K139683139698%_ _%eid139706%_)
                                         (_%E139682139693%_)))
                                   (_%E139682139693%_))))
                           (_%E139682139693%_))))
                   _%refs139672%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp144990
                                                  __tmp144989))
                                               (cons _%check-values139670%_
                                                     _%check139550%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs139672%_
                                                  _%post139551%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144181144182%_))
                                         (let ((_%e139612139716%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144181144182%_))))
                                           (let ((_%tl139614139721%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139612139716%_)))
                                                 (_%hd139613139719%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139612139716%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd139613139719%_))
                                                 (let ((_%e139615139724%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd139613139719%_))))
                                                   (let ((_%tl139617139729%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139615139724%_)))
                                                         (_%hd139616139727%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139615139724%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139617139729%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139614139721%_))
                     (let ((_%e139618139732%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139614139721%_))))
                       (let ((_%tl139620139737%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139618139732%_)))
                             (_%hd139619139735%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139618139732%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139620139737%_))
                             (_%__kont144183144184%_
                              _%hd139619139735%_
                              _%hd139616139727%_)
                             (let ()
                               (declare (not safe))
                               (_%g139608139633%_)))))
                     (let () (declare (not safe)) (_%g139608139633%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl139614139721%_))
                     (let ((_%e139626139646%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139614139721%_))))
                       (let ((_%tl139628139651%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139626139646%_)))
                             (_%hd139627139649%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139626139646%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139628139651%_))
                             (_%__kont144185144186%_
                              _%hd139627139649%_
                              _%hd139613139719%_)
                             (let ()
                               (declare (not safe))
                               (_%g139608139633%_)))))
                     (let () (declare (not safe)) (_%g139608139633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139614139721%_))
                                                     (let ((_%e139626139646%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139614139721%_))))
                                                       (let ((_%tl139628139651%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139626139646%_)))
                     (_%hd139627139649%_
                      (let () (declare (not safe)) (##car _%e139626139646%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139628139651%_))
                     (_%__kont144185144186%_
                      _%hd139627139649%_
                      _%hd139613139719%_)
                     (let () (declare (not safe)) (_%g139608139633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g139608139633%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g139608139633%_)))))))
                              (_%__kont144229144230%_
                               (lambda ()
                                 (let* ((_%body139572%_
                                         (if _%compiled-body?139460%_
                                             _%body139544%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self139458%_
                                                _%body139544%_))))
                                        (_%body139574%_
                                         (_%generate-values-post139465%_
                                          _%post139551%_
                                          _%body139572%_))
                                        (_%body139576%_
                                         (_%generate-values-check139464%_
                                          _%check139550%_
                                          _%body139574%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind139549%_)
                                               (cons _%body139576%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144225144226%_))
                              (let ((_%e139558139584%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144225144226%_))))
                                (let ((_%tl139560139589%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139558139584%_)))
                                      (_%hd139559139587%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139558139584%_))))
                                  (_%__kont144227144228%_
                                   _%tl139560139589%_
                                   _%hd139559139587%_)))
                              (_%__kont144229144230%_)))))))
                 (_%generate-values-check139464%_
                  (lambda (_%check139540%_ _%body139541%_)
                    (cons 'begin
                          (let ((__tmp144992 (cons _%body139541%_ '()))
                                (__tmp144991 (reverse _%check139540%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp144992 __tmp144991)))))
                 (_%generate-values-post139465%_
                  (lambda (_%post139533%_ _%body139534%_)
                    (cons 'begin
                          (let ((__tmp144996 (cons _%body139534%_ '()))
                                (__tmp144993
                                 (let ((__tmp144995
                                        (lambda (_%g139535139537%_)
                                          (cons 'set! _%g139535139537%_)))
                                       (__tmp144994 (reverse _%post139533%_)))
                                   (declare (not safe))
                                   (##map __tmp144995 __tmp144994))))
                            (declare (not safe))
                            (__foldr1 cons __tmp144996 __tmp144993))))))
          (let* ((_%g139467139484%_
                  (lambda (_%g139468139481%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139468139481%_))))
                 (_%g139466139530%_
                  (lambda (_%g139468139487%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139468139487%_))
                        (let ((_%e139471139489%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139468139487%_))))
                          (let ((_%hd139472139492%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139471139489%_)))
                                (_%tl139473139494%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139471139489%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139473139494%_))
                                (let ((_%e139474139497%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139473139494%_))))
                                  (let ((_%hd139475139500%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139474139497%_)))
                                        (_%tl139476139502%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139474139497%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139476139502%_))
                                        (let ((_%e139477139505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139476139502%_))))
                                          (let ((_%hd139478139508%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139477139505%_)))
                                                (_%tl139479139510%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139477139505%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139479139510%_))
                                                ((lambda (_%L139513%_
                                                          _%L139514%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L139514%_)
                                                       (_%generate-simple139462%_
                                                        _%L139514%_
                                                        _%L139513%_)
                                                       (_%generate-values139463%_
                                                        _%L139514%_
                                                        _%L139513%_)))
                                                 _%hd139478139508%_
                                                 _%hd139475139500%_)
                                                (_%g139467139484%_
                                                 _%g139468139487%_))))
                                        (_%g139467139484%_
                                         _%g139468139487%_))))
                                (_%g139467139484%_ _%g139468139487%_))))
                        (_%g139467139484%_ _%g139468139487%_)))))
            (_%g139466139530%_ _%stx139459%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self139770%_ _%stx139771%_)
        (let ((_%compiled-body?139773%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self139770%_
           _%stx139771%_
           _%compiled-body?139773%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g144998_
        (let ((_g144997_ (let () (declare (not safe)) (##length _g144998_))))
          (cond ((let () (declare (not safe)) (##fx= _g144997_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g144998_))
                ((let () (declare (not safe)) (##fx= _g144997_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g144998_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g144998_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self139039%_ _%stx139040%_)
        (letrec ((_%generate-values139042%_
                  (lambda (_%hd139285%_ _%body139286%_)
                    (let _%lp139288%_ ((_%rest139290%_ _%hd139285%_)
                                       (_%bind139291%_ '()))
                      (let* ((_%rest139292139300%_ _%rest139290%_)
                             (_%else139294139311%_
                              (lambda ()
                                (let ((_%bind139308%_ (reverse _%bind139291%_))
                                      (_%body139309%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139039%_
                                          _%body139286%_))))
                                  (cons 'letrec*
                                        (cons _%bind139308%_
                                              (cons _%body139309%_ '()))))))
                             (_%K139296139445%_
                              (lambda (_%rest139314%_ _%hd-bind139315%_)
                                (let* ((_%__stx144239144240%_
                                        _%hd-bind139315%_)
                                       (_%g139318139343%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx144239144240%_)))))
                                  (let ((_%__kont144241144242%_
                                         (lambda (_%L139424%_ _%L139425%_)
                                           (let ((_%eid139439%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L139425%_)))
                                                 (_%expr139440%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self139039%_
                                                     _%L139424%_))))
                                             (_%lp139288%_
                                              _%rest139314%_
                                              (cons (cons _%eid139439%_
                                                          (cons _%expr139440%_
                                                                '()))
                                                    _%bind139291%_)))))
                                        (_%__kont144243144244%_
                                         (lambda (_%L139364%_ _%L139365%_)
                                           (let* ((_%vals139384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp139386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values139388%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp139386%_
                                                    _%L139365%_
                                                    _%L139364%_))
                                                  (_%refs139390%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals139384%_
                                                    _%L139365%_))
                                                  (_%expr139392%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139039%_
                                                      _%L139364%_))))
                                             (_%lp139288%_
                                              _%rest139314%_
                                              (let ((__tmp144999
                                                     (cons (cons _%vals139384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp139386%_
                                                       (cons _%expr139392%_
                                                             '()))
                                                 '())
                                           (cons _%check-values139388%_
                                                 (cons _%tmp139386%_ '()))))
                               '()))
                   _%bind139291%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp144999
                                                 _%refs139390%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144239144240%_))
                                        (let ((_%e139322139400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144239144240%_))))
                                          (let ((_%tl139324139405%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139322139400%_)))
                                                (_%hd139323139403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139322139400%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd139323139403%_))
                                                (let ((_%e139325139408%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd139323139403%_))))
                                                  (let ((_%tl139327139413%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139325139408%_)))
                                                        (_%hd139326139411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139325139408%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139327139413%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl139324139405%_))
                                                            (let ((_%e139328139416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139324139405%_))))
                      (let ((_%tl139330139421%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139328139416%_)))
                            (_%hd139329139419%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139328139416%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139330139421%_))
                            (_%__kont144241144242%_
                             _%hd139329139419%_
                             _%hd139326139411%_)
                            (let ()
                              (declare (not safe))
                              (_%g139318139343%_)))))
                    (let () (declare (not safe)) (_%g139318139343%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl139324139405%_))
                    (let ((_%e139336139356%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139324139405%_))))
                      (let ((_%tl139338139361%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139336139356%_)))
                            (_%hd139337139359%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139336139356%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139338139361%_))
                            (_%__kont144243144244%_
                             _%hd139337139359%_
                             _%hd139323139403%_)
                            (let ()
                              (declare (not safe))
                              (_%g139318139343%_)))))
                    (let () (declare (not safe)) (_%g139318139343%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139324139405%_))
                                                    (let ((_%e139336139356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139324139405%_))))
                                                      (let ((_%tl139338139361%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139336139356%_)))
                    (_%hd139337139359%_
                     (let () (declare (not safe)) (##car _%e139336139356%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139338139361%_))
                    (_%__kont144243144244%_
                     _%hd139337139359%_
                     _%hd139323139403%_)
                    (let () (declare (not safe)) (_%g139318139343%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g139318139343%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139318139343%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139292139300%_))
                            (let ((_%hd139297139448%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139292139300%_)))
                                  (_%tl139298139450%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139292139300%_))))
                              (let* ((_%hd-bind139453%_ _%hd139297139448%_)
                                     (_%rest139455%_ _%tl139298139450%_))
                                (_%K139296139445%_
                                 _%rest139455%_
                                 _%hd-bind139453%_)))
                            (_%else139294139311%_))))))
                 (_%generate-letrec?139043%_
                  (lambda (_%hd139175%_)
                    (let _%lp139177%_ ((_%rest139179%_ _%hd139175%_))
                      (let* ((_%rest139180139188%_ _%rest139179%_)
                             (_%else139182139196%_ (lambda () '#t))
                             (_%K139184139273%_
                              (lambda (_%rest139199%_ _%hd-bind139200%_)
                                (let* ((_%g139202139219%_
                                        (lambda (_%g139203139216%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g139203139216%_))))
                                       (_%g139201139270%_
                                        (lambda (_%g139203139222%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g139203139222%_))
                                              (let ((_%e139206139224%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g139203139222%_))))
                                                (let ((_%hd139207139227%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139206139224%_)))
                                                      (_%tl139208139229%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139206139224%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd139207139227%_))
                                                      (let ((_%e139209139232%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd139207139227%_))))
                (let ((_%hd139210139235%_
                       (let () (declare (not safe)) (##car _%e139209139232%_)))
                      (_%tl139211139237%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139209139232%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139211139237%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139208139229%_))
                          (let ((_%e139212139240%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139208139229%_))))
                            (let ((_%hd139213139243%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139212139240%_)))
                                  (_%tl139214139245%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139212139240%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl139214139245%_))
                                  ((lambda (_%L139248%_ _%L139249%_)
                                     (if (_%is-lambda-expr?139044%_
                                          _%L139248%_)
                                         (_%lp139177%_ _%rest139199%_)
                                         '#f))
                                   _%hd139213139243%_
                                   _%hd139210139235%_)
                                  (_%g139202139219%_ _%g139203139222%_))))
                          (_%g139202139219%_ _%g139203139222%_))
                      (_%g139202139219%_ _%g139203139222%_))))
              (_%g139202139219%_ _%g139203139222%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139202139219%_
                                               _%g139203139222%_)))))
                                  (_%g139201139270%_ _%hd-bind139200%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139180139188%_))
                            (let ((_%hd139185139276%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139180139188%_)))
                                  (_%tl139186139278%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139180139188%_))))
                              (let* ((_%hd-bind139281%_ _%hd139185139276%_)
                                     (_%rest139283%_ _%tl139186139278%_))
                                (_%K139184139273%_
                                 _%rest139283%_
                                 _%hd-bind139281%_)))
                            (_%else139182139196%_))))))
                 (_%is-lambda-expr?139044%_
                  (lambda (_%expr139112%_)
                    (let* ((_%__stx144283144284%_ _%expr139112%_)
                           (_%g139115139129%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144283144284%_)))))
                      (let ((_%__kont144285144286%_
                             (lambda (_%L139157%_ _%L139158%_) '#t))
                            (_%__kont144287144288%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx144283144284%_))
                            (let ((_%e139119139141%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx144283144284%_))))
                              (let ((_%tl139121139146%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139119139141%_)))
                                    (_%hd139120139144%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139119139141%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd139120139144%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd139120139144%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl139121139146%_))
                                            (let ((_%e139122139149%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl139121139146%_))))
                                              (let ((_%tl139124139154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139122139149%_)))
                                                    (_%hd139123139152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139122139149%_))))
                                                (_%__kont144285144286%_
                                                 _%tl139124139154%_
                                                 _%hd139123139152%_)))
                                            (_%__kont144287144288%_))
                                        (_%__kont144287144288%_))
                                    (_%__kont144287144288%_))))
                            (_%__kont144287144288%_)))))))
          (let* ((_%g139046139063%_
                  (lambda (_%g139047139060%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139047139060%_))))
                 (_%g139045139109%_
                  (lambda (_%g139047139066%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139047139066%_))
                        (let ((_%e139050139068%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139047139066%_))))
                          (let ((_%hd139051139071%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139050139068%_)))
                                (_%tl139052139073%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139050139068%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139052139073%_))
                                (let ((_%e139053139076%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139052139073%_))))
                                  (let ((_%hd139054139079%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139053139076%_)))
                                        (_%tl139055139081%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139053139076%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139055139081%_))
                                        (let ((_%e139056139084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139055139081%_))))
                                          (let ((_%hd139057139087%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139056139084%_)))
                                                (_%tl139058139089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139056139084%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139058139089%_))
                                                ((lambda (_%L139092%_
                                                          _%L139093%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L139093%_)
                                                       (if (_%generate-letrec?139043%_
                                                            _%L139093%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self139039%_
                                                            'letrec
                                                            _%L139093%_
                                                            _%L139092%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self139039%_
                                                            'letrec*
                                                            _%L139093%_
                                                            _%L139092%_
                                                            '#f))
                                                       (_%generate-values139042%_
                                                        _%L139093%_
                                                        _%L139092%_)))
                                                 _%hd139057139087%_
                                                 _%hd139054139079%_)
                                                (_%g139046139063%_
                                                 _%g139047139066%_))))
                                        (_%g139046139063%_
                                         _%g139047139066%_))))
                                (_%g139046139063%_ _%g139047139066%_))))
                        (_%g139046139063%_ _%g139047139066%_)))))
            (_%g139045139109%_ _%stx139040%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd138976%_)
        (let _%lp138978%_ ((_%rest138980%_ _%hd138976%_))
          (let* ((_%rest138981138997%_ _%rest138980%_)
                 (_%else138984139005%_ (lambda () '#f)))
            (let ((_%K138987139018%_
                   (lambda (_%rest139016%_) (_%lp138978%_ _%rest139016%_)))
                  (_%K138986139010%_ (lambda () '#t)))
              (let ((_%try-match138983139013%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest138981138997%_))
                           (_%K138986139010%_)
                           (_%else138984139005%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest138981138997%_))
                    (let ((_%tl138989139023%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest138981138997%_)))
                          (_%hd138988139021%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest138981138997%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd138988139021%_))
                          (let ((_%tl138991139028%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd138988139021%_)))
                                (_%hd138990139026%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd138988139021%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd138990139026%_))
                                (let ((_%tl138995139031%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd138990139026%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl138995139031%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl138991139028%_))
                                          (let ((_%tl138993139034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl138991139028%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl138993139034%_))
                                                (let ((_%rest139037%_
                                                       _%tl138989139023%_))
                                                  (_%lp138978%_
                                                   _%rest139037%_))
                                                (_%else138984139005%_)))
                                          (_%else138984139005%_))
                                      (_%else138984139005%_)))
                                (_%else138984139005%_)))
                          (_%else138984139005%_)))
                    (_%try-match138983139013%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self138887%_
               _%form138888%_
               _%hd138889%_
               _%body138890%_
               _%compiled-body?138891%_)
        (letrec ((_%generate1138893%_
                  (lambda (_%bind138932%_)
                    (let* ((_%bind138933138944%_ _%bind138932%_)
                           (_%E138935138948%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind138933138944%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K138936138954%_
                            (lambda (_%expr138951%_ _%id138952%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id138952%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self138887%_
                                             _%expr138951%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind138933138944%_))
                          (let ((_%hd138937138957%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind138933138944%_)))
                                (_%tl138938138959%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind138933138944%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd138937138957%_))
                                (let ((_%hd138941138962%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd138937138957%_)))
                                      (_%tl138942138964%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd138937138957%_))))
                                  (let ((_%id138967%_ _%hd138941138962%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl138942138964%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl138938138959%_))
                                            (let ((_%hd138939138969%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl138938138959%_)))
                                                  (_%tl138940138971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl138938138959%_))))
                                              (let ((_%expr138974%_
                                                     _%hd138939138969%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl138940138971%_))
                                                    (_%K138936138954%_
                                                     _%expr138974%_
                                                     _%id138967%_)
                                                    (_%E138935138948%_))))
                                            (_%E138935138948%_))
                                        (_%E138935138948%_))))
                                (_%E138935138948%_)))
                          (_%E138935138948%_))))))
          (let* ((_%bind138895%_ (map _%generate1138893%_ _%hd138889%_))
                 (_%body138897%_
                  (if _%compiled-body?138891%_
                      _%body138890%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self138887%_ _%body138890%_))))
                 (_%body138929%_
                  (let* ((_%body138898138906%_ _%body138897%_)
                         (_%else138900138914%_
                          (lambda () (cons _%body138897%_ '())))
                         (_%K138902138919%_
                          (lambda (_%exprs138917%_) _%exprs138917%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body138898138906%_))
                        (let ((_%hd138903138922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body138898138906%_)))
                              (_%tl138904138924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body138898138906%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd138903138922%_ 'begin))
                              (let ((_%exprs138927%_ _%tl138904138924%_))
                                (_%K138902138919%_ _%exprs138927%_))
                              (_%else138900138914%_)))
                        (_%else138900138914%_)))))
            (cons _%form138888%_ (cons _%bind138895%_ _%body138929%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self138787%_ _%stx138788%_)
        (letrec ((_%generate1138790%_
                  (lambda (_%datum138842%_)
                    (if (or (null? _%datum138842%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum138842%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum138842%_))
                            (eof-object? _%datum138842%_))
                        _%datum138842%_
                        (if (uninterned-symbol? _%datum138842%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum138842%_
                               '#t))
                            (if (pair? _%datum138842%_)
                                (cons (_%generate1138790%_
                                       (car _%datum138842%_))
                                      (_%generate1138790%_
                                       (cdr _%datum138842%_)))
                                (if (box? _%datum138842%_)
                                    (box (_%generate1138790%_
                                          (unbox _%datum138842%_)))
                                    (if (vector? _%datum138842%_)
                                        (vector-map
                                         _%generate1138790%_
                                         _%datum138842%_)
                                        (if (or (s8vector? _%datum138842%_)
                                                (u8vector? _%datum138842%_)
                                                (s16vector? _%datum138842%_)
                                                (u16vector? _%datum138842%_)
                                                (s32vector? _%datum138842%_)
                                                (u32vector? _%datum138842%_)
                                                (s64vector? _%datum138842%_)
                                                (u64vector? _%datum138842%_)
                                                (f32vector? _%datum138842%_)
                                                (f64vector? _%datum138842%_))
                                            _%datum138842%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx138788%_)))))))))))
          (let* ((_%g138792138805%_
                  (lambda (_%g138793138802%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138793138802%_))))
                 (_%g138791138839%_
                  (lambda (_%g138793138808%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138793138808%_))
                        (let ((_%e138795138810%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138793138808%_))))
                          (let ((_%hd138796138813%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138795138810%_)))
                                (_%tl138797138815%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138795138810%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138797138815%_))
                                (let ((_%e138798138818%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138797138815%_))))
                                  (let ((_%hd138799138821%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138798138818%_)))
                                        (_%tl138800138823%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138798138818%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138800138823%_))
                                        ((lambda (_%L138826%_)
                                           (cons 'quote
                                                 (cons (_%generate1138790%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L138826%_)))
                                                       '())))
                                         _%hd138799138821%_)
                                        (_%g138792138805%_
                                         _%g138793138808%_))))
                                (_%g138792138805%_ _%g138793138808%_))))
                        (_%g138792138805%_ _%g138793138808%_)))))
            (_%g138791138839%_ _%stx138788%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self138228%_ _%stx138229%_)
        (letrec ((_%compile-call138231%_
                  (lambda (_%rator138520%_ _%rands138521%_)
                    (let ((_%rator138527%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self138228%_
                              _%rator138520%_)))
                          (_%rands138528%_
                           (map (lambda (_%g138522138524%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self138228%_
                                     _%g138522138524%_)))
                                _%rands138521%_)))
                      (let* ((_%__stx144330144331%_ _%rator138527%_)
                             (_%g138531138583%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144330144331%_)))))
                        (let ((_%__kont144332144333%_
                               (lambda (_%L138707%_
                                        _%L138708%_
                                        _%L138709%_
                                        _%L138710%_)
                                 (if (let ((__tmp145002
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands138528%_)))
                                           (__tmp145000
                                            (length (let ((__tmp145001
                                                           (lambda (_%g138746138749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g138747138751%_)
                     (cons _%g138746138749%_ _%g138747138751%_))))
              (declare (not safe))
              (__foldr1 __tmp145001 '() _%L138709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145002 __tmp145000))
                                     (let* ((_%id138754%_ _%L138710%_)
                                            (_%args138763%_
                                             (let ((__tmp145003
                                                    (lambda (_%g138755138758%_
                                                             _%g138756138760%_)
                                                      (cons _%g138755138758%_
                                                            _%g138756138760%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145003
                                                '()
                                                _%L138709%_)))
                                            (_%body138772%_
                                             (let ((__tmp145004
                                                    (lambda (_%g138764138767%_
                                                             _%g138765138769%_)
                                                      (cons _%g138764138767%_
                                                            _%g138765138769%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145004
                                                '()
                                                _%L138708%_)))
                                            (_%init138774%_
                                             (map list
                                                  _%args138763%_
                                                  _%rands138528%_)))
                                       (cons 'let
                                             (cons _%id138754%_
                                                   (cons _%init138774%_
                                                         _%body138772%_))))
                                     (let ((__tmp145005
                                            (let ((__tmp145006
                                                   (lambda (_%g138776138779%_
                                                            _%g138777138781%_)
                                                     (cons _%g138776138779%_
                                                           _%g138777138781%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145006
                                               '()
                                               _%L138709%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx138229%_
                                        __tmp145005
                                        _%rands138528%_)))))
                              (_%__kont144338144339%_
                               (lambda ()
                                 (cons _%rator138527%_ _%rands138528%_))))
                          (let ((_%__match144397144398%_
                                 (lambda (_%e138537138595%_
                                          _%hd138538138598%_
                                          _%tl138539138600%_
                                          _%e138540138603%_
                                          _%hd138541138606%_
                                          _%tl138542138608%_
                                          _%e138543138611%_
                                          _%hd138544138614%_
                                          _%tl138545138616%_
                                          _%e138546138619%_
                                          _%hd138547138622%_
                                          _%tl138548138624%_
                                          _%e138549138627%_
                                          _%hd138550138630%_
                                          _%tl138551138632%_
                                          _%e138552138635%_
                                          _%hd138553138638%_
                                          _%tl138554138640%_
                                          _%e138555138643%_
                                          _%hd138556138646%_
                                          _%tl138557138648%_
                                          _%__splice144334144335%_
                                          _%target138558138651%_
                                          _%tl138560138653%_)
                                   (letrec ((_%loop138561138656%_
                                             (lambda (_%hd138559138659%_
                                                      _%arg138565138661%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd138559138659%_))
                                                   (let ((_%e138562138664%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd138559138659%_))))
                                                     (let ((_%lp-tl138564138669%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e138562138664%_)))
                                                           (_%lp-hd138563138667%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e138562138664%_))))
                                                       (_%loop138561138656%_
                                                        _%lp-tl138564138669%_
                                                        (cons _%lp-hd138563138667%_
                                                              _%arg138565138661%_))))
                                                   (let ((_%arg138566138672%_
                                                          (reverse _%arg138565138661%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl138557138648%_))
                                                         (let ((_%__splice144336144337%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl138557138648%_ '0))))
                   (let ((_%tl138569138677%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144336144337%_ '1)))
                         (_%target138567138675%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144336144337%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl138569138677%_))
                         (letrec ((_%loop138570138680%_
                                   (lambda (_%hd138568138683%_
                                            _%body138574138685%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd138568138683%_))
                                         (let ((_%e138571138688%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd138568138683%_))))
                                           (let ((_%lp-tl138573138693%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e138571138688%_)))
                                                 (_%lp-hd138572138691%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e138571138688%_))))
                                             (_%loop138570138680%_
                                              _%lp-tl138573138693%_
                                              (cons _%lp-hd138572138691%_
                                                    _%body138574138685%_))))
                                         (let ((_%body138575138696%_
                                                (reverse _%body138574138685%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl138551138632%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl138545138616%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl138542138608%_))
                                                       (let ((_%e138576138699%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl138542138608%_))))
                 (let ((_%tl138578138704%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e138576138699%_)))
                       (_%hd138577138702%_
                        (let ()
                          (declare (not safe))
                          (##car _%e138576138699%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl138578138704%_))
                       (let ((_%L138707%_ _%hd138577138702%_)
                             (_%L138708%_ _%body138575138696%_)
                             (_%L138709%_ _%arg138566138672%_)
                             (_%L138710%_ _%hd138547138622%_))
                         (if (eq? _%L138710%_ _%L138707%_)
                             (_%__kont144332144333%_
                              _%L138707%_
                              _%L138708%_
                              _%L138709%_
                              _%L138710%_)
                             (_%__kont144338144339%_)))
                       (_%__kont144338144339%_))))
               (_%__kont144338144339%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144338144339%_))
                                               (_%__kont144338144339%_)))))))
                           (_%loop138570138680%_ _%target138567138675%_ '()))
                         (_%__kont144338144339%_))))
                 (_%__kont144338144339%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop138561138656%_
                                      _%target138558138651%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144330144331%_))
                                (let ((_%e138537138595%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144330144331%_))))
                                  (let ((_%tl138539138600%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138537138595%_)))
                                        (_%hd138538138598%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138537138595%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138538138598%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd138538138598%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138539138600%_))
                                                (let ((_%e138540138603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138539138600%_))))
                                                  (let ((_%tl138542138608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138540138603%_)))
                                                        (_%hd138541138606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138540138603%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd138541138606%_))
                                                        (let ((_%e138543138611%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd138541138606%_))))
                  (let ((_%tl138545138616%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138543138611%_)))
                        (_%hd138544138614%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138543138611%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd138544138614%_))
                        (let ((_%e138546138619%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd138544138614%_))))
                          (let ((_%tl138548138624%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138546138619%_)))
                                (_%hd138547138622%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138546138619%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138548138624%_))
                                (let ((_%e138549138627%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138548138624%_))))
                                  (let ((_%tl138551138632%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138549138627%_)))
                                        (_%hd138550138630%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138549138627%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd138550138630%_))
                                        (let ((_%e138552138635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd138550138630%_))))
                                          (let ((_%tl138554138640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138552138635%_)))
                                                (_%hd138553138638%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138552138635%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd138553138638%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd138553138638%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl138554138640%_))
                                                        (let ((_%e138555138643%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl138554138640%_))))
                  (let ((_%tl138557138648%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138555138643%_)))
                        (_%hd138556138646%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138555138643%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd138556138646%_))
                        (let ((_%__splice144334144335%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd138556138646%_
                                  '0))))
                          (let ((_%tl138560138653%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice144334144335%_ '1)))
                                (_%target138558138651%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice144334144335%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl138560138653%_))
                                (_%__match144397144398%_
                                 _%e138537138595%_
                                 _%hd138538138598%_
                                 _%tl138539138600%_
                                 _%e138540138603%_
                                 _%hd138541138606%_
                                 _%tl138542138608%_
                                 _%e138543138611%_
                                 _%hd138544138614%_
                                 _%tl138545138616%_
                                 _%e138546138619%_
                                 _%hd138547138622%_
                                 _%tl138548138624%_
                                 _%e138549138627%_
                                 _%hd138550138630%_
                                 _%tl138551138632%_
                                 _%e138552138635%_
                                 _%hd138553138638%_
                                 _%tl138554138640%_
                                 _%e138555138643%_
                                 _%hd138556138646%_
                                 _%tl138557138648%_
                                 _%__splice144334144335%_
                                 _%target138558138651%_
                                 _%tl138560138653%_)
                                (_%__kont144338144339%_))))
                        (_%__kont144338144339%_))))
                (_%__kont144338144339%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144338144339%_))
                                                (_%__kont144338144339%_))))
                                        (_%__kont144338144339%_))))
                                (_%__kont144338144339%_))))
                        (_%__kont144338144339%_))))
                (_%__kont144338144339%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144338144339%_))
                                            (_%__kont144338144339%_))
                                        (_%__kont144338144339%_))))
                                (_%__kont144338144339%_)))))))))
          (let* ((_%g138233138256%_
                  (lambda (_%g138234138253%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138234138253%_))))
                 (_%g138232138517%_
                  (lambda (_%g138234138259%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138234138259%_))
                        (let ((_%e138237138261%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138234138259%_))))
                          (let ((_%hd138238138264%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138237138261%_)))
                                (_%tl138239138266%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138237138261%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138239138266%_))
                                (let ((_%e138240138269%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138239138266%_))))
                                  (let ((_%hd138241138272%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138240138269%_)))
                                        (_%tl138242138274%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138240138269%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl138242138274%_))
                                        (let ((_g145007_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl138242138274%_
                                                  '0))))
                                          (begin
                                            (let ((_g145008_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g145007_)
                                                         (##vector-length
                                                          _g145007_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g145008_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g145008_)))
                                            (let ((_%target138243138277%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145007_
                                                      0)))
                                                  (_%tl138245138279%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145007_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl138245138279%_))
                                                  (letrec ((_%loop138246138282%_
                                                            (lambda (_%hd138244138285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand138250138287%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd138244138285%_))
                          (let ((_%e138247138290%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd138244138285%_))))
                            (let ((_%lp-hd138248138293%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138247138290%_)))
                                  (_%lp-tl138249138295%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138247138290%_))))
                              (_%loop138246138282%_
                               _%lp-tl138249138295%_
                               (cons _%lp-hd138248138293%_
                                     _%rand138250138287%_))))
                          (let ((_%rand138251138298%_
                                 (reverse _%rand138250138287%_)))
                            ((lambda (_%L138301%_ _%L138302%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call138231%_
                                    _%L138302%_
                                    (let ((__tmp145009
                                           (lambda (_%g138319138322%_
                                                    _%g138320138324%_)
                                             (cons _%g138319138322%_
                                                   _%g138320138324%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp145009 '() _%L138301%_)))
                                   (let* ((_%__stx144446144447%_ _%L138302%_)
                                          (_%g138328138340%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx144446144447%_)))))
                                     (let ((_%__kont144448144449%_
                                            (lambda ()
                                              (let ((_%f138377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138228%_
                                                        _%L138302%_))))
                                                (if (and (let ((__tmp145010
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f138377%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp145010))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f138377%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp138379%_ ((_%rest138382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp145012
                                                (lambda (_%g138499138502%_
                                                         _%g138500138504%_)
                                                  (cons _%g138499138502%_
                                                        _%g138500138504%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp145012
                                            '()
                                            _%L138301%_))))
                               (_%bind138384%_ '())
                               (_%args138385%_ '()))
              (let* ((_%rest138386138394%_ _%rest138382%_)
                     (_%else138388138402%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind138384%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f138377%_
                                                      _%args138385%_)
                                                '()))))))
                     (_%K138390138488%_
                      (lambda (_%rest138405%_ _%e138406%_)
                        (let* ((_%__stx144400144401%_ _%e138406%_)
                               (_%g138411138429%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx144400144401%_)))))
                          (let ((_%__kont144402144403%_
                                 (lambda ()
                                   (_%lp138379%_
                                    _%rest138405%_
                                    _%bind138384%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e138406%_))
                                          _%args138385%_))))
                                (_%__kont144404144405%_
                                 (lambda ()
                                   (_%lp138379%_
                                    _%rest138405%_
                                    _%bind138384%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e138406%_))
                                          _%args138385%_))))
                                (_%__kont144406144407%_
                                 (lambda ()
                                   (let ((_%tmp138436%_
                                          (let ((__tmp145011
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp145011))))
                                     (_%lp138379%_
                                      _%rest138405%_
                                      (cons (cons _%tmp138436%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e138406%_))
                                                        '()))
                                            _%bind138384%_)
                                      (cons _%tmp138436%_ _%args138385%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144400144401%_))
                                (let ((_%e138413138467%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144400144401%_))))
                                  (let ((_%tl138415138472%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138413138467%_)))
                                        (_%hd138414138470%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138413138467%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138414138470%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd138414138470%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138415138472%_))
                                                (let ((_%e138416138475%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138415138472%_))))
                                                  (let ((_%tl138418138480%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138416138475%_)))
                                                        (_%hd138417138478%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138416138475%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138418138480%_))
                                                        (_%__kont144402144403%_)
                                                        (_%__kont144406144407%_))))
                                                (_%__kont144406144407%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd138414138470%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl138415138472%_))
                                                    (let ((_%e138422138452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl138415138472%_))))
                                                      (let ((_%tl138424138457%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e138422138452%_)))
                    (_%hd138423138455%_
                     (let () (declare (not safe)) (##car _%e138422138452%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl138424138457%_))
                    (_%__kont144404144405%_)
                    (_%__kont144406144407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144406144407%_))
                                                (_%__kont144406144407%_)))
                                        (_%__kont144406144407%_))))
                                (_%__kont144406144407%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest138386138394%_))
                    (let ((_%hd138391138491%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest138386138394%_)))
                          (_%tl138392138493%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest138386138394%_))))
                      (let* ((_%e138496%_ _%hd138391138491%_)
                             (_%rest138498%_ _%tl138392138493%_))
                        (_%K138390138488%_ _%rest138498%_ _%e138496%_)))
                    (_%else138388138402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call138231%_
                                                     _%L138302%_
                                                     (let ((__tmp145013
                                                            (lambda (_%g138506138509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g138507138511%_)
                      (cons _%g138506138509%_ _%g138507138511%_))))
               (declare (not safe))
               (__foldr1 __tmp145013 '() _%L138301%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont144450144451%_
                                            (lambda ()
                                              (_%compile-call138231%_
                                               _%L138302%_
                                               (let ((__tmp145014
                                                      (lambda (_%g138346138349%_
                                                               _%g138347138351%_)
                                                        (cons _%g138346138349%_
                                                              _%g138347138351%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp145014
                                                  '()
                                                  _%L138301%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx144446144447%_))
                                           (let ((_%e138330138359%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx144446144447%_))))
                                             (let ((_%tl138332138364%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138330138359%_)))
                                                   (_%hd138331138362%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138330138359%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138331138362%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd138331138362%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl138332138364%_))
                                                           (let ((_%e138333138367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl138332138364%_))))
                     (let ((_%tl138335138372%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e138333138367%_)))
                           (_%hd138334138370%_
                            (let ()
                              (declare (not safe))
                              (##car _%e138333138367%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl138335138372%_))
                           (_%__kont144448144449%_)
                           (_%__kont144450144451%_))))
                   (_%__kont144450144451%_))
               (_%__kont144450144451%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144450144451%_))))
                                           (_%__kont144450144451%_))))))
                             _%rand138251138298%_
                             _%hd138241138272%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop138246138282%_
                                                     _%target138243138277%_
                                                     '()))
                                                  (_%g138233138256%_
                                                   _%g138234138259%_)))))
                                        (_%g138233138256%_
                                         _%g138234138259%_))))
                                (_%g138233138256%_ _%g138234138259%_))))
                        (_%g138233138256%_ _%g138234138259%_)))))
            (_%g138232138517%_ _%stx138229%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self137971%_ _%stx137972%_)
        (let* ((_%__stx144518144519%_ _%stx137972%_)
               (_%g137975138004%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144518144519%_)))))
          (let ((_%__kont144520144521%_
                 (lambda (_%L138072%_ _%L138073%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self137971%_
                        _%stx137972%_)
                       (let ((_%f138095%_
                              (let ((__tmp145015
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L138073%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self137971%_
                                 __tmp145015))))
                         (let _%lp138097%_ ((_%rest138100%_
                                             (reverse (let ((__tmp145017
                                                             (lambda (_%g138217138220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g138218138222%_)
                       (cons _%g138217138220%_ _%g138218138222%_))))
                (declare (not safe))
                (__foldr1 __tmp145017 '() _%L138072%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind138102%_ '())
                                            (_%args138103%_ '()))
                           (let* ((_%rest138104138112%_ _%rest138100%_)
                                  (_%else138106138120%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind138102%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f138095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args138103%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K138108138206%_
                                   (lambda (_%rest138123%_ _%e138124%_)
                                     (let* ((_%__stx144472144473%_ _%e138124%_)
                                            (_%g138129138147%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx144472144473%_)))))
                                       (let ((_%__kont144474144475%_
                                              (lambda ()
                                                (_%lp138097%_
                                                 _%rest138123%_
                                                 _%bind138102%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e138124%_))
                                                       _%args138103%_))))
                                             (_%__kont144476144477%_
                                              (lambda ()
                                                (_%lp138097%_
                                                 _%rest138123%_
                                                 _%bind138102%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e138124%_))
                                                       _%args138103%_))))
                                             (_%__kont144478144479%_
                                              (lambda ()
                                                (let ((_%tmp138154%_
                                                       (let ((__tmp145016
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp145016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp138097%_
                                                   _%rest138123%_
                                                   (cons (cons _%tmp138154%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e138124%_))
                             '()))
                 _%bind138102%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp138154%_
                                                         _%args138103%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx144472144473%_))
                                             (let ((_%e138131138185%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx144472144473%_))))
                                               (let ((_%tl138133138190%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e138131138185%_)))
                                                     (_%hd138132138188%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e138131138185%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd138132138188%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd138132138188%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138133138190%_))
                     (let ((_%e138134138193%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138133138190%_))))
                       (let ((_%tl138136138198%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138134138193%_)))
                             (_%hd138135138196%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138134138193%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138136138198%_))
                             (_%__kont144474144475%_)
                             (_%__kont144478144479%_))))
                     (_%__kont144478144479%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd138132138188%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138133138190%_))
                         (let ((_%e138140138170%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138133138190%_))))
                           (let ((_%tl138142138175%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138140138170%_)))
                                 (_%hd138141138173%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138140138170%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138142138175%_))
                                 (_%__kont144476144477%_)
                                 (_%__kont144478144479%_))))
                         (_%__kont144478144479%_))
                     (_%__kont144478144479%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144478144479%_))))
                                             (_%__kont144478144479%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest138104138112%_))
                                 (let ((_%hd138109138209%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest138104138112%_)))
                                       (_%tl138110138211%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest138104138112%_))))
                                   (let* ((_%e138214%_ _%hd138109138209%_)
                                          (_%rest138216%_ _%tl138110138211%_))
                                     (_%K138108138206%_
                                      _%rest138216%_
                                      _%e138214%_)))
                                 (_%else138106138120%_))))))))
                (_%__kont144524144525%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self137971%_ _%stx137972%_))))
            (let ((_%__match144563144564%_
                   (lambda (_%e137979138016%_
                            _%hd137980138019%_
                            _%tl137981138021%_
                            _%e137982138024%_
                            _%hd137983138027%_
                            _%tl137984138029%_
                            _%e137985138032%_
                            _%hd137986138035%_
                            _%tl137987138037%_
                            _%e137988138040%_
                            _%hd137989138043%_
                            _%tl137990138045%_
                            _%__splice144522144523%_
                            _%target137991138048%_
                            _%tl137993138050%_)
                     (letrec ((_%loop137994138053%_
                               (lambda (_%hd137992138056%_
                                        _%rand137998138058%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd137992138056%_))
                                     (let ((_%e137995138061%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd137992138056%_))))
                                       (let ((_%lp-tl137997138066%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e137995138061%_)))
                                             (_%lp-hd137996138064%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e137995138061%_))))
                                         (_%loop137994138053%_
                                          _%lp-tl137997138066%_
                                          (cons _%lp-hd137996138064%_
                                                _%rand137998138058%_))))
                                     (let ((_%rand137999138069%_
                                            (reverse _%rand137998138058%_)))
                                       (_%__kont144520144521%_
                                        _%rand137999138069%_
                                        _%hd137989138043%_))))))
                       (_%loop137994138053%_ _%target137991138048%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144518144519%_))
                  (let ((_%e137979138016%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144518144519%_))))
                    (let ((_%tl137981138021%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e137979138016%_)))
                          (_%hd137980138019%_
                           (let ()
                             (declare (not safe))
                             (##car _%e137979138016%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl137981138021%_))
                          (let ((_%e137982138024%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl137981138021%_))))
                            (let ((_%tl137984138029%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e137982138024%_)))
                                  (_%hd137983138027%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e137982138024%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd137983138027%_))
                                  (let ((_%e137985138032%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd137983138027%_))))
                                    (let ((_%tl137987138037%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137985138032%_)))
                                          (_%hd137986138035%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137985138032%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd137986138035%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd137986138035%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl137987138037%_))
                                                  (let ((_%e137988138040%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl137987138037%_))))
                                                    (let ((_%tl137990138045%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e137988138040%_)))
                                                          (_%hd137989138043%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e137988138040%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl137990138045%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl137984138029%_))
                      (let ((_%__splice144522144523%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl137984138029%_
                                '0))))
                        (let ((_%tl137993138050%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144522144523%_ '1)))
                              (_%target137991138048%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144522144523%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl137993138050%_))
                              (_%__match144563144564%_
                               _%e137979138016%_
                               _%hd137980138019%_
                               _%tl137981138021%_
                               _%e137982138024%_
                               _%hd137983138027%_
                               _%tl137984138029%_
                               _%e137985138032%_
                               _%hd137986138035%_
                               _%tl137987138037%_
                               _%e137988138040%_
                               _%hd137989138043%_
                               _%tl137990138045%_
                               _%__splice144522144523%_
                               _%target137991138048%_
                               _%tl137993138050%_)
                              (_%__kont144524144525%_))))
                      (_%__kont144524144525%_))
                  (_%__kont144524144525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144524144525%_))
                                              (_%__kont144524144525%_))
                                          (_%__kont144524144525%_))))
                                  (_%__kont144524144525%_))))
                          (_%__kont144524144525%_))))
                  (_%__kont144524144525%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self137783%_ _%stx137784%_)
        (letrec ((_%simplify137786%_
                  (lambda (_%code137871%_)
                    (let* ((_%code137872137890%_ _%code137871%_)
                           (_%else137874137898%_ (lambda () _%code137871%_))
                           (_%K137876137934%_
                            (lambda (_%expr137901%_ _%test137902%_)
                              (let* ((_%expr137903137911%_ _%expr137901%_)
                                     (_%else137905137919%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test137902%_
                                                    (cons _%expr137901%_
                                                          '())))))
                                     (_%K137907137924%_
                                      (lambda (_%exprs137922%_)
                                        (cons 'and
                                              (cons _%test137902%_
                                                    _%exprs137922%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr137903137911%_))
                                    (let ((_%hd137908137927%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr137903137911%_)))
                                          (_%tl137909137929%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr137903137911%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd137908137927%_ 'and))
                                          (let ((_%exprs137932%_
                                                 _%tl137909137929%_))
                                            (_%K137907137924%_
                                             _%exprs137932%_))
                                          (_%else137905137919%_)))
                                    (_%else137905137919%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code137872137890%_))
                          (let ((_%hd137877137937%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code137872137890%_)))
                                (_%tl137878137939%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code137872137890%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd137877137937%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl137878137939%_))
                                    (let ((_%hd137879137942%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl137878137939%_)))
                                          (_%tl137880137944%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl137878137939%_))))
                                      (let ((_%test137947%_
                                             _%hd137879137942%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl137880137944%_))
                                            (let ((_%hd137881137949%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl137880137944%_)))
                                                  (_%tl137882137951%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl137880137944%_))))
                                              (let ((_%expr137954%_
                                                     _%hd137881137949%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl137882137951%_))
                                                    (let ((_%hd137883137956%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl137882137951%_)))
                                                          (_%tl137884137958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl137882137951%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd137883137956%_))
                                                          (let ((_%hd137885137961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd137883137956%_)))
                        (_%tl137886137963%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd137883137956%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd137885137961%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl137886137963%_))
                            (let ((_%hd137887137966%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl137886137963%_)))
                                  (_%tl137888137968%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl137886137963%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd137887137966%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl137888137968%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl137884137958%_))
                                          (_%K137876137934%_
                                           _%expr137954%_
                                           _%test137947%_)
                                          (_%else137874137898%_))
                                      (_%else137874137898%_))
                                  (_%else137874137898%_)))
                            (_%else137874137898%_))
                        (_%else137874137898%_)))
                  (_%else137874137898%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else137874137898%_))))
                                            (_%else137874137898%_))))
                                    (_%else137874137898%_))
                                (_%else137874137898%_)))
                          (_%else137874137898%_))))))
          (let* ((_%g137788137809%_
                  (lambda (_%g137789137806%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137789137806%_))))
                 (_%g137787137868%_
                  (lambda (_%g137789137812%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137789137812%_))
                        (let ((_%e137793137814%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137789137812%_))))
                          (let ((_%hd137794137817%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137793137814%_)))
                                (_%tl137795137819%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137793137814%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137795137819%_))
                                (let ((_%e137796137822%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137795137819%_))))
                                  (let ((_%hd137797137825%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137796137822%_)))
                                        (_%tl137798137827%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137796137822%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137798137827%_))
                                        (let ((_%e137799137830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137798137827%_))))
                                          (let ((_%hd137800137833%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137799137830%_)))
                                                (_%tl137801137835%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137799137830%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl137801137835%_))
                                                (let ((_%e137802137838%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl137801137835%_))))
                                                  (let ((_%hd137803137841%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e137802137838%_)))
                                                        (_%tl137804137843%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e137802137838%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl137804137843%_))
                                                        ((lambda (_%L137846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L137847%_
                          _%L137848%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify137786%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self137783%_
                                       _%L137848%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self137783%_
                                             _%L137847%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self137783%_
                                                   _%L137846%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp145018
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self137783%_
                                               _%L137848%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp145018
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137783%_
                                            _%L137847%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self137783%_
                                                  _%L137846%_))
                                               '()))))))
                 _%hd137803137841%_
                 _%hd137800137833%_
                 _%hd137797137825%_)
                (_%g137788137809%_ _%g137789137812%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g137788137809%_
                                                 _%g137789137812%_))))
                                        (_%g137788137809%_
                                         _%g137789137812%_))))
                                (_%g137788137809%_ _%g137789137812%_))))
                        (_%g137788137809%_ _%g137789137812%_)))))
            (_%g137787137868%_ _%stx137784%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self137731%_ _%stx137732%_)
        (let* ((_%g137734137747%_
                (lambda (_%g137735137744%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137735137744%_))))
               (_%g137733137780%_
                (lambda (_%g137735137750%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137735137750%_))
                      (let ((_%e137737137752%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137735137750%_))))
                        (let ((_%hd137738137755%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137737137752%_)))
                              (_%tl137739137757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137737137752%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137739137757%_))
                              (let ((_%e137740137760%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137739137757%_))))
                                (let ((_%hd137741137763%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137740137760%_)))
                                      (_%tl137742137765%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137740137760%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl137742137765%_))
                                      ((lambda (_%L137768%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L137768%_)))
                                       _%hd137741137763%_)
                                      (_%g137734137747%_ _%g137735137750%_))))
                              (_%g137734137747%_ _%g137735137750%_))))
                      (_%g137734137747%_ _%g137735137750%_)))))
          (_%g137733137780%_ _%stx137732%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self137663%_ _%stx137664%_)
        (let* ((_%g137666137683%_
                (lambda (_%g137667137680%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137667137680%_))))
               (_%g137665137728%_
                (lambda (_%g137667137686%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137667137686%_))
                      (let ((_%e137670137688%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137667137686%_))))
                        (let ((_%hd137671137691%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137670137688%_)))
                              (_%tl137672137693%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137670137688%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137672137693%_))
                              (let ((_%e137673137696%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137672137693%_))))
                                (let ((_%hd137674137699%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137673137696%_)))
                                      (_%tl137675137701%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137673137696%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137675137701%_))
                                      (let ((_%e137676137704%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137675137701%_))))
                                        (let ((_%hd137677137707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137676137704%_)))
                                              (_%tl137678137709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137676137704%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137678137709%_))
                                              ((lambda (_%L137712%_
                                                        _%L137713%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L137713%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self137663%_ _%L137712%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137677137707%_
                                               _%hd137674137699%_)
                                              (_%g137666137683%_
                                               _%g137667137686%_))))
                                      (_%g137666137683%_ _%g137667137686%_))))
                              (_%g137666137683%_ _%g137667137686%_))))
                      (_%g137666137683%_ _%g137667137686%_)))))
          (_%g137665137728%_ _%stx137664%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self137474%_ _%stx137475%_)
        (let* ((_%g137477137494%_
                (lambda (_%g137478137491%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137478137491%_))))
               (_%g137476137660%_
                (lambda (_%g137478137497%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137478137497%_))
                      (let ((_%e137481137499%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137478137497%_))))
                        (let ((_%hd137482137502%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137481137499%_)))
                              (_%tl137483137504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137481137499%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137483137504%_))
                              (let ((_%e137484137507%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137483137504%_))))
                                (let ((_%hd137485137510%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137484137507%_)))
                                      (_%tl137486137512%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137484137507%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137486137512%_))
                                      (let ((_%e137487137515%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137486137512%_))))
                                        (let ((_%hd137488137518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137487137515%_)))
                                              (_%tl137489137520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137487137515%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137489137520%_))
                                              ((lambda (_%L137523%_
                                                        _%L137524%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137474%_ _%L137523%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137474%_ _%L137524%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137539%_ ((_%rest137542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137524%_ (cons _%L137523%_ '())))
                                (_%bind137544%_ '())
                                (_%args137545%_ '()))
               (let* ((_%rest137546137554%_ _%rest137542%_)
                      (_%else137548137562%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137544%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args137545%_)
                                                 '()))))))
                      (_%K137550137648%_
                       (lambda (_%rest137565%_ _%e137566%_)
                         (let* ((_%__stx144566144567%_ _%e137566%_)
                                (_%g137571137589%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144566144567%_)))))
                           (let ((_%__kont144568144569%_
                                  (lambda ()
                                    (_%lp137539%_
                                     _%rest137565%_
                                     _%bind137544%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137566%_))
                                           _%args137545%_))))
                                 (_%__kont144570144571%_
                                  (lambda ()
                                    (_%lp137539%_
                                     _%rest137565%_
                                     _%bind137544%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137566%_))
                                           _%args137545%_))))
                                 (_%__kont144572144573%_
                                  (lambda ()
                                    (let ((_%tmp137596%_
                                           (let ((__tmp145019
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145019))))
                                      (_%lp137539%_
                                       _%rest137565%_
                                       (cons (cons _%tmp137596%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137566%_))
                                                         '()))
                                             _%bind137544%_)
                                       (cons _%tmp137596%_ _%args137545%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144566144567%_))
                                 (let ((_%e137573137627%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144566144567%_))))
                                   (let ((_%tl137575137632%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137573137627%_)))
                                         (_%hd137574137630%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137573137627%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137574137630%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137574137630%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137575137632%_))
                                                 (let ((_%e137576137635%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137575137632%_))))
                                                   (let ((_%tl137578137640%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137576137635%_)))
                                                         (_%hd137577137638%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137576137635%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137578137640%_))
                                                         (_%__kont144568144569%_)
                                                         (_%__kont144572144573%_))))
                                                 (_%__kont144572144573%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137574137630%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137575137632%_))
                                                     (let ((_%e137582137612%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137575137632%_))))
                                                       (let ((_%tl137584137617%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137582137612%_)))
                     (_%hd137583137615%_
                      (let () (declare (not safe)) (##car _%e137582137612%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137584137617%_))
                     (_%__kont144570144571%_)
                     (_%__kont144572144573%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144572144573%_))
                                                 (_%__kont144572144573%_)))
                                         (_%__kont144572144573%_))))
                                 (_%__kont144572144573%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137546137554%_))
                     (let ((_%hd137551137651%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137546137554%_)))
                           (_%tl137552137653%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137546137554%_))))
                       (let* ((_%e137656%_ _%hd137551137651%_)
                              (_%rest137658%_ _%tl137552137653%_))
                         (_%K137550137648%_ _%rest137658%_ _%e137656%_)))
                     (_%else137548137562%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137488137518%_
                                               _%hd137485137510%_)
                                              (_%g137477137494%_
                                               _%g137478137497%_))))
                                      (_%g137477137494%_ _%g137478137497%_))))
                              (_%g137477137494%_ _%g137478137497%_))))
                      (_%g137477137494%_ _%g137478137497%_)))))
          (_%g137476137660%_ _%stx137475%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self137285%_ _%stx137286%_)
        (let* ((_%g137288137305%_
                (lambda (_%g137289137302%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137289137302%_))))
               (_%g137287137471%_
                (lambda (_%g137289137308%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137289137308%_))
                      (let ((_%e137292137310%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137289137308%_))))
                        (let ((_%hd137293137313%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137292137310%_)))
                              (_%tl137294137315%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137292137310%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137294137315%_))
                              (let ((_%e137295137318%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137294137315%_))))
                                (let ((_%hd137296137321%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137295137318%_)))
                                      (_%tl137297137323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137295137318%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137297137323%_))
                                      (let ((_%e137298137326%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137297137323%_))))
                                        (let ((_%hd137299137329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137298137326%_)))
                                              (_%tl137300137331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137298137326%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137300137331%_))
                                              ((lambda (_%L137334%_
                                                        _%L137335%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137285%_ _%L137334%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137285%_ _%L137335%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137350%_ ((_%rest137353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137335%_ (cons _%L137334%_ '())))
                                (_%bind137355%_ '())
                                (_%args137356%_ '()))
               (let* ((_%rest137357137365%_ _%rest137353%_)
                      (_%else137359137373%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137355%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args137356%_)
                                                 '()))))))
                      (_%K137361137459%_
                       (lambda (_%rest137376%_ _%e137377%_)
                         (let* ((_%__stx144612144613%_ _%e137377%_)
                                (_%g137382137400%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144612144613%_)))))
                           (let ((_%__kont144614144615%_
                                  (lambda ()
                                    (_%lp137350%_
                                     _%rest137376%_
                                     _%bind137355%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137377%_))
                                           _%args137356%_))))
                                 (_%__kont144616144617%_
                                  (lambda ()
                                    (_%lp137350%_
                                     _%rest137376%_
                                     _%bind137355%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137377%_))
                                           _%args137356%_))))
                                 (_%__kont144618144619%_
                                  (lambda ()
                                    (let ((_%tmp137407%_
                                           (let ((__tmp145020
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145020))))
                                      (_%lp137350%_
                                       _%rest137376%_
                                       (cons (cons _%tmp137407%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137377%_))
                                                         '()))
                                             _%bind137355%_)
                                       (cons _%tmp137407%_ _%args137356%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144612144613%_))
                                 (let ((_%e137384137438%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144612144613%_))))
                                   (let ((_%tl137386137443%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137384137438%_)))
                                         (_%hd137385137441%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137384137438%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137385137441%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137385137441%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137386137443%_))
                                                 (let ((_%e137387137446%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137386137443%_))))
                                                   (let ((_%tl137389137451%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137387137446%_)))
                                                         (_%hd137388137449%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137387137446%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137389137451%_))
                                                         (_%__kont144614144615%_)
                                                         (_%__kont144618144619%_))))
                                                 (_%__kont144618144619%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137385137441%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137386137443%_))
                                                     (let ((_%e137393137423%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137386137443%_))))
                                                       (let ((_%tl137395137428%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137393137423%_)))
                     (_%hd137394137426%_
                      (let () (declare (not safe)) (##car _%e137393137423%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137395137428%_))
                     (_%__kont144616144617%_)
                     (_%__kont144618144619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144618144619%_))
                                                 (_%__kont144618144619%_)))
                                         (_%__kont144618144619%_))))
                                 (_%__kont144618144619%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137357137365%_))
                     (let ((_%hd137362137462%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137357137365%_)))
                           (_%tl137363137464%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137357137365%_))))
                       (let* ((_%e137467%_ _%hd137362137462%_)
                              (_%rest137469%_ _%tl137363137464%_))
                         (_%K137361137459%_ _%rest137469%_ _%e137467%_)))
                     (_%else137359137373%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137299137329%_
                                               _%hd137296137321%_)
                                              (_%g137288137305%_
                                               _%g137289137308%_))))
                                      (_%g137288137305%_ _%g137289137308%_))))
                              (_%g137288137305%_ _%g137289137308%_))))
                      (_%g137288137305%_ _%g137289137308%_)))))
          (_%g137287137471%_ _%stx137286%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self137201%_ _%stx137202%_)
        (let* ((_%g137204137225%_
                (lambda (_%g137205137222%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137205137222%_))))
               (_%g137203137282%_
                (lambda (_%g137205137228%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137205137228%_))
                      (let ((_%e137209137230%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137205137228%_))))
                        (let ((_%hd137210137233%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137209137230%_)))
                              (_%tl137211137235%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137209137230%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137211137235%_))
                              (let ((_%e137212137238%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137211137235%_))))
                                (let ((_%hd137213137241%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137212137238%_)))
                                      (_%tl137214137243%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137212137238%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137214137243%_))
                                      (let ((_%e137215137246%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137214137243%_))))
                                        (let ((_%hd137216137249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137215137246%_)))
                                              (_%tl137217137251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137215137246%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137217137251%_))
                                              (let ((_%e137218137254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137217137251%_))))
                                                (let ((_%hd137219137257%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137218137254%_)))
                                                      (_%tl137220137259%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137218137254%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137220137259%_))
                                                      ((lambda (_%L137262%_
                                                                _%L137263%_
                                                                _%L137264%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137201%_ _%L137262%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137201%_
                                      _%L137263%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137201%_
                                            _%L137264%_))
                                         (cons ''#f '()))))))
               _%hd137219137257%_
               _%hd137216137249%_
               _%hd137213137241%_)
              (_%g137204137225%_ _%g137205137228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137204137225%_
                                               _%g137205137228%_))))
                                      (_%g137204137225%_ _%g137205137228%_))))
                              (_%g137204137225%_ _%g137205137228%_))))
                      (_%g137204137225%_ _%g137205137228%_)))))
          (_%g137203137282%_ _%stx137202%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self137101%_ _%stx137102%_)
        (let* ((_%g137104137129%_
                (lambda (_%g137105137126%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137105137126%_))))
               (_%g137103137198%_
                (lambda (_%g137105137132%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137105137132%_))
                      (let ((_%e137110137134%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137105137132%_))))
                        (let ((_%hd137111137137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137110137134%_)))
                              (_%tl137112137139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137110137134%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137112137139%_))
                              (let ((_%e137113137142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137112137139%_))))
                                (let ((_%hd137114137145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137113137142%_)))
                                      (_%tl137115137147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137113137142%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137115137147%_))
                                      (let ((_%e137116137150%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137115137147%_))))
                                        (let ((_%hd137117137153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137116137150%_)))
                                              (_%tl137118137155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137116137150%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137118137155%_))
                                              (let ((_%e137119137158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137118137155%_))))
                                                (let ((_%hd137120137161%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137119137158%_)))
                                                      (_%tl137121137163%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137119137158%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137121137163%_))
                                                      (let ((_%e137122137166%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137121137163%_))))
                (let ((_%hd137123137169%_
                       (let () (declare (not safe)) (##car _%e137122137166%_)))
                      (_%tl137124137171%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137122137166%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137124137171%_))
                      ((lambda (_%L137174%_
                                _%L137175%_
                                _%L137176%_
                                _%L137177%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137101%_
                                        _%L137175%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137101%_
                                              _%L137174%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137101%_
                                                    _%L137176%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137101%_
                                                          _%L137177%_))
                                                       (cons ''#f '())))))))
                       _%hd137123137169%_
                       _%hd137120137161%_
                       _%hd137117137153%_
                       _%hd137114137145%_)
                      (_%g137104137129%_ _%g137105137132%_))))
              (_%g137104137129%_ _%g137105137132%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137104137129%_
                                               _%g137105137132%_))))
                                      (_%g137104137129%_ _%g137105137132%_))))
                              (_%g137104137129%_ _%g137105137132%_))))
                      (_%g137104137129%_ _%g137105137132%_)))))
          (_%g137103137198%_ _%stx137102%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self137017%_ _%stx137018%_)
        (let* ((_%g137020137041%_
                (lambda (_%g137021137038%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137021137038%_))))
               (_%g137019137098%_
                (lambda (_%g137021137044%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137021137044%_))
                      (let ((_%e137025137046%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137021137044%_))))
                        (let ((_%hd137026137049%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137025137046%_)))
                              (_%tl137027137051%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137025137046%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137027137051%_))
                              (let ((_%e137028137054%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137027137051%_))))
                                (let ((_%hd137029137057%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137028137054%_)))
                                      (_%tl137030137059%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137028137054%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137030137059%_))
                                      (let ((_%e137031137062%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137030137059%_))))
                                        (let ((_%hd137032137065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137031137062%_)))
                                              (_%tl137033137067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137031137062%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137033137067%_))
                                              (let ((_%e137034137070%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137033137067%_))))
                                                (let ((_%hd137035137073%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137034137070%_)))
                                                      (_%tl137036137075%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137034137070%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137036137075%_))
                                                      ((lambda (_%L137078%_
                                                                _%L137079%_
                                                                _%L137080%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137017%_ _%L137078%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137017%_
                                      _%L137079%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137017%_
                                            _%L137080%_))
                                         (cons ''#f '()))))))
               _%hd137035137073%_
               _%hd137032137065%_
               _%hd137029137057%_)
              (_%g137020137041%_ _%g137021137044%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137020137041%_
                                               _%g137021137044%_))))
                                      (_%g137020137041%_ _%g137021137044%_))))
                              (_%g137020137041%_ _%g137021137044%_))))
                      (_%g137020137041%_ _%g137021137044%_)))))
          (_%g137019137098%_ _%stx137018%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self136917%_ _%stx136918%_)
        (let* ((_%g136920136945%_
                (lambda (_%g136921136942%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136921136942%_))))
               (_%g136919137014%_
                (lambda (_%g136921136948%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136921136948%_))
                      (let ((_%e136926136950%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136921136948%_))))
                        (let ((_%hd136927136953%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136926136950%_)))
                              (_%tl136928136955%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136926136950%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136928136955%_))
                              (let ((_%e136929136958%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136928136955%_))))
                                (let ((_%hd136930136961%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136929136958%_)))
                                      (_%tl136931136963%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136929136958%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136931136963%_))
                                      (let ((_%e136932136966%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136931136963%_))))
                                        (let ((_%hd136933136969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136932136966%_)))
                                              (_%tl136934136971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136932136966%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136934136971%_))
                                              (let ((_%e136935136974%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136934136971%_))))
                                                (let ((_%hd136936136977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136935136974%_)))
                                                      (_%tl136937136979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136935136974%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl136937136979%_))
                                                      (let ((_%e136938136982%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl136937136979%_))))
                (let ((_%hd136939136985%_
                       (let () (declare (not safe)) (##car _%e136938136982%_)))
                      (_%tl136940136987%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e136938136982%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136940136987%_))
                      ((lambda (_%L136990%_
                                _%L136991%_
                                _%L136992%_
                                _%L136993%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self136917%_
                                        _%L136991%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self136917%_
                                              _%L136990%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self136917%_
                                                    _%L136992%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self136917%_
                                                          _%L136993%_))
                                                       (cons ''#f '())))))))
                       _%hd136939136985%_
                       _%hd136936136977%_
                       _%hd136933136969%_
                       _%hd136930136961%_)
                      (_%g136920136945%_ _%g136921136948%_))))
              (_%g136920136945%_ _%g136921136948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136920136945%_
                                               _%g136921136948%_))))
                                      (_%g136920136945%_ _%g136921136948%_))))
                              (_%g136920136945%_ _%g136921136948%_))))
                      (_%g136920136945%_ _%g136921136948%_)))))
          (_%g136919137014%_ _%stx136918%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self136712%_ _%stx136713%_)
        (let* ((_%g136715136736%_
                (lambda (_%g136716136733%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136716136733%_))))
               (_%g136714136914%_
                (lambda (_%g136716136739%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136716136739%_))
                      (let ((_%e136720136741%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136716136739%_))))
                        (let ((_%hd136721136744%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136720136741%_)))
                              (_%tl136722136746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136720136741%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136722136746%_))
                              (let ((_%e136723136749%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136722136746%_))))
                                (let ((_%hd136724136752%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136723136749%_)))
                                      (_%tl136725136754%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136723136749%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136725136754%_))
                                      (let ((_%e136726136757%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136725136754%_))))
                                        (let ((_%hd136727136760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136726136757%_)))
                                              (_%tl136728136762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136726136757%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136728136762%_))
                                              (let ((_%e136729136765%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136728136762%_))))
                                                (let ((_%hd136730136768%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136729136765%_)))
                                                      (_%tl136731136770%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136729136765%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl136731136770%_))
                                                      ((lambda (_%L136773%_
                                                                _%L136774%_
                                                                _%L136775%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self136712%_
                                    _%L136773%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self136712%_
                                          _%L136774%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp136793%_ ((_%rest136796%_
                                         (cons _%L136774%_
                                               (cons _%L136773%_ '())))
                                        (_%bind136798%_ '())
                                        (_%args136799%_ '()))
                       (let* ((_%rest136800136808%_ _%rest136796%_)
                              (_%else136802136816%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind136798%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp145021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp145021 _%args136799%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K136804136902%_
                               (lambda (_%rest136819%_ _%e136820%_)
                                 (let* ((_%__stx144658144659%_ _%e136820%_)
                                        (_%g136825136843%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144658144659%_)))))
                                   (let ((_%__kont144660144661%_
                                          (lambda ()
                                            (_%lp136793%_
                                             _%rest136819%_
                                             _%bind136798%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e136820%_))
                                                   _%args136799%_))))
                                         (_%__kont144662144663%_
                                          (lambda ()
                                            (_%lp136793%_
                                             _%rest136819%_
                                             _%bind136798%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e136820%_))
                                                   _%args136799%_))))
                                         (_%__kont144664144665%_
                                          (lambda ()
                                            (let ((_%tmp136850%_
                                                   (let ((__tmp145022
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp145022))))
                                              (_%lp136793%_
                                               _%rest136819%_
                                               (cons (cons _%tmp136850%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e136820%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind136798%_)
                                               (cons _%tmp136850%_
                                                     _%args136799%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144658144659%_))
                                         (let ((_%e136827136881%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144658144659%_))))
                                           (let ((_%tl136829136886%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e136827136881%_)))
                                                 (_%hd136828136884%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e136827136881%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd136828136884%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd136828136884%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl136829136886%_))
                                                         (let ((_%e136830136889%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl136829136886%_))))
                   (let ((_%tl136832136894%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e136830136889%_)))
                         (_%hd136831136892%_
                          (let ()
                            (declare (not safe))
                            (##car _%e136830136889%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl136832136894%_))
                         (_%__kont144660144661%_)
                         (_%__kont144664144665%_))))
                 (_%__kont144664144665%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd136828136884%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl136829136886%_))
                     (let ((_%e136836136866%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl136829136886%_))))
                       (let ((_%tl136838136871%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e136836136866%_)))
                             (_%hd136837136869%_
                              (let ()
                                (declare (not safe))
                                (##car _%e136836136866%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl136838136871%_))
                             (_%__kont144662144663%_)
                             (_%__kont144664144665%_))))
                     (_%__kont144664144665%_))
                 (_%__kont144664144665%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144664144665%_))))
                                         (_%__kont144664144665%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest136800136808%_))
                             (let ((_%hd136805136905%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest136800136808%_)))
                                   (_%tl136806136907%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest136800136808%_))))
                               (let* ((_%e136910%_ _%hd136805136905%_)
                                      (_%rest136912%_ _%tl136806136907%_))
                                 (_%K136804136902%_
                                  _%rest136912%_
                                  _%e136910%_)))
                             (_%else136802136816%_))))))
               _%hd136730136768%_
               _%hd136727136760%_
               _%hd136724136752%_)
              (_%g136715136736%_ _%g136716136739%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136715136736%_
                                               _%g136716136739%_))))
                                      (_%g136715136736%_ _%g136716136739%_))))
                              (_%g136715136736%_ _%g136716136739%_))))
                      (_%g136715136736%_ _%g136716136739%_)))))
          (_%g136714136914%_ _%stx136713%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self136491%_ _%stx136492%_)
        (let* ((_%g136494136519%_
                (lambda (_%g136495136516%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136495136516%_))))
               (_%g136493136709%_
                (lambda (_%g136495136522%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136495136522%_))
                      (let ((_%e136500136524%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136495136522%_))))
                        (let ((_%hd136501136527%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136500136524%_)))
                              (_%tl136502136529%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136500136524%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136502136529%_))
                              (let ((_%e136503136532%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136502136529%_))))
                                (let ((_%hd136504136535%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136503136532%_)))
                                      (_%tl136505136537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136503136532%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136505136537%_))
                                      (let ((_%e136506136540%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136505136537%_))))
                                        (let ((_%hd136507136543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136506136540%_)))
                                              (_%tl136508136545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136506136540%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136508136545%_))
                                              (let ((_%e136509136548%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136508136545%_))))
                                                (let ((_%hd136510136551%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136509136548%_)))
                                                      (_%tl136511136553%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136509136548%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl136511136553%_))
                                                      (let ((_%e136512136556%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl136511136553%_))))
                (let ((_%hd136513136559%_
                       (let () (declare (not safe)) (##car _%e136512136556%_)))
                      (_%tl136514136561%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e136512136556%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136514136561%_))
                      ((lambda (_%L136564%_
                                _%L136565%_
                                _%L136566%_
                                _%L136567%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self136491%_
                                            _%L136565%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self136491%_
                                                  _%L136564%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self136491%_
                                                        _%L136566%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp136588%_ ((_%rest136591%_
                                                 (cons _%L136566%_
                                                       (cons _%L136564%_
                                                             (cons _%L136565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind136593%_ '())
                                                (_%args136594%_ '()))
                               (let* ((_%rest136595136603%_ _%rest136591%_)
                                      (_%else136597136611%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind136593%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp145023 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp145023 _%args136594%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K136599136697%_
                                       (lambda (_%rest136614%_ _%e136615%_)
                                         (let* ((_%__stx144704144705%_
                                                 _%e136615%_)
                                                (_%g136620136638%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx144704144705%_)))))
                                           (let ((_%__kont144706144707%_
                                                  (lambda ()
                                                    (_%lp136588%_
                                                     _%rest136614%_
                                                     _%bind136593%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e136615%_))
                                                           _%args136594%_))))
                                                 (_%__kont144708144709%_
                                                  (lambda ()
                                                    (_%lp136588%_
                                                     _%rest136614%_
                                                     _%bind136593%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e136615%_))
                                                           _%args136594%_))))
                                                 (_%__kont144710144711%_
                                                  (lambda ()
                                                    (let ((_%tmp136645%_
                                                           (let ((__tmp145024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp145024))))
              (_%lp136588%_
               _%rest136614%_
               (cons (cons _%tmp136645%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e136615%_))
                                 '()))
                     _%bind136593%_)
               (cons _%tmp136645%_ _%args136594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx144704144705%_))
                                                 (let ((_%e136622136676%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx144704144705%_))))
                                                   (let ((_%tl136624136681%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e136622136676%_)))
                                                         (_%hd136623136679%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e136622136676%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd136623136679%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd136623136679%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl136624136681%_))
                         (let ((_%e136625136684%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl136624136681%_))))
                           (let ((_%tl136627136689%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e136625136684%_)))
                                 (_%hd136626136687%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e136625136684%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl136627136689%_))
                                 (_%__kont144706144707%_)
                                 (_%__kont144710144711%_))))
                         (_%__kont144710144711%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd136623136679%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl136624136681%_))
                             (let ((_%e136631136661%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl136624136681%_))))
                               (let ((_%tl136633136666%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e136631136661%_)))
                                     (_%hd136632136664%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e136631136661%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl136633136666%_))
                                     (_%__kont144708144709%_)
                                     (_%__kont144710144711%_))))
                             (_%__kont144710144711%_))
                         (_%__kont144710144711%_)))
                 (_%__kont144710144711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144710144711%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest136595136603%_))
                                     (let ((_%hd136600136700%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest136595136603%_)))
                                           (_%tl136601136702%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest136595136603%_))))
                                       (let* ((_%e136705%_ _%hd136600136700%_)
                                              (_%rest136707%_
                                               _%tl136601136702%_))
                                         (_%K136599136697%_
                                          _%rest136707%_
                                          _%e136705%_)))
                                     (_%else136597136611%_))))))
                       _%hd136513136559%_
                       _%hd136510136551%_
                       _%hd136507136543%_
                       _%hd136504136535%_)
                      (_%g136494136519%_ _%g136495136522%_))))
              (_%g136494136519%_ _%g136495136522%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136494136519%_
                                               _%g136495136522%_))))
                                      (_%g136494136519%_ _%g136495136522%_))))
                              (_%g136494136519%_ _%g136495136522%_))))
                      (_%g136494136519%_ _%g136495136522%_)))))
          (_%g136493136709%_ _%stx136492%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self136330%_ _%stx136331%_)
        (letrec ((_%import-set-template136333%_
                  (lambda (_%in136436%_ _%phi136437%_)
                    (let ((_%iphi136439%_
                           (fx+ _%phi136437%_
                                (##direct-structure-ref
                                 _%in136436%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports136440%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in136436%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp136442%_ ((_%rest136444%_ _%imports136440%_)
                                         (_%r136445%_ '()))
                        (let* ((_%rest136446136454%_ _%rest136444%_)
                               (_%else136448136462%_ (lambda () _%r136445%_))
                               (_%K136450136479%_
                                (lambda (_%rest136465%_ _%in136466%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in136466%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi136439%_))
                                          (_%lp136442%_
                                           _%rest136465%_
                                           (cons _%in136466%_ _%r136445%_))
                                          (_%lp136442%_
                                           _%rest136465%_
                                           _%r136445%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in136466%_
                                             'gx#module-import::t))
                                          (let ((_%iphi136470%_
                                                 (fx+ _%phi136437%_
                                                      (##direct-structure-ref
                                                       _%in136466%_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi136470%_))
                                                (_%lp136442%_
                                                 _%rest136465%_
                                                 (cons (##direct-structure-ref
                                                        (##direct-structure-ref
                                                         _%in136466%_
                                                         '1
                                                         gx#module-import::t
                                                         '#f)
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r136445%_))
                                                (_%lp136442%_
                                                 _%rest136465%_
                                                 _%r136445%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in136466%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi136473%_
                                                     (fx+ _%iphi136439%_
                                                          (##direct-structure-ref
                                                           _%in136466%_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi136473%_))
                                                    (_%lp136442%_
                                                     _%rest136465%_
                                                     (cons (##direct-structure-ref
                                                            _%in136466%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f)
                                                           _%r136445%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi136473%_))
                                                        (_%lp136442%_
                                                         _%rest136465%_
                                                         (let ((__tmp145025
                                                                (_%import-set-template136333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in136466%_
                         _%iphi136439%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r136445%_ __tmp145025)))
                (_%lp136442%_ _%rest136465%_ _%r136445%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp136442%_
                                               _%rest136465%_
                                               _%r136445%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest136446136454%_))
                              (let ((_%hd136451136482%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest136446136454%_)))
                                    (_%tl136452136484%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest136446136454%_))))
                                (let* ((_%in136487%_ _%hd136451136482%_)
                                       (_%rest136489%_ _%tl136452136484%_))
                                  (_%K136450136479%_
                                   _%rest136489%_
                                   _%in136487%_)))
                              (_%else136448136462%_))))))))
          (let* ((_%g136335136345%_
                  (lambda (_%g136336136342%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136336136342%_))))
                 (_%g136334136433%_
                  (lambda (_%g136336136348%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136336136348%_))
                        (let ((_%e136338136350%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136336136348%_))))
                          (let ((_%hd136339136353%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136338136350%_)))
                                (_%tl136340136355%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136338136350%_))))
                            ((lambda (_%L136358%_)
                               (let ((_%ht136369%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp136371%_ ((_%rest136373%_
                                                     _%L136358%_)
                                                    (_%loads136374%_ '()))
                                   (letrec ((_%K136376%_
                                             (lambda (_%ctx136426%_
                                                      _%rest136427%_)
                                               (let ((_%id136429%_
                                                      (##structure-ref
                                                       _%ctx136426%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht136369%_
                                                        _%id136429%_))
                                                     (_%lp136371%_
                                                      _%rest136427%_
                                                      _%loads136374%_)
                                                     (let ((_%rt136431%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id136429%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht136369%_
                                                          _%id136429%_
                                                          _%rt136431%_))
                                                       (_%lp136371%_
                                                        _%rest136427%_
                                                        (cons _%rt136431%_
                                                              _%loads136374%_))))))))
                                     (let* ((_%rest136377136385%_
                                             _%rest136373%_)
                                            (_%else136379136397%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp145027
                                                            (lambda (_%g136392136394%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g136392136394%_)))
                   (__tmp145026 (reverse _%loads136374%_)))
               (declare (not safe))
               (##map __tmp145027 __tmp145026)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K136381136414%_
                                             (lambda (_%rest136400%_
                                                      _%in136401%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in136401%_
                                                      'gx#module-context::t))
                                                   (_%K136376%_
                                                    _%in136401%_
                                                    _%rest136400%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in136401%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in136401%_
                             '3
                             gx#module-import::t
                             '#f))
                   (_%K136376%_
                    (##direct-structure-ref
                     (##direct-structure-ref
                      _%in136401%_
                      '1
                      gx#module-import::t
                      '#f)
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest136400%_)
                   (_%lp136371%_ _%rest136400%_ _%loads136374%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in136401%_
                      'gx#import-set::t))
                   (let ((_%phi136406%_
                          (##direct-structure-ref
                           _%in136401%_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _%phi136406%_)
                         (_%K136376%_
                          (##direct-structure-ref
                           _%in136401%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%rest136400%_)
                         (if (fxpositive? _%phi136406%_)
                             (let ((_%deps136410%_
                                    (_%import-set-template136333%_
                                     _%in136401%_
                                     '0)))
                               (_%lp136371%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest136400%_
                                   _%deps136410%_))
                                _%loads136374%_))
                             (_%lp136371%_ _%rest136400%_ _%loads136374%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx136331%_
                      _%in136401%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest136377136385%_))
                                           (let ((_%hd136382136417%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest136377136385%_)))
                                                 (_%tl136383136419%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest136377136385%_))))
                                             (let* ((_%in136422%_
                                                     _%hd136382136417%_)
                                                    (_%rest136424%_
                                                     _%tl136383136419%_))
                                               (_%K136381136414%_
                                                _%rest136424%_
                                                _%in136422%_)))
                                           (_%else136379136397%_)))))))
                             _%tl136340136355%_)))
                        (_%g136335136345%_ _%g136336136348%_)))))
            (_%g136334136433%_ _%stx136331%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self136143%_ _%stx136144%_)
        (letrec ((_%add-lift!136146%_
                  (lambda (_%expr136328%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr136328%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote136147%_
                  (lambda (_%id136325%_ _%marks136326%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id136325%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks136326%_
                                                        '()))))))))
                 (_%generate-simple136148%_
                  (lambda (_%stxq136320%_)
                    (let ((_%gid136322%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid136323%_
                           (gxc#generate-runtime-identifier _%stxq136320%_)))
                      (_%add-lift!136146%_
                       (cons 'define
                             (cons _%gid136322%_
                                   (cons (_%generate-syntax-quote136147%_
                                          _%qid136323%_
                                          ''())
                                         '()))))
                      (let ((__tmp145028
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145028 _%stxq136320%_ _%gid136322%_))
                      _%gid136322%_)))
                 (_%generate-serialized136149%_
                  (lambda (_%stxq136310%_ _%marks136311%_)
                    (let* ((_%mark-refs136313%_
                            (map _%generate-mark136150%_ _%marks136311%_))
                           (_%gid136315%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid136317%_
                            (gxc#generate-runtime-identifier _%stxq136310%_)))
                      (_%add-lift!136146%_
                       (cons 'define
                             (cons _%gid136315%_
                                   (cons (_%generate-syntax-quote136147%_
                                          _%qid136317%_
                                          (cons 'list _%mark-refs136313%_))
                                         '()))))
                      (let ((__tmp145029
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145029 _%stxq136310%_ _%gid136315%_))
                      _%gid136315%_)))
                 (_%generate-mark136150%_
                  (lambda (_%mark136295%_)
                    (let ((_%$e136297%_
                           (let ((__tmp145030
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp145030 _%mark136295%_))))
                      (if _%$e136297%_
                          (values _%$e136297%_)
                          (let* ((_%gid136301%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr136303%_
                                  (_%serialize-mark136151%_ _%mark136295%_))
                                 (_%ctx136305%_
                                  (let ((__tmp145031
                                         (##structure-ref
                                          _%mark136295%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp145031)))
                                 (_%ctx-ref136307%_
                                  (if (eq? _%ctx136305%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref136152%_
                                                               _%ctx136305%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp145032
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145032
                               _%mark136295%_
                               _%gid136301%_))
                            (_%add-lift!136146%_
                             (cons 'define
                                   (cons _%gid136301%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr136303%_ '()))
                   (cons _%ctx-ref136307%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid136301%_)))))
                 (_%serialize-mark136151%_
                  (lambda (_%mark136242%_)
                    (letrec ((_%quote-e136244%_
                              (lambda (_%sym136293%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym136293%_))
                                    _%sym136293%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym136293%_))))))
                      (let* ((_%mark136245136254%_ _%mark136242%_)
                             (_%E136247136258%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark136245136254%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K136248136270%_
                              (lambda (_%trace136261%_
                                       _%phi136262%_
                                       _%ctx136263%_
                                       _%subst136264%_)
                                (let ((_%subs136266%_
                                       (if _%subst136264%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst136264%_))
                                           '())))
                                  (cons _%phi136262%_
                                        (map (lambda (_%pair136268%_)
                                               (cons (_%quote-e136244%_
                                                      (car _%pair136268%_))
                                                     (_%quote-e136244%_
                                                      (cdr _%pair136268%_))))
                                             _%subs136266%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark136245136254%_
                               'gx#expander-mark::t))
                            (let* ((_%e136249136273%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136245136254%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst136276%_ _%e136249136273%_)
                                   (_%e136250136278%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136245136254%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx136281%_ _%e136250136278%_)
                                   (_%e136251136283%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136245136254%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi136286%_ _%e136251136283%_)
                                   (_%e136252136288%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136245136254%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace136291%_ _%e136252136288%_))
                              (_%K136248136270%_
                               _%trace136291%_
                               _%phi136286%_
                               _%ctx136281%_
                               _%subst136276%_))
                            (_%E136247136258%_))))))
                 (_%context-ref136152%_
                  (lambda (_%ctx136229%_)
                    (if (let ((__tmp145033
                               (##structure-ref
                                _%ctx136229%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp145033
                           'gx#module-context::t))
                        (let ((_%ctx-ref136231%_
                               (_%context-ref-nested136154%_ _%ctx136229%_))
                              (_%ctx-origin136232%_
                               (_%context-ref-origin136153%_ _%ctx136229%_))
                              (_%origin136233%_
                               (_%context-ref-origin136153%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin136233%_ _%ctx-origin136232%_)
                              (let ((_%ref136235%_
                                     (_%context-ref-nested136154%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp136237%_ ((_%ref136239%_
                                                    (cdr _%ref136235%_))
                                                   (_%ctx-ref136240%_
                                                    (cdr _%ctx-ref136231%_)))
                                  (if (and (pair? _%ref136239%_)
                                           (eq? (car _%ref136239%_)
                                                (car _%ctx-ref136240%_)))
                                      (_%lp136237%_
                                       (cdr _%ref136239%_)
                                       (cdr _%ctx-ref136240%_))
                                      (cons '#f _%ctx-ref136240%_))))
                              _%ctx-ref136231%_))
                        (let ((__tmp145034
                               (##structure-ref
                                _%ctx136229%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp145034)))))
                 (_%context-ref-origin136153%_
                  (lambda (_%ctx136221%_)
                    (let _%lp136223%_ ((_%ctx136225%_ _%ctx136221%_))
                      (let ((_%super136227%_
                             (##structure-ref
                              _%ctx136225%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136227%_
                               'gx#module-context::t))
                            (_%lp136223%_ _%super136227%_)
                            _%ctx136225%_)))))
                 (_%context-ref-nested136154%_
                  (lambda (_%ctx136212%_)
                    (let _%lp136214%_ ((_%ctx136216%_ _%ctx136212%_)
                                       (_%r136217%_ '()))
                      (let ((_%super136219%_
                             (##structure-ref
                              _%ctx136216%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136219%_
                               'gx#module-context::t))
                            (_%lp136214%_
                             _%super136219%_
                             (cons (car (##structure-ref
                                         _%ctx136216%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r136217%_))
                            (cons (let ((__tmp145035
                                         (##structure-ref
                                          _%ctx136216%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp145035))
                                  _%r136217%_)))))))
          (let* ((_%g136156136169%_
                  (lambda (_%g136157136166%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136157136166%_))))
                 (_%g136155136209%_
                  (lambda (_%g136157136172%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136157136172%_))
                        (let ((_%e136159136174%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136157136172%_))))
                          (let ((_%hd136160136177%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136159136174%_)))
                                (_%tl136161136179%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136159136174%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136161136179%_))
                                (let ((_%e136162136182%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136161136179%_))))
                                  (let ((_%hd136163136185%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136162136182%_)))
                                        (_%tl136164136187%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136162136182%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136164136187%_))
                                        ((lambda (_%L136190%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L136190%_))
                                               (let ((_%$e136203%_
                                                      (let ((__tmp145036
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp145036 _%L136190%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e136203%_
                                                     (values _%$e136203%_)
                                                     (let ((_%marks136207%_
                                                            (##direct-structure-ref
                                                             _%L136190%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks136207%_)
                                                           (_%generate-simple136148%_
                                                            _%L136190%_)
                                                           (_%generate-serialized136149%_
                                                            _%L136190%_
                                                            _%marks136207%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L136190%_))))
                                         _%hd136163136185%_)
                                        (_%g136156136169%_
                                         _%g136157136172%_))))
                                (_%g136156136169%_ _%g136157136172%_))))
                        (_%g136156136169%_ _%g136157136172%_)))))
            (_%g136155136209%_ _%stx136144%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self136075%_ _%stx136076%_)
        (let* ((_%g136078136095%_
                (lambda (_%g136079136092%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136079136092%_))))
               (_%g136077136140%_
                (lambda (_%g136079136098%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136079136098%_))
                      (let ((_%e136082136100%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136079136098%_))))
                        (let ((_%hd136083136103%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136082136100%_)))
                              (_%tl136084136105%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136082136100%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136084136105%_))
                              (let ((_%e136085136108%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136084136105%_))))
                                (let ((_%hd136086136111%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136085136108%_)))
                                      (_%tl136087136113%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136085136108%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136087136113%_))
                                      (let ((_%e136088136116%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136087136113%_))))
                                        (let ((_%hd136089136119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136088136116%_)))
                                              (_%tl136090136121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136088136116%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136090136121%_))
                                              ((lambda (_%L136124%_
                                                        _%L136125%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136125%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self136075%_ _%L136124%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136089136119%_
                                               _%hd136086136111%_)
                                              (_%g136078136095%_
                                               _%g136079136098%_))))
                                      (_%g136078136095%_ _%g136079136098%_))))
                              (_%g136078136095%_ _%g136079136098%_))))
                      (_%g136078136095%_ _%g136079136098%_)))))
          (_%g136077136140%_ _%stx136076%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self136024%_ _%stx136025%_)
        (let* ((_%g136027136037%_
                (lambda (_%g136028136034%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136028136034%_))))
               (_%g136026136072%_
                (lambda (_%g136028136040%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136028136040%_))
                      (let ((_%e136030136042%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136028136040%_))))
                        (let ((_%hd136031136045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136030136042%_)))
                              (_%tl136032136047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136030136042%_))))
                          ((lambda (_%L136050%_)
                             (let* ((_%c-body136064%_
                                     (map (lambda (_%g136059136061%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self136024%_
                                               _%g136059136061%_)))
                                          _%L136050%_))
                                    (_%c-body136069%_
                                     (let ((__tmp145037
                                            (lambda (_%$obj136066%_)
                                              (not (eq? _%$obj136066%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp145037
                                        _%c-body136064%_))))
                               (cons '%#begin _%c-body136069%_)))
                           _%tl136032136047%_)))
                      (_%g136027136037%_ _%g136028136040%_)))))
          (_%g136026136072%_ _%stx136025%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self135929%_ _%stx135930%_)
        (let* ((_%g135932135942%_
                (lambda (_%g135933135939%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135933135939%_))))
               (_%g135931136021%_
                (lambda (_%g135933135945%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135933135945%_))
                      (let ((_%e135935135947%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135933135945%_))))
                        (let ((_%hd135936135950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135935135947%_)))
                              (_%tl135937135952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135935135947%_))))
                          ((lambda (_%L135955%_)
                             (let* ((_%phi135965%_
                                     (let ((__tmp145038
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp145038 '1)))
                                    (_%block135967%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self135929%_ 'state))
                                      _%phi135965%_))
                                    (_%compiled135970%_
                                     (let ((__tmp145039
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self135929%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L135955%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp145039
                                        gx#current-expander-phi
                                        _%phi135965%_)))
                                    (_%g135973135983%_
                                     (lambda (_%g135974135980%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g135974135980%_))))
                                    (_%g135972136018%_
                                     (lambda (_%g135974135986%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g135974135986%_))
                                           (let ((_%e135976135988%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g135974135986%_))))
                                             (let ((_%hd135977135991%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e135976135988%_)))
                                                   (_%tl135978135993%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e135976135988%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd135977135991%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd135977135991%_))
                                                       ((lambda (_%L135996%_)
                                                          (let ((_%c-body136013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj136010%_)
                                   (not (eq? _%$obj136010%_ '#!void)))
                                 _%L135996%_)))
                    (if _%block135967%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block135967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body136013%_))
                        (if (null? _%c-body136013%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body136013%_)))))
                _%tl135978135993%_)
               (_%g135973135983%_ _%g135974135986%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g135973135983%_
                                                    _%g135974135986%_))))
                                           (_%g135973135983%_
                                            _%g135974135986%_)))))
                               (_%g135972136018%_ _%compiled135970%_)))
                           _%tl135937135952%_)))
                      (_%g135932135942%_ _%g135933135945%_)))))
          (_%g135931136021%_ _%stx135930%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self135860%_ _%stx135861%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self135860%_ 'state)))
        (let* ((_%g135863135877%_
                (lambda (_%g135864135874%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135864135874%_))))
               (_%g135862135926%_
                (lambda (_%g135864135880%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135864135880%_))
                      (let ((_%e135867135882%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135864135880%_))))
                        (let ((_%hd135868135885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135867135882%_)))
                              (_%tl135869135887%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135867135882%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135869135887%_))
                              (let ((_%e135870135890%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135869135887%_))))
                                (let ((_%hd135871135893%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135870135890%_)))
                                      (_%tl135872135895%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135870135890%_))))
                                  ((lambda (_%L135898%_ _%L135899%_)
                                     (let ((_%key135912%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L135899%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key135912%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx135861%_
                                              _%L135899%_
                                              _%key135912%_)))
                                       (let* ((_%ctx135914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L135899%_)))
                                              (_%code135917%_
                                               (let ((__tmp145040
                                                      (lambda ()
                                                        (let ((__tmp145041
                                                               (##structure-ref
                                                                _%ctx135914%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self135860%_
                                                           __tmp145041)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp145040
                                                  gx#current-expander-context
                                                  _%ctx135914%_)))
                                              (_%rt135919%_
                                               (let ((__tmp145042
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp145042
                                                  _%ctx135914%_)))
                                              (_%loader135921%_
                                               (if _%rt135919%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt135919%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid135923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L135899%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self135860%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid135923%_
                                                     (cons _%code135917%_
                                                           _%loader135921%_))))))
                                   _%tl135872135895%_
                                   _%hd135871135893%_)))
                              (_%g135863135877%_ _%g135864135880%_))))
                      (_%g135863135877%_ _%g135864135880%_)))))
          (_%g135862135926%_ _%stx135861%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx135847%_ _%context-chain135848%_)
        (let _%lp135850%_ ((_%ctx135852%_ _%ctx135847%_) (_%path135853%_ '()))
          (let ((_%super135855%_
                 (##structure-ref _%ctx135852%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super135855%_ _%context-chain135848%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx135852%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path135853%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super135855%_
                       'gx#module-context::t))
                    (_%lp135850%_
                     _%super135855%_
                     (cons (car (##structure-ref
                                 _%ctx135852%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path135853%_))
                    (cons (let ((__tmp145043
                                 (##structure-ref
                                  _%ctx135852%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp145043))
                          _%path135853%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp135840%_ ((_%ctx135842%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r135843%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx135842%_ 'gx#module-context::t))
              (_%lp135840%_
               (##structure-ref _%ctx135842%_ '3 gx#phi-context::t '#f)
               (cons _%ctx135842%_ _%r135843%_))
              _%r135843%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self135603%_ _%stx135604%_)
        (letrec* ((_%context-chain135606%_ (gxc#current-context-chain))
                  (_%make-import-spec135607%_
                   (lambda (_%in135776%_)
                     (let* ((_%in135777135789%_ _%in135776%_)
                            (_%E135779135793%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in135777135789%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K135780135803%_
                             (lambda (_%phi135796%_
                                      _%name135797%_
                                      _%src-name135798%_
                                      _%src-phi135799%_
                                      _%src-key135800%_
                                      _%src-ctx135801%_)
                               (cons _%phi135796%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name135797%_)
                                           (cons _%src-phi135799%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name135798%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in135777135789%_
                              'gx#module-import::t))
                           (let ((_%e135781135806%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in135777135789%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e135781135806%_
                                    'gx#module-export::t))
                                 (let* ((_%e135784135809%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135781135806%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx135812%_ _%e135784135809%_)
                                        (_%e135785135814%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135781135806%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key135817%_ _%e135785135814%_)
                                        (_%e135786135819%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135781135806%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi135822%_ _%e135786135819%_)
                                        (_%e135787135824%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135781135806%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name135827%_ _%e135787135824%_)
                                        (_%e135782135829%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in135777135789%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name135832%_ _%e135782135829%_)
                                        (_%e135783135834%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in135777135789%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi135837%_ _%e135783135834%_))
                                   (_%K135780135803%_
                                    _%phi135837%_
                                    _%name135832%_
                                    _%src-name135827%_
                                    _%src-phi135822%_
                                    _%src-key135817%_
                                    _%src-ctx135812%_))
                                 (_%E135779135793%_)))
                           (_%E135779135793%_)))))
                  (_%make-import-path135608%_
                   (lambda (_%ctx135774%_)
                     (gxc#generate-meta-import-path
                      _%ctx135774%_
                      _%context-chain135606%_)))
                  (_%make-import-spec-in135609%_
                   (lambda (_%ctx135771%_ _%in135772%_)
                     (cons 'spec:
                           (cons (_%make-import-path135608%_ _%ctx135771%_)
                                 (reverse _%in135772%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self135603%_ 'state)))
          (let* ((_%g135611135621%_
                  (lambda (_%g135612135618%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135612135618%_))))
                 (_%g135610135768%_
                  (lambda (_%g135612135624%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135612135624%_))
                        (let ((_%e135614135626%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135612135624%_))))
                          (let ((_%hd135615135629%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135614135626%_)))
                                (_%tl135616135631%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135614135626%_))))
                            ((lambda (_%L135634%_)
                               (let _%lp135645%_ ((_%rest135647%_ _%L135634%_)
                                                  (_%current-src135648%_ '#f)
                                                  (_%current-in135649%_ '())
                                                  (_%r135650%_ '()))
                                 (let* ((_%rest135651135659%_ _%rest135647%_)
                                        (_%else135653135669%_
                                         (lambda ()
                                           (let ((_%r135667%_
                                                  (if _%current-src135648%_
                                                      (cons (_%make-import-spec-in135609%_
                                                             _%current-src135648%_
                                                             _%current-in135649%_)
                                                            _%r135650%_)
                                                      _%r135650%_)))
                                             (cons '%#import
                                                   (reverse _%r135667%_)))))
                                        (_%K135655135756%_
                                         (lambda (_%rest135672%_ _%in135673%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in135673%_
                                                  'gx#module-import::t))
                                               (let* ((_%in135675135682%_
                                                       _%in135673%_)
                                                      (_%E135677135686%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in135675135682%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K135678135694%_
               (lambda (_%src-ctx135689%_)
                 (if (eq? _%current-src135648%_ _%src-ctx135689%_)
                     (_%lp135645%_
                      _%rest135672%_
                      _%current-src135648%_
                      (cons (_%make-import-spec135607%_ _%in135673%_)
                            _%current-in135649%_)
                      _%r135650%_)
                     (if _%current-src135648%_
                         (_%lp135645%_
                          _%rest135672%_
                          _%src-ctx135689%_
                          (cons (_%make-import-spec135607%_ _%in135673%_) '())
                          (cons (_%make-import-spec-in135609%_
                                 _%current-src135648%_
                                 _%current-in135649%_)
                                _%r135650%_))
                         (_%lp135645%_
                          _%rest135672%_
                          _%src-ctx135689%_
                          (cons (_%make-import-spec135607%_ _%in135673%_) '())
                          _%r135650%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%in135675135682%_
                                                        'gx#module-import::t))
                                                     (let ((_%e135679135697%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in135675135682%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _%e135679135697%_
                                                              'gx#module-export::t))
                                                           (let* ((_%e135680135700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%e135679135697%_
                              '1
                              '#f
                              '#f)))
                          (_%src-ctx135703%_ _%e135680135700%_))
                     (_%K135678135694%_ _%src-ctx135703%_))
                   (_%E135677135686%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E135677135686%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in135673%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi135706%_
                                                           (##direct-structure-ref
                                                            _%in135673%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src135708%_
                                                           (##direct-structure-ref
                                                            _%in135673%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src-in135748%_
                                                           (let* ((_%g135709135718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path135608%_ _%src135708%_))
                          (_%E135712135722%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g135709135718%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K135714135738%_
                            (lambda (_%path135736%_) _%path135736%_))
                           (_%K135713135728%_
                            (lambda (_%path135726%_)
                              (cons 'in: _%path135726%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g135709135718%_))
                           (let ((_%tl135716135743%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g135709135718%_)))
                                 (_%hd135715135741%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g135709135718%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tl135716135743%_))
                                 (let ((_%path135746%_ _%hd135715135741%_))
                                   (_%K135714135738%_ _%path135746%_))
                                 (let ((_%path135731%_ _%g135709135718%_))
                                   (_%K135713135728%_ _%path135731%_))))
                           (let ((_%path135731%_ _%g135709135718%_))
                             (_%K135713135728%_ _%path135731%_))))))
                  (_%r135750%_
                   (if _%current-src135648%_
                       (cons (_%make-import-spec-in135609%_
                              _%current-src135648%_
                              _%current-in135649%_)
                             _%r135650%_)
                       _%r135650%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp135645%_
                                                      _%rest135672%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi135706%_)
                                                                _%src-in135748%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi135706%_
                                    (cons _%src-in135748%_ '()))))
                    _%r135750%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in135673%_
                                                          'gx#module-context::t))
                                                       (let ((_%r135754%_
                                                              (if _%current-src135648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in135609%_
                                 _%current-src135648%_
                                 _%current-in135649%_)
                                _%r135650%_)
                          _%r135650%_)))
                 (_%lp135645%_
                  _%rest135672%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path135608%_ _%in135673%_))
                        _%r135754%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135651135659%_))
                                       (let ((_%hd135656135759%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135651135659%_)))
                                             (_%tl135657135761%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135651135659%_))))
                                         (let* ((_%in135764%_
                                                 _%hd135656135759%_)
                                                (_%rest135766%_
                                                 _%tl135657135761%_))
                                           (_%K135655135756%_
                                            _%rest135766%_
                                            _%in135764%_)))
                                       (_%else135653135669%_)))))
                             _%tl135616135631%_)))
                        (_%g135611135621%_ _%g135612135624%_)))))
            (_%g135610135768%_ _%stx135604%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self135413%_ _%stx135414%_)
        (letrec* ((_%context-chain135416%_ (gxc#current-context-chain))
                  (_%make-import-path135417%_
                   (lambda (_%ctx135601%_)
                     (gxc#generate-meta-import-path
                      _%ctx135601%_
                      _%context-chain135416%_))))
          (let* ((_%g135419135429%_
                  (lambda (_%g135420135426%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135420135426%_))))
                 (_%g135418135598%_
                  (lambda (_%g135420135432%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135420135432%_))
                        (let ((_%e135422135434%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135420135432%_))))
                          (let ((_%hd135423135437%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135422135434%_)))
                                (_%tl135424135439%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135422135434%_))))
                            ((lambda (_%L135442%_)
                               (let _%lp135453%_ ((_%rest135455%_ _%L135442%_)
                                                  (_%r135456%_ '()))
                                 (let* ((_%rest135457135465%_ _%rest135455%_)
                                        (_%else135459135473%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r135456%_))))
                                        (_%K135461135586%_
                                         (lambda (_%rest135476%_ _%out135477%_)
                                           (let* ((_%out135478135491%_
                                                   _%out135477%_)
                                                  (_%E135481135495%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out135478135491%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K135485135565%_
                                                    (lambda (_%name135561%_
                                                             _%phi135562%_
                                                             _%key135563%_)
                                                      (_%lp135453%_
                                                       _%rest135476%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi135562%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key135563%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name135561%_)
                                             '()))))
                     _%r135456%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K135482135545%_
                                                    (lambda (_%phi135499%_
                                                             _%src135500%_)
                                                      (let* ((_%out135540%_
                                                              (if _%src135500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g135501135510%_
                                              (_%make-import-path135417%_
                                               _%src135500%_))
                                             (_%E135504135514%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g135501135510%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K135506135530%_
                                               (lambda (_%path135528%_)
                                                 _%path135528%_))
                                              (_%K135505135520%_
                                               (lambda (_%path135518%_)
                                                 (cons 'in: _%path135518%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g135501135510%_))
                                              (let ((_%tl135508135535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g135501135510%_)))
                                                    (_%hd135507135533%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g135501135510%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl135508135535%_))
                                                    (let ((_%path135538%_
                                                           _%hd135507135533%_))
                                                      (_%K135506135530%_
                                                       _%path135538%_))
                                                    (let ((_%path135523%_
                                                           _%g135501135510%_))
                                                      (_%K135505135520%_
                                                       _%path135523%_))))
                                              (let ((_%path135523%_
                                                     _%g135501135510%_))
                                                (_%K135505135520%_
                                                 _%path135523%_)))))
                                      '()))
                          '#t))
                     (_%out135542%_
                      (if (fxzero? _%phi135499%_)
                          _%out135540%_
                          (cons 'phi:
                                (cons _%phi135499%_
                                      (cons _%out135540%_ '()))))))
                (_%lp135453%_
                 _%rest135476%_
                 (cons _%out135542%_ _%r135456%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match135480135558%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out135478135491%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e135483135548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135478135491%_
                               '1
                               '#f
                               '#f)))
                           (_%e135484135553%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135478135491%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src135551%_ _%e135483135548%_)
                            (_%phi135556%_ _%e135484135553%_))
                        (_%K135482135545%_ _%phi135556%_ _%src135551%_)))
                    (_%E135481135495%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out135478135491%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e135486135568%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out135478135491%_
                        '1
                        '#f
                        '#f)))
                    (_%e135487135571%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135478135491%_
                        '2
                        '#f
                        '#f)))
                    (_%e135488135576%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135478135491%_
                        '3
                        '#f
                        '#f)))
                    (_%e135489135581%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135478135491%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key135574%_ _%e135487135571%_)
                     (_%phi135579%_ _%e135488135576%_)
                     (_%name135584%_ _%e135489135581%_))
                 (_%K135485135565%_
                  _%name135584%_
                  _%phi135579%_
                  _%key135574%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match135480135558%_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135457135465%_))
                                       (let ((_%hd135462135589%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135457135465%_)))
                                             (_%tl135463135591%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135457135465%_))))
                                         (let* ((_%out135594%_
                                                 _%hd135462135589%_)
                                                (_%rest135596%_
                                                 _%tl135463135591%_))
                                           (_%K135461135586%_
                                            _%rest135596%_
                                            _%out135594%_)))
                                       (_%else135459135473%_)))))
                             _%tl135424135439%_)))
                        (_%g135419135429%_ _%g135420135432%_)))))
            (_%g135418135598%_ _%stx135414%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self135374%_ _%stx135375%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self135374%_ 'state)))
        (let* ((_%g135377135387%_
                (lambda (_%g135378135384%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135378135384%_))))
               (_%g135376135410%_
                (lambda (_%g135378135390%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135378135390%_))
                      (let ((_%e135380135392%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135378135390%_))))
                        (let ((_%hd135381135395%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135380135392%_)))
                              (_%tl135382135397%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135380135392%_))))
                          ((lambda (_%L135400%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L135400%_)))
                           _%tl135382135397%_)))
                      (_%g135377135387%_ _%g135378135390%_)))))
          (_%g135376135410%_ _%stx135375%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self135245%_ _%stx135246%_)
        (letrec ((_%generate1135248%_
                  (lambda (_%id135369%_ _%eid135370%_)
                    (let ((_%eid135372%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid135370%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid135372%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx135246%_
                             _%eid135372%_)))
                      (cons (gxc#generate-runtime-identifier _%id135369%_)
                            (cons _%eid135372%_ '()))))))
          (let* ((_%g135250135278%_
                  (lambda (_%g135251135275%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135251135275%_))))
                 (_%g135249135366%_
                  (lambda (_%g135251135281%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135251135281%_))
                        (let ((_%e135254135283%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135251135281%_))))
                          (let ((_%hd135255135286%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135254135283%_)))
                                (_%tl135256135288%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135254135283%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl135256135288%_))
                                (let ((_g145044_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl135256135288%_
                                          '0))))
                                  (begin
                                    (let ((_g145045_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145044_)
                                                 (##vector-length _g145044_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145045_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145045_)))
                                    (let ((_%target135257135291%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145044_ 0)))
                                          (_%tl135259135293%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145044_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135259135293%_))
                                          (letrec ((_%loop135260135296%_
                                                    (lambda (_%hd135258135299%_
                                                             _%eid135264135301%_
                                                             _%id135265135303%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd135258135299%_))
                                                          (let ((_%e135261135306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd135258135299%_))))
                    (let ((_%lp-hd135262135309%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135261135306%_)))
                          (_%lp-tl135263135311%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135261135306%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd135262135309%_))
                          (let ((_%e135268135314%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd135262135309%_))))
                            (let ((_%hd135269135317%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135268135314%_)))
                                  (_%tl135270135319%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135268135314%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl135270135319%_))
                                  (let ((_%e135271135322%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl135270135319%_))))
                                    (let ((_%hd135272135325%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135271135322%_)))
                                          (_%tl135273135327%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135271135322%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135273135327%_))
                                          (_%loop135260135296%_
                                           _%lp-tl135263135311%_
                                           (cons _%hd135272135325%_
                                                 _%eid135264135301%_)
                                           (cons _%hd135269135317%_
                                                 _%id135265135303%_))
                                          (_%g135250135278%_
                                           _%g135251135281%_))))
                                  (_%g135250135278%_ _%g135251135281%_))))
                          (_%g135250135278%_ _%g135251135281%_))))
                  (let ((_%eid135266135330%_ (reverse _%eid135264135301%_))
                        (_%id135267135332%_ (reverse _%id135265135303%_)))
                    ((lambda (_%L135335%_ _%L135336%_)
                       (cons '%#extern
                             (map _%generate1135248%_
                                  (let ((__tmp145046
                                         (lambda (_%g135351135354%_
                                                  _%g135352135356%_)
                                           (cons _%g135351135354%_
                                                 _%g135352135356%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145046 '() _%L135336%_))
                                  (let ((__tmp145047
                                         (lambda (_%g135358135361%_
                                                  _%g135359135363%_)
                                           (cons _%g135358135361%_
                                                 _%g135359135363%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145047 '() _%L135335%_)))))
                     _%eid135266135330%_
                     _%id135267135332%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop135260135296%_
                                             _%target135257135291%_
                                             '()
                                             '()))
                                          (_%g135250135278%_
                                           _%g135251135281%_)))))
                                (_%g135250135278%_ _%g135251135281%_))))
                        (_%g135250135278%_ _%g135251135281%_)))))
            (_%g135249135366%_ _%stx135246%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self135035%_ _%stx135036%_)
        (letrec ((_%generate1135038%_
                  (lambda (_%id135240%_)
                    (let ((_%eid135242%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id135240%_)))
                          (_%ident135243%_
                           (gxc#generate-runtime-identifier _%id135240%_)))
                      (cons '%#define-runtime
                            (cons _%ident135243%_ (cons _%eid135242%_ '()))))))
                 (_%generate*135039%_
                  (lambda (_%all135208%_)
                    (let* ((_%all135209135217%_ _%all135208%_)
                           (_%else135211135225%_
                            (lambda () (cons '%#begin _%all135208%_)))
                           (_%K135213135230%_
                            (lambda (_%one135228%_) _%one135228%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all135209135217%_))
                          (let ((_%hd135214135233%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all135209135217%_)))
                                (_%tl135215135235%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all135209135217%_))))
                            (let ((_%one135238%_ _%hd135214135233%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl135215135235%_))
                                  (_%K135213135230%_ _%one135238%_)
                                  (_%else135211135225%_))))
                          (_%else135211135225%_))))))
          (let* ((_%g135041135058%_
                  (lambda (_%g135042135055%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135042135055%_))))
                 (_%g135040135205%_
                  (lambda (_%g135042135061%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135042135061%_))
                        (let ((_%e135045135063%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135042135061%_))))
                          (let ((_%hd135046135066%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135045135063%_)))
                                (_%tl135047135068%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135045135063%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135047135068%_))
                                (let ((_%e135048135071%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135047135068%_))))
                                  (let ((_%hd135049135074%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135048135071%_)))
                                        (_%tl135050135076%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135048135071%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135050135076%_))
                                        (let ((_%e135051135079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135050135076%_))))
                                          (let ((_%hd135052135082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135051135079%_)))
                                                (_%tl135053135084%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135051135079%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135053135084%_))
                                                ((lambda (_%L135087%_
                                                          _%L135088%_)
                                                   (let _%lp135104%_ ((_%rest135106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L135088%_)
                              (_%r135107%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx144783144784%_
                                                             _%rest135106%_)
                                                            (_%g135112135129%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx144783144784%_)))))
               (let ((_%__kont144785144786%_
                      (lambda (_%L135192%_)
                        (_%lp135104%_ _%L135192%_ _%r135107%_)))
                     (_%__kont144787144788%_
                      (lambda (_%L135165%_ _%L135166%_)
                        (_%lp135104%_
                         _%L135165%_
                         (cons (_%generate1135038%_ _%L135166%_)
                               _%r135107%_))))
                     (_%__kont144789144790%_
                      (lambda (_%L135141%_)
                        (_%generate*135039%_
                         (let ((__tmp145048
                                (cons (_%generate1135038%_ _%L135141%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp145048 _%r135107%_)))))
                     (_%__kont144791144792%_
                      (lambda () (_%generate*135039%_ (reverse _%r135107%_)))))
                 (let ((_%g135110135152%_
                        (lambda ()
                          (let ((_%L135141%_ _%__stx144783144784%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L135141%_))
                                (_%__kont144789144790%_ _%L135141%_)
                                (_%__kont144791144792%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx144783144784%_))
                       (let ((_%e135115135181%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx144783144784%_))))
                         (let ((_%tl135117135186%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e135115135181%_)))
                               (_%hd135116135184%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e135115135181%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd135116135184%_))
                               (let ((_%e135118135189%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd135116135184%_))))
                                 (if (equal? _%e135118135189%_ '#f)
                                     (_%__kont144785144786%_
                                      _%tl135117135186%_)
                                     (_%__kont144787144788%_
                                      _%tl135117135186%_
                                      _%hd135116135184%_)))
                               (_%__kont144787144788%_
                                _%tl135117135186%_
                                _%hd135116135184%_))))
                       (let () (declare (not safe)) (_%g135110135152%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd135052135082%_
                                                 _%hd135049135074%_)
                                                (_%g135041135058%_
                                                 _%g135042135061%_))))
                                        (_%g135041135058%_
                                         _%g135042135061%_))))
                                (_%g135041135058%_ _%g135042135061%_))))
                        (_%g135041135058%_ _%g135042135061%_)))))
            (_%g135040135205%_ _%stx135036%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self134932%_ _%stx134933%_)
        (let* ((_%g134935134952%_
                (lambda (_%g134936134949%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134936134949%_))))
               (_%g134934135032%_
                (lambda (_%g134936134955%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134936134955%_))
                      (let ((_%e134939134957%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134936134955%_))))
                        (let ((_%hd134940134960%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134939134957%_)))
                              (_%tl134941134962%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134939134957%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134941134962%_))
                              (let ((_%e134942134965%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134941134962%_))))
                                (let ((_%hd134943134968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134942134965%_)))
                                      (_%tl134944134970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134942134965%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134944134970%_))
                                      (let ((_%e134945134973%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134944134970%_))))
                                        (let ((_%hd134946134976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134945134973%_)))
                                              (_%tl134947134978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134945134973%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134947134978%_))
                                              ((lambda (_%L134981%_
                                                        _%L134982%_)
                                                 (let* ((_%eid134997%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L134982%_)))
                                                        (_%phi134999%_
                                                         (let ((__tmp145049
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp145049 '1)))
                (_%block135001%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self134932%_ 'state))
                  _%phi134999%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g135004135011%_
                                                           (lambda (_%g135005135008%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g135005135008%_))))
                  (_%g135003135029%_
                   (lambda (_%g135005135014%_)
                     ((lambda (_%L135016%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self134932%_ 'state))
                         _%phi134999%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L135016%_ (cons _%L134981%_ '())))))
                      _%g135005135014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g135003135029%_
                                                      _%eid134997%_))
                                                   (if _%block135001%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block135001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L134982%_)
                                             (cons _%eid134997%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L134982%_)
                           (cons _%eid134997%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd134946134976%_
                                               _%hd134943134968%_)
                                              (_%g134935134952%_
                                               _%g134936134955%_))))
                                      (_%g134935134952%_ _%g134936134955%_))))
                              (_%g134935134952%_ _%g134936134955%_))))
                      (_%g134935134952%_ _%g134936134955%_)))))
          (_%g134934135032%_ _%stx134933%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self134864%_ _%stx134865%_)
        (let* ((_%g134867134884%_
                (lambda (_%g134868134881%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134868134881%_))))
               (_%g134866134929%_
                (lambda (_%g134868134887%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134868134887%_))
                      (let ((_%e134871134889%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134868134887%_))))
                        (let ((_%hd134872134892%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134871134889%_)))
                              (_%tl134873134894%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134871134889%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134873134894%_))
                              (let ((_%e134874134897%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134873134894%_))))
                                (let ((_%hd134875134900%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134874134897%_)))
                                      (_%tl134876134902%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134874134897%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134876134902%_))
                                      (let ((_%e134877134905%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134876134902%_))))
                                        (let ((_%hd134878134908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134877134905%_)))
                                              (_%tl134879134910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134877134905%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134879134910%_))
                                              ((lambda (_%L134913%_
                                                        _%L134914%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L134914%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L134913%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd134878134908%_
                                               _%hd134875134900%_)
                                              (_%g134867134884%_
                                               _%g134868134887%_))))
                                      (_%g134867134884%_ _%g134868134887%_))))
                              (_%g134867134884%_ _%g134868134887%_))))
                      (_%g134867134884%_ _%g134868134887%_)))))
          (_%g134866134929%_ _%stx134865%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self134861%_ _%stx134862%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self134861%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx134862%_)
        (gxc#generate-meta-define-values% _%self134861%_ _%stx134862%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self134858%_ _%stx134859%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self134858%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx134859%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp145051 (list)) (__tmp145050 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp145051
         '(src n open blocks)
         __tmp145050
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args134855%_
        (apply make-instance gxc#meta-state::t _%$args134855%_)))
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
      (lambda (_%self134841%_ _%ctx134842%_)
        (let ((_%self134845%_ _%self134841%_))
          (if (let ((__tmp145052
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self134845%_))))
                (declare (not safe))
                (##fx< '4 __tmp145052))
              (begin
                (let ((__tmp145053
                       (let ((__tmp145054
                              (##structure-ref
                               _%ctx134842%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp145054))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134845%_
                   __tmp145053
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self134845%_ '1 '2 '#f '#f))
                (let ((__tmp145055
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134845%_
                   __tmp145055
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self134845%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp145056
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self134845%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self134845%_
                       '4
                       __tmp145056))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp145058 (list)) (__tmp145057 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp145058
         '(ctx phi n code)
         __tmp145057
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args134716%_
        (apply make-instance gxc#meta-state-block::t _%$args134716%_)))
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
      (lambda (_%state134675%_ _%phi134676%_)
        (let* ((_%state134677134685%_ _%state134675%_)
               (_%E134679134689%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state134677134685%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K134680134698%_
                (lambda (_%open134692%_ _%n134693%_ _%src134694%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open134692%_ _%phi134676%_))
                      '#f
                      (let ((_%block-ref134696%_
                             (let ((__tmp145059 (number->string _%n134693%_)))
                               (declare (not safe))
                               (##string-append
                                _%src134694%_
                                '"~"
                                __tmp145059))))
                        (##structure-set!
                         _%state134675%_
                         (let () (declare (not safe)) (##fx+ _%n134693%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp145060
                               (let ((__tmp145061
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp145061
                                  _%phi134676%_
                                  _%n134693%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open134692%_ _%phi134676%_ __tmp145060))
                        _%block-ref134696%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state134677134685%_
                 'gxc#meta-state::t))
              (let* ((_%e134681134701%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134677134685%_
                         '1
                         '#f
                         '#f)))
                     (_%src134704%_ _%e134681134701%_)
                     (_%e134682134706%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134677134685%_
                         '2
                         '#f
                         '#f)))
                     (_%n134709%_ _%e134682134706%_)
                     (_%e134683134711%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134677134685%_
                         '3
                         '#f
                         '#f)))
                     (_%open134714%_ _%e134683134711%_))
                (_%K134680134698%_ _%open134714%_ _%n134709%_ _%src134704%_))
              (_%E134679134689%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state134669%_ _%phi134670%_ _%stx134671%_)
        (let ((_%block134673%_
               (let ((__tmp145062
                      (##structure-ref
                       _%state134669%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp145062 _%phi134670%_))))
          (##structure-set!
           _%block134673%_
           (cons _%stx134671%_
                 (##structure-ref
                  _%block134673%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state134663%_)
        (##structure-set!
         _%state134663%_
         (let ((__tmp145065
                (lambda (_%_134665%_ _%block134666%_ _%r134667%_)
                  (cons _%block134666%_ _%r134667%_)))
               (__tmp145064
                (##structure-ref _%state134663%_ '4 gxc#meta-state::t '#f))
               (__tmp145063
                (##structure-ref _%state134663%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp145065 __tmp145064 __tmp145063))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state134663%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state134615%_)
        (gxc#meta-state-end-phi! _%state134615%_)
        (let ((__tmp145067
               (lambda (_%block134617%_ _%r134618%_)
                 (let* ((_%block134619134628%_ _%block134617%_)
                        (_%E134621134632%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block134619134628%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K134622134640%_
                         (lambda (_%code134635%_
                                  _%n134636%_
                                  _%phi134637%_
                                  _%ctx134638%_)
                           (if (null? _%code134635%_)
                               _%r134618%_
                               (cons (cons _%ctx134638%_
                                           (cons _%phi134637%_
                                                 (cons _%n134636%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code134635%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r134618%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block134619134628%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e134623134643%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134619134628%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx134646%_ _%e134623134643%_)
                              (_%e134624134648%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134619134628%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi134651%_ _%e134624134648%_)
                              (_%e134625134653%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134619134628%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n134656%_ _%e134625134653%_)
                              (_%e134626134658%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134619134628%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code134661%_ _%e134626134658%_))
                         (_%K134622134640%_
                          _%code134661%_
                          _%n134656%_
                          _%phi134651%_
                          _%ctx134646%_))
                       (_%E134621134632%_)))))
              (__tmp145066
               (##structure-ref _%state134615%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp145067 '() __tmp145066))))
    (define gxc#collect-expression-refs
      (lambda (_%stx134611%_)
        (let ((_%ht134613%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht134613%_ _%stx134611%_)
          _%ht134613%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self134554%_ _%stx134555%_)
        (let* ((_%g134557134570%_
                (lambda (_%g134558134567%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134558134567%_))))
               (_%g134556134608%_
                (lambda (_%g134558134573%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134558134573%_))
                      (let ((_%e134560134575%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134558134573%_))))
                        (let ((_%hd134561134578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134560134575%_)))
                              (_%tl134562134580%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134560134575%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134562134580%_))
                              (let ((_%e134563134583%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134562134580%_))))
                                (let ((_%hd134564134586%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134563134583%_)))
                                      (_%tl134565134588%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134563134583%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134565134588%_))
                                      ((lambda (_%L134591%_)
                                         (let* ((_%bind134603%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L134591%_)))
                                                (_%eid134605%_
                                                 (if _%bind134603%_
                                                     (##structure-ref
                                                      _%bind134603%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L134591%_))))
                                                (__tmp145068
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self134554%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp145068
                                            _%eid134605%_
                                            _%eid134605%_)))
                                       _%hd134564134586%_)
                                      (_%g134557134570%_ _%g134558134573%_))))
                              (_%g134557134570%_ _%g134558134573%_))))
                      (_%g134557134570%_ _%g134558134573%_)))))
          (_%g134556134608%_ _%stx134555%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self134481%_ _%stx134482%_)
        (let* ((_%g134484134501%_
                (lambda (_%g134485134498%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134485134498%_))))
               (_%g134483134551%_
                (lambda (_%g134485134504%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134485134504%_))
                      (let ((_%e134488134506%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134485134504%_))))
                        (let ((_%hd134489134509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134488134506%_)))
                              (_%tl134490134511%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134488134506%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134490134511%_))
                              (let ((_%e134491134514%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134490134511%_))))
                                (let ((_%hd134492134517%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134491134514%_)))
                                      (_%tl134493134519%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134491134514%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134493134519%_))
                                      (let ((_%e134494134522%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134493134519%_))))
                                        (let ((_%hd134495134525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134494134522%_)))
                                              (_%tl134496134527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134494134522%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134496134527%_))
                                              ((lambda (_%L134530%_
                                                        _%L134531%_)
                                                 (let* ((_%bind134546%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L134531%_)))
                                                        (_%eid134548%_
                                                         (if _%bind134546%_
                                                             (##structure-ref
                                                              _%bind134546%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L134531%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp145069
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self134481%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp145069
                                                      _%eid134548%_
                                                      _%eid134548%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self134481%_
                                                      _%L134530%_))))
                                               _%hd134495134525%_
                                               _%hd134492134517%_)
                                              (_%g134484134501%_
                                               _%g134485134504%_))))
                                      (_%g134484134501%_ _%g134485134504%_))))
                              (_%g134484134501%_ _%g134485134504%_))))
                      (_%g134484134501%_ _%g134485134504%_)))))
          (_%g134483134551%_ _%stx134482%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self134438%_ _%stx134439%_)
        (let* ((_%g134441134451%_
                (lambda (_%g134442134448%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134442134448%_))))
               (_%g134440134478%_
                (lambda (_%g134442134454%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134442134454%_))
                      (let ((_%e134444134456%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134442134454%_))))
                        (let ((_%hd134445134459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134444134456%_)))
                              (_%tl134446134461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134444134456%_))))
                          ((lambda (_%L134464%_)
                             (let ((__tmp145070
                                    (lambda (_%g134473134475%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self134438%_
                                         _%g134473134475%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp145070 _%L134464%_)))
                           _%tl134446134461%_)))
                      (_%g134441134451%_ _%g134442134454%_)))))
          (_%g134440134478%_ _%stx134439%_))))
    (define gxc#count-values-single%
      (lambda (_%self134435%_ _%stx134436%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self134301%_ _%stx134302%_)
        (let* ((_%__stx144813144814%_ _%stx134302%_)
               (_%g134305134334%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144813144814%_)))))
          (let ((_%__kont144815144816%_
                 (lambda (_%L134402%_ _%L134403%_)
                   (length (let ((__tmp145071
                                  (lambda (_%g134424134427%_ _%g134425134429%_)
                                    (cons _%g134424134427%_
                                          _%g134425134429%_))))
                             (declare (not safe))
                             (__foldr1 __tmp145071 '() _%L134402%_)))))
                (_%__kont144819144820%_ (lambda () '#f)))
            (let ((_%__match144858144859%_
                   (lambda (_%e134309134346%_
                            _%hd134310134349%_
                            _%tl134311134351%_
                            _%e134312134354%_
                            _%hd134313134357%_
                            _%tl134314134359%_
                            _%e134315134362%_
                            _%hd134316134365%_
                            _%tl134317134367%_
                            _%e134318134370%_
                            _%hd134319134373%_
                            _%tl134320134375%_
                            _%__splice144817144818%_
                            _%target134321134378%_
                            _%tl134323134380%_)
                     (letrec ((_%loop134324134383%_
                               (lambda (_%hd134322134386%_
                                        _%rand134328134388%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd134322134386%_))
                                     (let ((_%e134325134391%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd134322134386%_))))
                                       (let ((_%lp-tl134327134396%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e134325134391%_)))
                                             (_%lp-hd134326134394%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e134325134391%_))))
                                         (_%loop134324134383%_
                                          _%lp-tl134327134396%_
                                          (cons _%lp-hd134326134394%_
                                                _%rand134328134388%_))))
                                     (let ((_%rand134329134399%_
                                            (reverse _%rand134328134388%_)))
                                       (let ((_%L134402%_ _%rand134329134399%_)
                                             (_%L134403%_ _%hd134319134373%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L134403%_
                                                'values))
                                             (_%__kont144815144816%_
                                              _%L134402%_
                                              _%L134403%_)
                                             (_%__kont144819144820%_))))))))
                       (_%loop134324134383%_ _%target134321134378%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144813144814%_))
                  (let ((_%e134309134346%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144813144814%_))))
                    (let ((_%tl134311134351%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e134309134346%_)))
                          (_%hd134310134349%_
                           (let ()
                             (declare (not safe))
                             (##car _%e134309134346%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl134311134351%_))
                          (let ((_%e134312134354%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl134311134351%_))))
                            (let ((_%tl134314134359%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e134312134354%_)))
                                  (_%hd134313134357%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e134312134354%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd134313134357%_))
                                  (let ((_%e134315134362%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd134313134357%_))))
                                    (let ((_%tl134317134367%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134315134362%_)))
                                          (_%hd134316134365%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134315134362%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd134316134365%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd134316134365%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl134317134367%_))
                                                  (let ((_%e134318134370%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl134317134367%_))))
                                                    (let ((_%tl134320134375%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e134318134370%_)))
                                                          (_%hd134319134373%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e134318134370%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl134320134375%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl134314134359%_))
                      (let ((_%__splice144817144818%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl134314134359%_
                                '0))))
                        (let ((_%tl134323134380%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144817144818%_ '1)))
                              (_%target134321134378%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144817144818%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl134323134380%_))
                              (_%__match144858144859%_
                               _%e134309134346%_
                               _%hd134310134349%_
                               _%tl134311134351%_
                               _%e134312134354%_
                               _%hd134313134357%_
                               _%tl134314134359%_
                               _%e134315134362%_
                               _%hd134316134365%_
                               _%tl134317134367%_
                               _%e134318134370%_
                               _%hd134319134373%_
                               _%tl134320134375%_
                               _%__splice144817144818%_
                               _%target134321134378%_
                               _%tl134323134380%_)
                              (_%__kont144819144820%_))))
                      (_%__kont144819144820%_))
                  (_%__kont144819144820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144819144820%_))
                                              (_%__kont144819144820%_))
                                          (_%__kont144819144820%_))))
                                  (_%__kont144819144820%_))))
                          (_%__kont144819144820%_))))
                  (_%__kont144819144820%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self134204%_ _%stx134205%_)
        (let* ((_%g134207134228%_
                (lambda (_%g134208134225%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134208134225%_))))
               (_%g134206134298%_
                (lambda (_%g134208134231%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134208134231%_))
                      (let ((_%e134212134233%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134208134231%_))))
                        (let ((_%hd134213134236%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134212134233%_)))
                              (_%tl134214134238%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134212134233%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134214134238%_))
                              (let ((_%e134215134241%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134214134238%_))))
                                (let ((_%hd134216134244%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134215134241%_)))
                                      (_%tl134217134246%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134215134241%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134217134246%_))
                                      (let ((_%e134218134249%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134217134246%_))))
                                        (let ((_%hd134219134252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134218134249%_)))
                                              (_%tl134220134254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134218134249%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl134220134254%_))
                                              (let ((_%e134221134257%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl134220134254%_))))
                                                (let ((_%hd134222134260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e134221134257%_)))
                                                      (_%tl134223134262%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e134221134257%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl134223134262%_))
                                                      ((lambda (_%L134265%_
                                                                _%L134266%_
                                                                _%L134267%_)
                                                         (let ((_%c1134284134286%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self134204%_ _%L134266%_))))
                   (if _%c1134284134286%_
                       (let* ((_%c1134289%_ _%c1134284134286%_)
                              (_%c2134290134292%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self134204%_
                                  _%L134265%_))))
                         (if _%c2134290134292%_
                             (let ((_%c2134295%_ _%c2134290134292%_))
                               (if (fx= _%c1134289%_ _%c2134295%_)
                                   _%c1134289%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd134222134260%_
               _%hd134219134252%_
               _%hd134216134244%_)
              (_%g134207134228%_ _%g134208134231%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g134207134228%_
                                               _%g134208134231%_))))
                                      (_%g134207134228%_ _%g134208134231%_))))
                              (_%g134207134228%_ _%g134208134231%_))))
                      (_%g134207134228%_ _%g134208134231%_)))))
          (_%g134206134298%_ _%stx134205%_))))))
