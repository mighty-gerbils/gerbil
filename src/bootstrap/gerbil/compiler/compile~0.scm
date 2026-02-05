(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1770327922)
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
        (letrec ((_%hash-e171524%_
                  (lambda (_%id171526%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id171526%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e171524%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp172911 (list gxc#::void::t))
            (__tmp172910 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp172911
         '()
         __tmp172910
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args171520%_
        (apply make-instance gxc#::collect-bindings::t _%$args171520%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp172912
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
        (__make-atomic-promise __tmp172912)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx171512%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self171515%_
                (let ((__obj172886
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj172886))
               (__tmp172913
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171515%_ _%stx171512%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172913
           gxc#current-compile-method
           _%self171515%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp172915 (list gxc#::void::t))
            (__tmp172914 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp172915
         '(modules)
         __tmp172914
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args171509%_
        (apply make-instance gxc#::lift-modules::t _%$args171509%_)))
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
      (let ((__tmp172916
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
        (__make-atomic-promise __tmp172916)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords171484%_ _%modules171481171485%_ _%stx171486%_)
        (let ((_%modules171489%_
               (if (eq? _%modules171481171485%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules171481171485%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self171491%_
                  (let ((__obj172888
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172888
                       _%modules171489%_
                       '1
                       '#f
                       '#f))
                    __obj172888))
                 (__tmp172917
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171491%_ _%stx171486%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172917
             gxc#current-compile-method
             _%self171491%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords171498%_ . _%args171499%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords171498%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171498%_
                  'modules:
                  absent-value))
               _%args171499%_)))
    (define gxc#apply-lift-modules
      (lambda _%args171482171505%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args171482171505%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp172919 (list)) (__tmp172918 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp172919
         '()
         __tmp172918
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args171477%_
        (apply make-instance gxc#::find-runtime-code::t _%$args171477%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp172920
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
        (__make-atomic-promise __tmp172920)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx171469%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self171472%_
                (let ((__obj172890
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj172890))
               (__tmp172921
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171472%_ _%stx171469%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172921
           gxc#current-compile-method
           _%self171472%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp172923 (list gxc#::false::t))
            (__tmp172922 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp172923
         '()
         __tmp172922
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args171466%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args171466%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp172924
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
        (__make-atomic-promise __tmp172924)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx171458%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self171461%_
                (let ((__obj172892
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj172892))
               (__tmp172925
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171461%_ _%stx171458%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172925
           gxc#current-compile-method
           _%self171461%_))))
    (define gxc#::count-values::t
      (let ((__tmp172927 (list gxc#::false-expression::t))
            (__tmp172926 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp172927
         '()
         __tmp172926
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args171455%_
        (apply make-instance gxc#::count-values::t _%$args171455%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp172928
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
        (__make-atomic-promise __tmp172928)))
    (define gxc#apply-count-values
      (lambda (_%stx171447%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self171450%_
                (let ((__obj172894
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj172894))
               (__tmp172929
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171450%_ _%stx171447%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172929
           gxc#current-compile-method
           _%self171450%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp172930 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp172930
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args171444%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args171444%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp172931
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
        (__make-atomic-promise __tmp172931)))
    (define gxc#::generate-loader::t
      (let ((__tmp172933 (list gxc#::generate-runtime-empty::t))
            (__tmp172932 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp172933
         '()
         __tmp172932
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args171440%_
        (apply make-instance gxc#::generate-loader::t _%$args171440%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp172934
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
        (__make-atomic-promise __tmp172934)))
    (define gxc#apply-generate-loader
      (lambda (_%stx171432%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self171435%_
                (let ((__obj172897
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj172897))
               (__tmp172935
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171435%_ _%stx171432%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172935
           gxc#current-compile-method
           _%self171435%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp172936 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp172936
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args171429%_
        (apply make-instance gxc#::generate-runtime::t _%$args171429%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp172937
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
        (__make-atomic-promise __tmp172937)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx171421%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self171424%_
                (let ((__obj172899
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj172899))
               (__tmp172938
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171424%_ _%stx171421%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172938
           gxc#current-compile-method
           _%self171424%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp172940 (list gxc#::generate-runtime::t))
            (__tmp172939 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp172940
         '()
         __tmp172939
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args171418%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args171418%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp172941
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
        (__make-atomic-promise __tmp172941)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx171410%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self171413%_
                (let ((__obj172901
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj172901))
               (__tmp172942
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171413%_ _%stx171410%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172942
           gxc#current-compile-method
           _%self171413%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp172943 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp172943
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args171407%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args171407%_)))
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
      (let ((__tmp172944
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
        (__make-atomic-promise __tmp172944)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords171382%_ _%table171379171383%_ _%stx171384%_)
        (let ((_%table171387%_
               (if (eq? _%table171379171383%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table171379171383%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self171389%_
                  (let ((__obj172903
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172903
                       _%table171387%_
                       '1
                       '#f
                       '#f))
                    __obj172903))
                 (__tmp172945
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171389%_ _%stx171384%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172945
             gxc#current-compile-method
             _%self171389%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords171396%_ . _%args171397%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords171396%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171396%_
                  'table:
                  absent-value))
               _%args171397%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args171380171403%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args171380171403%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp172947 (list gxc#::void-expression::t))
            (__tmp172946 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp172947
         '(state)
         __tmp172946
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args171375%_
        (apply make-instance gxc#::generate-meta::t _%$args171375%_)))
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
      (let ((__tmp172948
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
        (__make-atomic-promise __tmp172948)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords171350%_ _%state171347171351%_ _%stx171352%_)
        (let ((_%state171355%_
               (if (eq? _%state171347171351%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state171347171351%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self171357%_
                  (let ((__obj172905
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172905
                       _%state171355%_
                       '1
                       '#f
                       '#f))
                    __obj172905))
                 (__tmp172949
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171357%_ _%stx171352%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172949
             gxc#current-compile-method
             _%self171357%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords171364%_ . _%args171365%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords171364%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171364%_
                  'state:
                  absent-value))
               _%args171365%_)))
    (define gxc#apply-generate-meta
      (lambda _%args171348171371%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args171348171371%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp172951 (list)) (__tmp172950 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp172951
         '(state)
         __tmp172950
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args171343%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args171343%_)))
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
      (let ((__tmp172952
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
        (__make-atomic-promise __tmp172952)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords171318%_ _%state171315171319%_ _%stx171320%_)
        (let ((_%state171323%_
               (if (eq? _%state171315171319%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state171315171319%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self171325%_
                  (let ((__obj172907
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172907
                       _%state171323%_
                       '1
                       '#f
                       '#f))
                    __obj172907))
                 (__tmp172953
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171325%_ _%stx171320%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172953
             gxc#current-compile-method
             _%self171325%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords171332%_ . _%args171333%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords171332%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171332%_
                  'state:
                  absent-value))
               _%args171333%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args171316171339%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args171316171339%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self171244%_ _%stx171245%_)
        (let* ((_%g171247171264%_
                (lambda (_%g171248171261%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171248171261%_))))
               (_%g171246171311%_
                (lambda (_%g171248171267%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171248171267%_))
                      (let ((_%e171251171269%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171248171267%_))))
                        (let ((_%hd171252171272%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171251171269%_)))
                              (_%tl171253171274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171251171269%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171253171274%_))
                              (let ((_%e171254171277%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171253171274%_))))
                                (let ((_%hd171255171280%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171254171277%_)))
                                      (_%tl171256171282%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171254171277%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171256171282%_))
                                      (let ((_%e171257171285%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171256171282%_))))
                                        (let ((_%hd171258171288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171257171285%_)))
                                              (_%tl171259171290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171257171285%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171259171290%_))
                                              ((lambda (_%g171249171293%_
                                                        _%g171250171294%_)
                                                 (let ((__tmp172954
                                                        (lambda (_%bind171309%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind171309%_))
                      (gxc#add-module-binding! _%bind171309%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp172954
                                                    _%g171250171294%_)))
                                               _%hd171258171288%_
                                               _%hd171255171280%_)
                                              (_%g171247171264%_
                                               _%g171248171267%_))))
                                      (_%g171247171264%_ _%g171248171267%_))))
                              (_%g171247171264%_ _%g171248171267%_))))
                      (_%g171247171264%_ _%g171248171267%_)))))
          (_%g171246171311%_ _%stx171245%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self171176%_ _%stx171177%_)
        (let* ((_%g171179171196%_
                (lambda (_%g171180171193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171180171193%_))))
               (_%g171178171241%_
                (lambda (_%g171180171199%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171180171199%_))
                      (let ((_%e171183171201%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171180171199%_))))
                        (let ((_%hd171184171204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171183171201%_)))
                              (_%tl171185171206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171183171201%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171185171206%_))
                              (let ((_%e171186171209%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171185171206%_))))
                                (let ((_%hd171187171212%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171186171209%_)))
                                      (_%tl171188171214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171186171209%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171188171214%_))
                                      (let ((_%e171189171217%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171188171214%_))))
                                        (let ((_%hd171190171220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171189171217%_)))
                                              (_%tl171191171222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171189171217%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171191171222%_))
                                              ((lambda (_%g171181171225%_
                                                        _%g171182171226%_)
                                                 (gxc#add-module-binding!
                                                  _%g171182171226%_
                                                  '#t))
                                               _%hd171190171220%_
                                               _%hd171187171212%_)
                                              (_%g171179171196%_
                                               _%g171180171199%_))))
                                      (_%g171179171196%_ _%g171180171199%_))))
                              (_%g171179171196%_ _%g171180171199%_))))
                      (_%g171179171196%_ _%g171180171199%_)))))
          (_%g171178171241%_ _%stx171177%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self171118%_ _%stx171119%_)
        (let* ((_%g171121171135%_
                (lambda (_%g171122171132%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171122171132%_))))
               (_%g171120171173%_
                (lambda (_%g171122171138%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171122171138%_))
                      (let ((_%e171125171140%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171122171138%_))))
                        (let ((_%hd171126171143%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171125171140%_)))
                              (_%tl171127171145%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171125171140%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171127171145%_))
                              (let ((_%e171128171148%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171127171145%_))))
                                (let ((_%hd171129171151%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171128171148%_)))
                                      (_%tl171130171153%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171128171148%_))))
                                  ((lambda (_%g171123171156%_
                                            _%g171124171157%_)
                                     (let ((_%ctx171170%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g171124171157%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self171118%_
                                           'modules))
                                        (cons _%ctx171170%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self171118%_
                                                        'modules)))))
                                       (let ((__tmp172955
                                              (lambda ()
                                                (let ((__tmp172956
                                                       (##structure-ref
                                                        _%ctx171170%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self171118%_
                                                   __tmp172956)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp172955
                                          gx#current-expander-context
                                          _%ctx171170%_))))
                                   _%tl171130171153%_
                                   _%hd171129171151%_)))
                              (_%g171121171135%_ _%g171122171138%_))))
                      (_%g171121171135%_ _%g171122171138%_)))))
          (_%g171120171173%_ _%stx171119%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls171072171074%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls171072171074%_
              (let ((_%decls171076%_ _%decls171072171074%_))
                (let _%lp171078%_ ((_%rest171080%_ _%decls171076%_))
                  (let* ((_%rest171081171089%_ _%rest171080%_)
                         (_%else171083171097%_ (lambda () '#f))
                         (_%K171085171106%_
                          (lambda (_%decls171100%_ _%decl171101%_)
                            (if (equal? _%decl171101%_ '(not safe))
                                '#t
                                (if (equal? _%decl171101%_ '(safe))
                                    '#f
                                    (_%lp171078%_ _%decls171100%_))))))
                    (if (pair? _%rest171081171089%_)
                        (let ((_%hd171086171109%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest171081171089%_)))
                              (_%tl171087171111%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest171081171089%_))))
                          (let* ((_%decl171114%_ _%hd171086171109%_)
                                 (_%decls171116%_ _%tl171087171111%_))
                            (_%K171085171106%_
                             _%decls171116%_
                             _%decl171114%_)))
                        (_%else171083171097%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id171066%_ _%syntax?171067%_)
        (let ((_%eid171069%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id171066%_))
                '1
                gx#binding::t
                '#f))
              (_%ht171070%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid171069%_))
              '#!void
              (let ((__tmp172957
                     (let ((__tmp172958
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid171069%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp172958 _%syntax?171067%_))))
                (declare (not safe))
                (hash-put! _%ht171070%_ _%eid171069%_ __tmp172957))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id171064%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id171064%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key171019%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key171019%_))
            _%key171019%_
            (if (uninterned-symbol? _%key171019%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key171019%_))
                (let* ((_%key171023171030%_ _%key171019%_)
                       (_%E171025171034%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key171023171030%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K171026171052%_
                        (lambda (_%mark171037%_ _%eid171038%_)
                          (let ((_%$e171040%_
                                 (##structure-ref
                                  _%mark171037%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e171040%_
                                ((lambda (_%ht171043%_)
                                   (let ((_%$e171045%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht171043%_
                                             _%eid171038%_))))
                                     (if _%$e171045%_
                                         ((lambda (_%id171048%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id171048%_))
                                                _%id171048%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id171048%_))))
                                          _%$e171045%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid171038%_))))
                                 _%$e171040%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid171038%_))))))
                  (if (pair? _%key171023171030%_)
                      (let ((_%hd171027171055%_
                             (let ()
                               (declare (not safe))
                               (##car _%key171023171030%_)))
                            (_%tl171028171057%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key171023171030%_))))
                        (let* ((_%eid171060%_ _%hd171027171055%_)
                               (_%mark171062%_ _%tl171028171057%_))
                          (_%K171026171052%_ _%mark171062%_ _%eid171060%_)))
                      (_%E171025171034%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self171016%_ _%stx171017%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self170863%_ _%stx170864%_)
        (letrec ((_%simplify170866%_
                  (lambda (_%body170914%_)
                    (let _%lp170916%_ ((_%rest170918%_ _%body170914%_)
                                       (_%r170919%_ '()))
                      (let* ((_%rest170920170928%_ _%rest170918%_)
                             (_%else170922170936%_
                              (lambda () (reverse _%r170919%_)))
                             (_%K170924171004%_
                              (lambda (_%rest170939%_ _%hd170940%_)
                                (let* ((_%hd170941170957%_ _%hd170940%_)
                                       (_%else170945170965%_
                                        (lambda ()
                                          (_%lp170916%_
                                           _%rest170939%_
                                           (cons _%hd170940%_ _%r170919%_)))))
                                  (let ((_%K170953170994%_
                                         (lambda (_%exprs170992%_)
                                           (_%lp170916%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest170939%_
                                               _%exprs170992%_))
                                            _%r170919%_)))
                                        (_%K170948170978%_
                                         (lambda ()
                                           (if (null? _%rest170939%_)
                                               (_%lp170916%_
                                                _%rest170939%_
                                                (cons _%hd170940%_
                                                      _%r170919%_))
                                               (_%lp170916%_
                                                _%rest170939%_
                                                _%r170919%_))))
                                        (_%K170947170970%_
                                         (lambda ()
                                           (if (null? _%rest170939%_)
                                               (_%lp170916%_
                                                _%rest170939%_
                                                (cons _%hd170940%_
                                                      _%r170919%_))
                                               (_%lp170916%_
                                                _%rest170939%_
                                                _%r170919%_)))))
                                    (let ((_%try-match170944170973%_
                                           (lambda ()
                                             (if (symbol? _%hd170941170957%_)
                                                 (_%K170947170970%_)
                                                 (_%else170945170965%_)))))
                                      (if (pair? _%hd170941170957%_)
                                          (let ((_%tl170955170999%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd170941170957%_)))
                                                (_%hd170954170997%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd170941170957%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd170954170997%_
                                                         'begin))
                                                (let ((_%exprs171002%_
                                                       _%tl170955170999%_))
                                                  (_%K170953170994%_
                                                   _%exprs171002%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd170954170997%_
                                                             'quote))
                                                    (if (pair? _%tl170955170999%_)
                                                        (let ((_%tl170952170986%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl170955170999%_))))
                  (if (null? _%tl170952170986%_)
                      (_%K170948170978%_)
                      (_%try-match170944170973%_)))
                (_%try-match170944170973%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match170944170973%_))))
                                          (_%try-match170944170973%_))))))))
                        (if (pair? _%rest170920170928%_)
                            (let ((_%hd170925171007%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest170920170928%_)))
                                  (_%tl170926171009%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest170920170928%_))))
                              (let* ((_%hd171012%_ _%hd170925171007%_)
                                     (_%rest171014%_ _%tl170926171009%_))
                                (_%K170924171004%_
                                 _%rest171014%_
                                 _%hd171012%_)))
                            (_%else170922170936%_)))))))
          (let* ((_%g170868170878%_
                  (lambda (_%g170869170875%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g170869170875%_))))
                 (_%g170867170911%_
                  (lambda (_%g170869170881%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g170869170881%_))
                        (let ((_%e170871170883%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170869170881%_))))
                          (let ((_%hd170872170886%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170871170883%_)))
                                (_%tl170873170888%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170871170883%_))))
                            ((lambda (_%g170870170891%_)
                               (let* ((_%body170906%_
                                       (map (lambda (_%g170901170903%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self170863%_
                                                 _%g170901170903%_)))
                                            _%g170870170891%_))
                                      (_%body170908%_
                                       (_%simplify170866%_ _%body170906%_)))
                                 (if (let ((__tmp172959
                                            (length _%body170908%_)))
                                       (declare (not safe))
                                       (##fx= __tmp172959 '1))
                                     (car _%body170908%_)
                                     (cons 'begin _%body170908%_))))
                             _%tl170873170888%_)))
                        (_%g170868170878%_ _%g170869170881%_)))))
            (_%g170867170911%_ _%stx170864%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self170824%_ _%stx170825%_)
        (let* ((_%g170827170837%_
                (lambda (_%g170828170834%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170828170834%_))))
               (_%g170826170860%_
                (lambda (_%g170828170840%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170828170840%_))
                      (let ((_%e170830170842%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170828170840%_))))
                        (let ((_%hd170831170845%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170830170842%_)))
                              (_%tl170832170847%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170830170842%_))))
                          ((lambda (_%g170829170850%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g170829170850%_))))
                           _%tl170832170847%_)))
                      (_%g170827170837%_ _%g170828170840%_)))))
          (_%g170826170860%_ _%stx170825%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self170590%_ _%stx170591%_)
        (let* ((_%__stx171549171550%_ _%stx170591%_)
               (_%g170595170647%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171549171550%_)))))
          (let ((_%__kont171551171552%_
                 (lambda (_%g170597170806%_ _%g170598170807%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self170590%_ _%g170597170806%_))))
                (_%__kont171553171554%_
                 (lambda (_%g170608170754%_
                          _%g170609170755%_
                          _%g170610170756%_)
                   (if (let ((__tmp172960
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g170610170756%_))))
                         (declare (not safe))
                         (##memq __tmp172960 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self170590%_
                          _%g170608170754%_)))))
                (_%__kont171557171558%_
                 (lambda (_%g170632170676%_ _%g170633170677%_)
                   (let ((_%decls170692%_
                          (map gx#syntax->datum _%g170633170677%_)))
                     (let ((__tmp172963
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls170692%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self170590%_
                                                   _%g170632170676%_))
                                                '())))))
                           (__tmp172961
                            (let ((__tmp172962
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp172962 _%decls170692%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp172963
                        gxc#current-compile-decls
                        __tmp172961))))))
            (let* ((_%__match171604171605%_
                    (lambda (_%e170611170700%_
                             _%hd170612170703%_
                             _%tl170613170705%_
                             _%e170614170708%_
                             _%hd170615170711%_
                             _%tl170616170713%_
                             _%e170617170716%_
                             _%hd170618170719%_
                             _%tl170619170721%_
                             _%__splice171555171556%_
                             _%target170620170724%_
                             _%tl170622170726%_)
                      (letrec ((_%loop170623170729%_
                                (lambda (_%hd170621170732%_
                                         _%param170627170734%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170621170732%_))
                                      (let ((_%e170624170736%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170621170732%_))))
                                        (let ((_%lp-tl170626170741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170624170736%_)))
                                              (_%lp-hd170625170739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170624170736%_))))
                                          (_%loop170623170729%_
                                           _%lp-tl170626170741%_
                                           (cons _%lp-hd170625170739%_
                                                 _%param170627170734%_))))
                                      (let ((_%param170628170744%_
                                             (reverse _%param170627170734%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170616170713%_))
                                            (let ((_%e170629170746%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170616170713%_))))
                                              (let ((_%tl170631170751%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170629170746%_)))
                                                    (_%hd170630170749%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170629170746%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl170631170751%_))
                                                    (let ((_%g170608170754%_
                                                           _%hd170630170749%_)
                                                          (_%g170609170755%_
                                                           _%param170628170744%_)
                                                          (_%g170610170756%_
                                                           _%hd170618170719%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g170610170756%_))
                       (not (let ((__tmp172964
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g170610170756%_))))
                              (declare (not safe))
                              (##memq __tmp172964 gxc#gambit-annotations))))
                  (_%__kont171553171554%_
                   _%g170608170754%_
                   _%g170609170755%_
                   _%g170610170756%_)
                  (_%__kont171557171558%_
                   _%hd170630170749%_
                   _%hd170615170711%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g170595170647%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g170595170647%_))))))))
                        (_%loop170623170729%_ _%target170620170724%_ '()))))
                   (_%__match171578171579%_
                    (lambda (_%e170599170782%_
                             _%hd170600170785%_
                             _%tl170601170787%_
                             _%e170602170790%_
                             _%hd170603170793%_
                             _%tl170604170795%_
                             _%e170605170798%_
                             _%hd170606170801%_
                             _%tl170607170803%_)
                      (let ((_%g170597170806%_ _%hd170606170801%_)
                            (_%g170598170807%_ _%hd170603170793%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g170598170807%_))
                            (_%__kont171551171552%_
                             _%g170597170806%_
                             _%g170598170807%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd170603170793%_))
                                (let ((_%e170617170716%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd170603170793%_))))
                                  (let ((_%tl170619170721%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170617170716%_)))
                                        (_%hd170618170719%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170617170716%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl170619170721%_))
                                        (let ((_%__splice171555171556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl170619170721%_
                                                  '0))))
                                          (let ((_%tl170622170726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171555171556%_
                                                    '1)))
                                                (_%target170620170724%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171555171556%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170622170726%_))
                                                (_%__match171604171605%_
                                                 _%e170599170782%_
                                                 _%hd170600170785%_
                                                 _%tl170601170787%_
                                                 _%e170602170790%_
                                                 _%hd170603170793%_
                                                 _%tl170604170795%_
                                                 _%e170617170716%_
                                                 _%hd170618170719%_
                                                 _%tl170619170721%_
                                                 _%__splice171555171556%_
                                                 _%target170620170724%_
                                                 _%tl170622170726%_)
                                                (_%__kont171557171558%_
                                                 _%hd170606170801%_
                                                 _%hd170603170793%_))))
                                        (_%__kont171557171558%_
                                         _%hd170606170801%_
                                         _%hd170603170793%_))))
                                (_%__kont171557171558%_
                                 _%hd170606170801%_
                                 _%hd170603170793%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx171549171550%_))
                  (let ((_%e170599170782%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx171549171550%_))))
                    (let ((_%tl170601170787%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170599170782%_)))
                          (_%hd170600170785%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170599170782%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170601170787%_))
                          (let ((_%e170602170790%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170601170787%_))))
                            (let ((_%tl170604170795%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170602170790%_)))
                                  (_%hd170603170793%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170602170790%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl170604170795%_))
                                  (let ((_%e170605170798%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl170604170795%_))))
                                    (let ((_%tl170607170803%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170605170798%_)))
                                          (_%hd170606170801%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170605170798%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl170607170803%_))
                                          (_%__match171578171579%_
                                           _%e170599170782%_
                                           _%hd170600170785%_
                                           _%tl170601170787%_
                                           _%e170602170790%_
                                           _%hd170603170793%_
                                           _%tl170604170795%_
                                           _%e170605170798%_
                                           _%hd170606170801%_
                                           _%tl170607170803%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd170603170793%_))
                                              (let ((_%e170617170716%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd170603170793%_))))
                                                (let ((_%tl170619170721%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170617170716%_)))
                                                      (_%hd170618170719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170617170716%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl170619170721%_))
                                                      (let ((_%__splice171555171556%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl170619170721%_
                        '0))))
                (let ((_%tl170622170726%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171555171556%_ '1)))
                      (_%target170620170724%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171555171556%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170622170726%_))
                      (_%__match171604171605%_
                       _%e170599170782%_
                       _%hd170600170785%_
                       _%tl170601170787%_
                       _%e170602170790%_
                       _%hd170603170793%_
                       _%tl170604170795%_
                       _%e170617170716%_
                       _%hd170618170719%_
                       _%tl170619170721%_
                       _%__splice171555171556%_
                       _%target170620170724%_
                       _%tl170622170726%_)
                      (let () (declare (not safe)) (_%g170595170647%_)))))
              (let () (declare (not safe)) (_%g170595170647%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170595170647%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170603170793%_))
                                      (let ((_%e170617170716%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170603170793%_))))
                                        (let ((_%tl170619170721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170617170716%_)))
                                              (_%hd170618170719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170617170716%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl170619170721%_))
                                              (let ((_%__splice171555171556%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl170619170721%_
                                                        '0))))
                                                (let ((_%tl170622170726%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice171555171556%_
                                                          '1)))
                                                      (_%target170620170724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice171555171556%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl170622170726%_))
                                                      (_%__match171604171605%_
                                                       _%e170599170782%_
                                                       _%hd170600170785%_
                                                       _%tl170601170787%_
                                                       _%e170602170790%_
                                                       _%hd170603170793%_
                                                       _%tl170604170795%_
                                                       _%e170617170716%_
                                                       _%hd170618170719%_
                                                       _%tl170619170721%_
                                                       _%__splice171555171556%_
                                                       _%target170620170724%_
                                                       _%tl170622170726%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g170595170647%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g170595170647%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170595170647%_))))))
                          (let () (declare (not safe)) (_%g170595170647%_)))))
                  (let () (declare (not safe)) (_%g170595170647%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self170549%_ _%stx170550%_)
        (let* ((_%g170552170562%_
                (lambda (_%g170553170559%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170553170559%_))))
               (_%g170551170587%_
                (lambda (_%g170553170565%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170553170565%_))
                      (let ((_%e170555170567%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170553170565%_))))
                        (let ((_%hd170556170570%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170555170567%_)))
                              (_%tl170557170572%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170555170567%_))))
                          ((lambda (_%g170554170575%_)
                             (let ((_%decls170585%_
                                    (map gx#syntax->datum _%g170554170575%_)))
                               (let ((__tmp172965
                                      (let ((__tmp172966
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp172966
                                         _%decls170585%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp172965))
                               (cons 'declare _%decls170585%_)))
                           _%tl170557170572%_)))
                      (_%g170552170562%_ _%g170553170565%_)))))
          (_%g170551170587%_ _%stx170550%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self170296%_ _%stx170297%_)
        (let* ((_%g170299170316%_
                (lambda (_%g170300170313%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170300170313%_))))
               (_%g170298170546%_
                (lambda (_%g170300170319%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170300170319%_))
                      (let ((_%e170303170321%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170300170319%_))))
                        (let ((_%hd170304170324%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170303170321%_)))
                              (_%tl170305170326%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170303170321%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170305170326%_))
                              (let ((_%e170306170329%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170305170326%_))))
                                (let ((_%hd170307170332%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170306170329%_)))
                                      (_%tl170308170334%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170306170329%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170308170334%_))
                                      (let ((_%e170309170337%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170308170334%_))))
                                        (let ((_%hd170310170340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170309170337%_)))
                                              (_%tl170311170342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170309170337%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170311170342%_))
                                              ((lambda (_%g170301170345%_
                                                        _%g170302170346%_)
                                                 (let* ((_%__stx171657171658%_
                                                         _%g170302170346%_)
                                                        (_%g170363170377%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx171657171658%_)))))
                                                   (let ((_%__kont171659171660%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self170296%_
                                                               _%g170301170345%_))))
                                                         (_%__kont171661171662%_
                                                          (lambda (_%g170369170509%_)
                                                            (let ((_%eid170518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g170369170509%_))))
                      (let ((_%lambda-expr170519170521%_
                             (gxc#apply-find-lambda-expression
                              _%g170301170345%_)))
                        (if _%lambda-expr170519170521%_
                            (let* ((_%lambda-expr170523%_
                                    _%lambda-expr170519170521%_)
                                   (__tmp172967
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp172967
                               _%lambda-expr170523%_
                               _%eid170518%_))
                            '#f))
                      (cons 'define
                            (cons _%eid170518%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self170296%_
                                           _%g170301170345%_))
                                        '()))))))
                 (_%__kont171663171664%_
                  (lambda ()
                    (let* ((_%tmp170384%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body170493%_
                            (let _%lp170386%_ ((_%rest170388%_
                                                _%g170302170346%_)
                                               (_%k170389%_ '0)
                                               (_%r170390%_ '()))
                              (let* ((_%__stx171627171628%_ _%rest170388%_)
                                     (_%g170395170412%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx171627171628%_)))))
                                (let ((_%__kont171629171630%_
                                       (lambda (_%g170397170480%_)
                                         (_%lp170386%_
                                          _%g170397170480%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k170389%_ '1))
                                          _%r170390%_)))
                                      (_%__kont171631171632%_
                                       (lambda (_%g170402170453%_
                                                _%g170403170454%_)
                                         (_%lp170386%_
                                          _%g170402170453%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k170389%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g170403170454%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp170384%_
                           _%k170389%_
                           _%g170402170453%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r170390%_))))
                                      (_%__kont171633171634%_
                                       (lambda (_%g170407170424%_)
                                         (let ((__tmp172968
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g170407170424%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp170384%_
                                 _%k170389%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp172968
                                            _%r170390%_))))
                                      (_%__kont171635171636%_
                                       (lambda () (reverse _%r170390%_))))
                                  (let ((_%g170393170440%_
                                         (lambda ()
                                           (let ((_%g170407170424%_
                                                  _%__stx171627171628%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g170407170424%_))
                                                 (_%__kont171633171634%_
                                                  _%g170407170424%_)
                                                 (_%__kont171635171636%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx171627171628%_))
                                        (let ((_%e170398170469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx171627171628%_))))
                                          (let ((_%tl170400170474%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170398170469%_)))
                                                (_%hd170399170472%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170398170469%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd170399170472%_))
                                                (let ((_%e170401170477%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd170399170472%_))))
                                                  (if (equal? _%e170401170477%_
                                                              '#f)
                                                      (_%__kont171629171630%_
                                                       _%tl170400170474%_)
                                                      (_%__kont171631171632%_
                                                       _%tl170400170474%_
                                                       _%hd170399170472%_)))
                                                (_%__kont171631171632%_
                                                 _%tl170400170474%_
                                                 _%hd170399170472%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g170393170440%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp170384%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self170296%_
                                                       _%g170301170345%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp170384%_
                                         _%g170302170346%_
                                         _%g170301170345%_)
                                        _%body170493%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx171657171658%_))
                                                         (let ((_%e170365170530%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx171657171658%_))))
                   (let ((_%tl170367170535%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170365170530%_)))
                         (_%hd170366170533%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170365170530%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd170366170533%_))
                         (let ((_%e170368170538%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd170366170533%_))))
                           (if (equal? _%e170368170538%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170367170535%_))
                                   (_%__kont171659171660%_)
                                   (_%__kont171663171664%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170367170535%_))
                                   (_%__kont171661171662%_ _%hd170366170533%_)
                                   (_%__kont171663171664%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl170367170535%_))
                             (_%__kont171661171662%_ _%hd170366170533%_)
                             (_%__kont171663171664%_)))))
                 (_%__kont171663171664%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd170310170340%_
                                               _%hd170307170332%_)
                                              (_%g170299170316%_
                                               _%g170300170319%_))))
                                      (_%g170299170316%_ _%g170300170319%_))))
                              (_%g170299170316%_ _%g170300170319%_))))
                      (_%g170299170316%_ _%g170300170319%_)))))
          (_%g170298170546%_ _%stx170297%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals170271%_ _%hd170272%_ _%expr170273%_)
        (let ((_%$e170275%_ (gxc#apply-count-values _%expr170273%_)))
          (if _%$e170275%_
              ((lambda (_%count170278%_)
                 (let ((_%len170280%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd170272%_)))
                       (_%cmp170281%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd170272%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len170280%_ '0))
                           (_%cmp170281%_ _%count170278%_ _%len170280%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr170273%_
                          _%hd170272%_)))))
               _%$e170275%_)
              (let* ((_%len170287%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd170272%_)))
                     (_%cmp170289%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd170272%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg170291%_
                      (let ((__tmp172970
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd170272%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp172969 (number->string _%len170287%_)))
                        (declare (not safe))
                        (##string-append __tmp172970 __tmp172969 '" values")))
                     (_%count170293%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd170272%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len170287%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count170293%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals170271%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp170289%_
                                (cons _%count170293%_
                                      (cons _%len170287%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp170289%_
                                                        (cons _%count170293%_
                                                              (cons _%len170287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg170291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count170293%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var170266%_)
        (letrec ((_%generate-inline170268%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var170266%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var170266%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline170268%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline170268%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var170259%_ _%i170260%_ _%rest170261%_)
        (letrec ((_%generate-inline170263%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i170260%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest170261%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var170259%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var170259%_
                                                      (cons '0 '())))
                                          (cons _%var170259%_ '()))))
                        (cons '##values-ref
                              (cons _%var170259%_ (cons _%i170260%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline170263%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline170263%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var170253%_ _%i170254%_)
        (if (let () (declare (not safe)) (##fx= _%i170254%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var170253%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var170253%_ '()))
                                  (cons (cons 'list (cons _%var170253%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var170253%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var170253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var170253%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i170254%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var170253%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var170253%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var170253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var170253%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var170253%_ '()))
                                (cons _%i170254%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var170253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i170254%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self170185%_ _%stx170186%_)
        (let* ((_%g170188170205%_
                (lambda (_%g170189170202%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170189170202%_))))
               (_%g170187170250%_
                (lambda (_%g170189170208%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170189170208%_))
                      (let ((_%e170192170210%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170189170208%_))))
                        (let ((_%hd170193170213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170192170210%_)))
                              (_%tl170194170215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170192170210%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170194170215%_))
                              (let ((_%e170195170218%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170194170215%_))))
                                (let ((_%hd170196170221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170195170218%_)))
                                      (_%tl170197170223%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170195170218%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170197170223%_))
                                      (let ((_%e170198170226%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170197170223%_))))
                                        (let ((_%hd170199170229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170198170226%_)))
                                              (_%tl170200170231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170198170226%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170200170231%_))
                                              ((lambda (_%g170190170234%_
                                                        _%g170191170235%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self170185%_
                                                  _%g170191170235%_
                                                  _%g170190170234%_))
                                               _%hd170199170229%_
                                               _%hd170196170221%_)
                                              (_%g170188170205%_
                                               _%g170189170208%_))))
                                      (_%g170188170205%_ _%g170189170208%_))))
                              (_%g170188170205%_ _%g170189170208%_))))
                      (_%g170188170205%_ _%g170189170208%_)))))
          (_%g170187170250%_ _%stx170186%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self170144%_ _%hd170145%_ _%body170146%_)
        (let* ((_%hd170148%_ (gxc#generate-runtime-lambda-head _%hd170145%_))
               (_%body170150%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self170144%_ _%body170146%_)))
               (_%body170182%_
                (let* ((_%body170151170159%_ _%body170150%_)
                       (_%else170153170167%_
                        (lambda () (cons _%body170150%_ '())))
                       (_%K170155170172%_
                        (lambda (_%exprs170170%_) _%exprs170170%_)))
                  (if (pair? _%body170151170159%_)
                      (let ((_%hd170156170175%_
                             (let ()
                               (declare (not safe))
                               (##car _%body170151170159%_)))
                            (_%tl170157170177%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body170151170159%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd170156170175%_ 'begin))
                            (let ((_%exprs170180%_ _%tl170157170177%_))
                              (_%K170155170172%_ _%exprs170180%_))
                            (_%else170153170167%_)))
                      (_%else170153170167%_)))))
          (cons 'lambda (cons _%hd170148%_ _%body170182%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd170142%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd170142%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self168699%_ _%stx168700%_)
        (letrec ((_%dispatch-case?168702%_
                  (lambda (_%hd169380%_ _%body169381%_)
                    (let* ((_%form169383%_
                            (cons _%hd169380%_ (cons _%body169381%_ '())))
                           (_%__stx171689171690%_ _%form169383%_)
                           (_%g169388169545%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx171689171690%_)))))
                      (let ((_%__kont171691171692%_
                             (lambda (_%g169390170062%_
                                      _%g169391170063%_
                                      _%g169392170064%_)
                               '#t))
                            (_%__kont171697171698%_
                             (lambda (_%g169435169854%_
                                      _%g169436169855%_
                                      _%g169437169856%_
                                      _%g169438169857%_
                                      _%g169439169858%_
                                      _%g169440169859%_)
                               '#t))
                            (_%__kont171703171704%_
                             (lambda (_%g169501169653%_
                                      _%g169502169654%_
                                      _%g169503169655%_
                                      _%g169504169656%_)
                               '#t))
                            (_%__kont171705171706%_ (lambda () '#f)))
                        (let* ((_%__match171830171831%_
                                (lambda (_%e169505169557%_
                                         _%hd169506169560%_
                                         _%tl169507169562%_
                                         _%e169508169565%_
                                         _%hd169509169568%_
                                         _%tl169510169570%_
                                         _%e169511169573%_
                                         _%hd169512169576%_
                                         _%tl169513169578%_
                                         _%e169514169581%_
                                         _%hd169515169584%_
                                         _%tl169516169586%_
                                         _%e169517169589%_
                                         _%hd169518169592%_
                                         _%tl169519169594%_
                                         _%e169520169597%_
                                         _%hd169521169600%_
                                         _%tl169522169602%_
                                         _%e169523169605%_
                                         _%hd169524169608%_
                                         _%tl169525169610%_
                                         _%e169526169613%_
                                         _%hd169527169616%_
                                         _%tl169528169618%_
                                         _%e169529169621%_
                                         _%hd169530169624%_
                                         _%tl169531169626%_
                                         _%e169532169629%_
                                         _%hd169533169632%_
                                         _%tl169534169634%_
                                         _%e169535169637%_
                                         _%hd169536169640%_
                                         _%tl169537169642%_
                                         _%e169538169645%_
                                         _%hd169539169648%_
                                         _%tl169540169650%_)
                                  (let ((_%g169501169653%_ _%hd169539169648%_)
                                        (_%g169502169654%_ _%hd169530169624%_)
                                        (_%g169503169655%_ _%hd169521169600%_)
                                        (_%g169504169656%_ _%hd169506169560%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g169504169656%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g169503169655%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g169504169656%_
                                                _%g169501169653%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g169502169654%_
                                                     _%g169504169656%_))))
                                        (_%__kont171703171704%_
                                         _%g169501169653%_
                                         _%g169502169654%_
                                         _%g169503169655%_
                                         _%g169504169656%_)
                                        (_%__kont171705171706%_)))))
                               (_%__match171802171803%_
                                (lambda (_%e169505169557%_
                                         _%hd169506169560%_
                                         _%tl169507169562%_
                                         _%e169508169565%_
                                         _%hd169509169568%_
                                         _%tl169510169570%_
                                         _%e169511169573%_
                                         _%hd169512169576%_
                                         _%tl169513169578%_
                                         _%e169514169581%_
                                         _%hd169515169584%_
                                         _%tl169516169586%_
                                         _%e169517169589%_
                                         _%hd169518169592%_
                                         _%tl169519169594%_
                                         _%e169520169597%_
                                         _%hd169521169600%_
                                         _%tl169522169602%_
                                         _%e169523169605%_
                                         _%hd169524169608%_
                                         _%tl169525169610%_
                                         _%e169526169613%_
                                         _%hd169527169616%_
                                         _%tl169528169618%_
                                         _%e169529169621%_
                                         _%hd169530169624%_
                                         _%tl169531169626%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169525169610%_))
                                      (let ((_%e169532169629%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169525169610%_))))
                                        (let ((_%tl169534169634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169532169629%_)))
                                              (_%hd169533169632%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169532169629%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd169533169632%_))
                                              (let ((_%e169535169637%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd169533169632%_))))
                                                (let ((_%tl169537169642%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169535169637%_)))
                                                      (_%hd169536169640%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169535169637%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd169536169640%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd169536169640%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169537169642%_))
                      (let ((_%e169538169645%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169537169642%_))))
                        (let ((_%tl169540169650%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169538169645%_)))
                              (_%hd169539169648%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169538169645%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl169540169650%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl169534169634%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl169510169570%_))
                                      (_%__match171830171831%_
                                       _%e169505169557%_
                                       _%hd169506169560%_
                                       _%tl169507169562%_
                                       _%e169508169565%_
                                       _%hd169509169568%_
                                       _%tl169510169570%_
                                       _%e169511169573%_
                                       _%hd169512169576%_
                                       _%tl169513169578%_
                                       _%e169514169581%_
                                       _%hd169515169584%_
                                       _%tl169516169586%_
                                       _%e169517169589%_
                                       _%hd169518169592%_
                                       _%tl169519169594%_
                                       _%e169520169597%_
                                       _%hd169521169600%_
                                       _%tl169522169602%_
                                       _%e169523169605%_
                                       _%hd169524169608%_
                                       _%tl169525169610%_
                                       _%e169526169613%_
                                       _%hd169527169616%_
                                       _%tl169528169618%_
                                       _%e169529169621%_
                                       _%hd169530169624%_
                                       _%tl169531169626%_
                                       _%e169532169629%_
                                       _%hd169533169632%_
                                       _%tl169534169634%_
                                       _%e169535169637%_
                                       _%hd169536169640%_
                                       _%tl169537169642%_
                                       _%e169538169645%_
                                       _%hd169539169648%_
                                       _%tl169540169650%_)
                                      (_%__kont171705171706%_))
                                  (_%__kont171705171706%_))
                              (_%__kont171705171706%_))))
                      (_%__kont171705171706%_))
                  (_%__kont171705171706%_))
              (_%__kont171705171706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171705171706%_))))
                                      (_%__kont171705171706%_))))
                               (_%__match171732171733%_
                                (lambda (_%e169441169698%_
                                         _%hd169442169701%_
                                         _%tl169443169703%_
                                         _%__splice171699171700%_
                                         _%target169444169706%_
                                         _%tl169446169708%_)
                                  (letrec ((_%loop169447169711%_
                                            (lambda (_%hd169445169714%_
                                                     _%arg169451169716%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169445169714%_))
                                                  (let ((_%e169448169718%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169445169714%_))))
                                                    (let ((_%lp-tl169450169723%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169448169718%_)))
                                                          (_%lp-hd169449169721%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169448169718%_))))
                                                      (_%loop169447169711%_
                                                       _%lp-tl169450169723%_
                                                       (cons _%lp-hd169449169721%_
                                                             _%arg169451169716%_))))
                                                  (let ((_%arg169452169726%_
                                                         (reverse _%arg169451169716%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169443169703%_))
                                                        (let ((_%e169453169728%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169443169703%_))))
                  (let ((_%tl169455169733%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169453169728%_)))
                        (_%hd169454169731%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169453169728%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169454169731%_))
                        (let ((_%e169456169736%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169454169731%_))))
                          (let ((_%tl169458169741%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169456169736%_)))
                                (_%hd169457169739%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169456169736%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169457169739%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd169457169739%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169458169741%_))
                                        (let ((_%e169459169744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169458169741%_))))
                                          (let ((_%tl169461169749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169459169744%_)))
                                                (_%hd169460169747%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169459169744%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd169460169747%_))
                                                (let ((_%e169462169752%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd169460169747%_))))
                                                  (let ((_%tl169464169757%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169462169752%_)))
                                                        (_%hd169463169755%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169462169752%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd169463169755%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd169463169755%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl169464169757%_))
                        (let ((_%e169465169760%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169464169757%_))))
                          (let ((_%tl169467169765%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169465169760%_)))
                                (_%hd169466169763%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169465169760%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169467169765%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169461169749%_))
                                    (let ((_%e169468169768%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169461169749%_))))
                                      (let ((_%tl169470169773%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169468169768%_)))
                                            (_%hd169469169771%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169468169768%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169469169771%_))
                                            (let ((_%e169471169776%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169469169771%_))))
                                              (let ((_%tl169473169781%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169471169776%_)))
                                                    (_%hd169472169779%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169471169776%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd169472169779%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd169472169779%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169473169781%_))
                                                            (let ((_%e169474169784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169473169781%_))))
                      (let ((_%tl169476169789%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169474169784%_)))
                            (_%hd169475169787%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169474169784%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169476169789%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl169470169773%_))
                                (if (let ((__tmp172971
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl169470169773%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp172971 '1))
                                    (let ((_%__splice171701171702%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl169470169773%_
                                              '1))))
                                      (let ((_%tl169479169794%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171701171702%_
                                                '1)))
                                            (_%target169477169792%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171701171702%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169479169794%_))
                                            (let ((_%e169486169797%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169479169794%_))))
                                              (let ((_%tl169488169802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169486169797%_)))
                                                    (_%hd169487169800%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169486169797%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169487169800%_))
                                                    (let ((_%e169489169805%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169487169800%_))))
                                                      (let ((_%tl169491169810%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169489169805%_)))
                    (_%hd169490169808%_
                     (let () (declare (not safe)) (##car _%e169489169805%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd169490169808%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd169490169808%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169491169810%_))
                            (let ((_%e169492169813%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169491169810%_))))
                              (let ((_%tl169494169818%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169492169813%_)))
                                    (_%hd169493169816%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169492169813%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169494169818%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl169488169802%_))
                                        (letrec ((_%loop169480169821%_
                                                  (lambda (_%hd169478169824%_
                                                           _%xarg169484169826%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd169478169824%_))
                                                        (let ((_%e169481169828%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd169478169824%_))))
                  (let ((_%lp-tl169483169833%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169481169828%_)))
                        (_%lp-hd169482169831%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169481169828%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd169482169831%_))
                        (let ((_%e169495169836%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd169482169831%_))))
                          (let ((_%tl169497169841%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169495169836%_)))
                                (_%hd169496169839%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169495169836%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169496169839%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd169496169839%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169497169841%_))
                                        (let ((_%e169498169844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169497169841%_))))
                                          (let ((_%tl169500169849%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169498169844%_)))
                                                (_%hd169499169847%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169498169844%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169500169849%_))
                                                (_%loop169480169821%_
                                                 _%lp-tl169483169833%_
                                                 (cons _%hd169499169847%_
                                                       _%xarg169484169826%_))
                                                (_%__match171802171803%_
                                                 _%e169441169698%_
                                                 _%hd169442169701%_
                                                 _%tl169443169703%_
                                                 _%e169453169728%_
                                                 _%hd169454169731%_
                                                 _%tl169455169733%_
                                                 _%e169456169736%_
                                                 _%hd169457169739%_
                                                 _%tl169458169741%_
                                                 _%e169459169744%_
                                                 _%hd169460169747%_
                                                 _%tl169461169749%_
                                                 _%e169462169752%_
                                                 _%hd169463169755%_
                                                 _%tl169464169757%_
                                                 _%e169465169760%_
                                                 _%hd169466169763%_
                                                 _%tl169467169765%_
                                                 _%e169468169768%_
                                                 _%hd169469169771%_
                                                 _%tl169470169773%_
                                                 _%e169471169776%_
                                                 _%hd169472169779%_
                                                 _%tl169473169781%_
                                                 _%e169474169784%_
                                                 _%hd169475169787%_
                                                 _%tl169476169789%_))))
                                        (_%__match171802171803%_
                                         _%e169441169698%_
                                         _%hd169442169701%_
                                         _%tl169443169703%_
                                         _%e169453169728%_
                                         _%hd169454169731%_
                                         _%tl169455169733%_
                                         _%e169456169736%_
                                         _%hd169457169739%_
                                         _%tl169458169741%_
                                         _%e169459169744%_
                                         _%hd169460169747%_
                                         _%tl169461169749%_
                                         _%e169462169752%_
                                         _%hd169463169755%_
                                         _%tl169464169757%_
                                         _%e169465169760%_
                                         _%hd169466169763%_
                                         _%tl169467169765%_
                                         _%e169468169768%_
                                         _%hd169469169771%_
                                         _%tl169470169773%_
                                         _%e169471169776%_
                                         _%hd169472169779%_
                                         _%tl169473169781%_
                                         _%e169474169784%_
                                         _%hd169475169787%_
                                         _%tl169476169789%_))
                                    (_%__match171802171803%_
                                     _%e169441169698%_
                                     _%hd169442169701%_
                                     _%tl169443169703%_
                                     _%e169453169728%_
                                     _%hd169454169731%_
                                     _%tl169455169733%_
                                     _%e169456169736%_
                                     _%hd169457169739%_
                                     _%tl169458169741%_
                                     _%e169459169744%_
                                     _%hd169460169747%_
                                     _%tl169461169749%_
                                     _%e169462169752%_
                                     _%hd169463169755%_
                                     _%tl169464169757%_
                                     _%e169465169760%_
                                     _%hd169466169763%_
                                     _%tl169467169765%_
                                     _%e169468169768%_
                                     _%hd169469169771%_
                                     _%tl169470169773%_
                                     _%e169471169776%_
                                     _%hd169472169779%_
                                     _%tl169473169781%_
                                     _%e169474169784%_
                                     _%hd169475169787%_
                                     _%tl169476169789%_))
                                (_%__match171802171803%_
                                 _%e169441169698%_
                                 _%hd169442169701%_
                                 _%tl169443169703%_
                                 _%e169453169728%_
                                 _%hd169454169731%_
                                 _%tl169455169733%_
                                 _%e169456169736%_
                                 _%hd169457169739%_
                                 _%tl169458169741%_
                                 _%e169459169744%_
                                 _%hd169460169747%_
                                 _%tl169461169749%_
                                 _%e169462169752%_
                                 _%hd169463169755%_
                                 _%tl169464169757%_
                                 _%e169465169760%_
                                 _%hd169466169763%_
                                 _%tl169467169765%_
                                 _%e169468169768%_
                                 _%hd169469169771%_
                                 _%tl169470169773%_
                                 _%e169471169776%_
                                 _%hd169472169779%_
                                 _%tl169473169781%_
                                 _%e169474169784%_
                                 _%hd169475169787%_
                                 _%tl169476169789%_))))
                        (_%__match171802171803%_
                         _%e169441169698%_
                         _%hd169442169701%_
                         _%tl169443169703%_
                         _%e169453169728%_
                         _%hd169454169731%_
                         _%tl169455169733%_
                         _%e169456169736%_
                         _%hd169457169739%_
                         _%tl169458169741%_
                         _%e169459169744%_
                         _%hd169460169747%_
                         _%tl169461169749%_
                         _%e169462169752%_
                         _%hd169463169755%_
                         _%tl169464169757%_
                         _%e169465169760%_
                         _%hd169466169763%_
                         _%tl169467169765%_
                         _%e169468169768%_
                         _%hd169469169771%_
                         _%tl169470169773%_
                         _%e169471169776%_
                         _%hd169472169779%_
                         _%tl169473169781%_
                         _%e169474169784%_
                         _%hd169475169787%_
                         _%tl169476169789%_))))
                (let ((_%xarg169485169852%_ (reverse _%xarg169484169826%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl169455169733%_))
                      (let ((_%g169435169854%_ _%hd169493169816%_)
                            (_%g169436169855%_ _%xarg169485169852%_)
                            (_%g169437169856%_ _%hd169475169787%_)
                            (_%g169438169857%_ _%hd169466169763%_)
                            (_%g169439169858%_ _%tl169446169708%_)
                            (_%g169440169859%_ _%arg169452169726%_))
                        (if (and (let ((__tmp172972
                                        (let ((__tmp172973
                                               (lambda (_%g169902169905%_
                                                        _%g169903169907%_)
                                                 (cons _%g169902169905%_
                                                       _%g169903169907%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp172973
                                           '()
                                           _%g169440169859%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp172972))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g169439169858%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g169438169857%_
                                    'apply))
                                 (let ((__tmp172976
                                        (length (let ((__tmp172977
                                                       (lambda (_%g169909169912%_
                                                                _%g169910169914%_)
                                                         (cons _%g169909169912%_
                                                               _%g169910169914%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp172977
                                                   '()
                                                   _%g169440169859%_))))
                                       (__tmp172974
                                        (length (let ((__tmp172975
                                                       (lambda (_%g169916169919%_
                                                                _%g169917169921%_)
                                                         (cons _%g169916169919%_
                                                               _%g169917169921%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp172975
                                                   '()
                                                   _%g169436169855%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp172976 __tmp172974))
                                 (let ((__tmp172980
                                        (let ((__tmp172981
                                               (lambda (_%g169923169926%_
                                                        _%g169924169928%_)
                                                 (cons _%g169923169926%_
                                                       _%g169924169928%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp172981
                                           '()
                                           _%g169440169859%_)))
                                       (__tmp172978
                                        (let ((__tmp172979
                                               (lambda (_%g169930169933%_
                                                        _%g169931169935%_)
                                                 (cons _%g169930169933%_
                                                       _%g169931169935%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp172979
                                           '()
                                           _%g169436169855%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp172980
                                    __tmp172978))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g169439169858%_
                                    _%g169435169854%_))
                                 (not (let ((__tmp172985
                                             (lambda (_%g169937169939%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g169937169939%_
                                                  _%g169437169856%_))))
                                            (__tmp172982
                                             (let ((__tmp172984
                                                    (lambda (_%g169941169944%_
                                                             _%g169942169946%_)
                                                      (cons _%g169941169944%_
                                                            _%g169942169946%_)))
                                                   (__tmp172983
                                                    (cons _%g169439169858%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp172984
                                                __tmp172983
                                                _%g169440169859%_))))
                                        (declare (not safe))
                                        (__find __tmp172985 __tmp172982))))
                            (_%__kont171697171698%_
                             _%g169435169854%_
                             _%g169436169855%_
                             _%g169437169856%_
                             _%g169438169857%_
                             _%g169439169858%_
                             _%g169440169859%_)
                            (_%__match171802171803%_
                             _%e169441169698%_
                             _%hd169442169701%_
                             _%tl169443169703%_
                             _%e169453169728%_
                             _%hd169454169731%_
                             _%tl169455169733%_
                             _%e169456169736%_
                             _%hd169457169739%_
                             _%tl169458169741%_
                             _%e169459169744%_
                             _%hd169460169747%_
                             _%tl169461169749%_
                             _%e169462169752%_
                             _%hd169463169755%_
                             _%tl169464169757%_
                             _%e169465169760%_
                             _%hd169466169763%_
                             _%tl169467169765%_
                             _%e169468169768%_
                             _%hd169469169771%_
                             _%tl169470169773%_
                             _%e169471169776%_
                             _%hd169472169779%_
                             _%tl169473169781%_
                             _%e169474169784%_
                             _%hd169475169787%_
                             _%tl169476169789%_)))
                      (_%__match171802171803%_
                       _%e169441169698%_
                       _%hd169442169701%_
                       _%tl169443169703%_
                       _%e169453169728%_
                       _%hd169454169731%_
                       _%tl169455169733%_
                       _%e169456169736%_
                       _%hd169457169739%_
                       _%tl169458169741%_
                       _%e169459169744%_
                       _%hd169460169747%_
                       _%tl169461169749%_
                       _%e169462169752%_
                       _%hd169463169755%_
                       _%tl169464169757%_
                       _%e169465169760%_
                       _%hd169466169763%_
                       _%tl169467169765%_
                       _%e169468169768%_
                       _%hd169469169771%_
                       _%tl169470169773%_
                       _%e169471169776%_
                       _%hd169472169779%_
                       _%tl169473169781%_
                       _%e169474169784%_
                       _%hd169475169787%_
                       _%tl169476169789%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop169480169821%_
                                           _%target169477169792%_
                                           '()))
                                        (_%__match171802171803%_
                                         _%e169441169698%_
                                         _%hd169442169701%_
                                         _%tl169443169703%_
                                         _%e169453169728%_
                                         _%hd169454169731%_
                                         _%tl169455169733%_
                                         _%e169456169736%_
                                         _%hd169457169739%_
                                         _%tl169458169741%_
                                         _%e169459169744%_
                                         _%hd169460169747%_
                                         _%tl169461169749%_
                                         _%e169462169752%_
                                         _%hd169463169755%_
                                         _%tl169464169757%_
                                         _%e169465169760%_
                                         _%hd169466169763%_
                                         _%tl169467169765%_
                                         _%e169468169768%_
                                         _%hd169469169771%_
                                         _%tl169470169773%_
                                         _%e169471169776%_
                                         _%hd169472169779%_
                                         _%tl169473169781%_
                                         _%e169474169784%_
                                         _%hd169475169787%_
                                         _%tl169476169789%_))
                                    (_%__match171802171803%_
                                     _%e169441169698%_
                                     _%hd169442169701%_
                                     _%tl169443169703%_
                                     _%e169453169728%_
                                     _%hd169454169731%_
                                     _%tl169455169733%_
                                     _%e169456169736%_
                                     _%hd169457169739%_
                                     _%tl169458169741%_
                                     _%e169459169744%_
                                     _%hd169460169747%_
                                     _%tl169461169749%_
                                     _%e169462169752%_
                                     _%hd169463169755%_
                                     _%tl169464169757%_
                                     _%e169465169760%_
                                     _%hd169466169763%_
                                     _%tl169467169765%_
                                     _%e169468169768%_
                                     _%hd169469169771%_
                                     _%tl169470169773%_
                                     _%e169471169776%_
                                     _%hd169472169779%_
                                     _%tl169473169781%_
                                     _%e169474169784%_
                                     _%hd169475169787%_
                                     _%tl169476169789%_))))
                            (_%__match171802171803%_
                             _%e169441169698%_
                             _%hd169442169701%_
                             _%tl169443169703%_
                             _%e169453169728%_
                             _%hd169454169731%_
                             _%tl169455169733%_
                             _%e169456169736%_
                             _%hd169457169739%_
                             _%tl169458169741%_
                             _%e169459169744%_
                             _%hd169460169747%_
                             _%tl169461169749%_
                             _%e169462169752%_
                             _%hd169463169755%_
                             _%tl169464169757%_
                             _%e169465169760%_
                             _%hd169466169763%_
                             _%tl169467169765%_
                             _%e169468169768%_
                             _%hd169469169771%_
                             _%tl169470169773%_
                             _%e169471169776%_
                             _%hd169472169779%_
                             _%tl169473169781%_
                             _%e169474169784%_
                             _%hd169475169787%_
                             _%tl169476169789%_))
                        (_%__match171802171803%_
                         _%e169441169698%_
                         _%hd169442169701%_
                         _%tl169443169703%_
                         _%e169453169728%_
                         _%hd169454169731%_
                         _%tl169455169733%_
                         _%e169456169736%_
                         _%hd169457169739%_
                         _%tl169458169741%_
                         _%e169459169744%_
                         _%hd169460169747%_
                         _%tl169461169749%_
                         _%e169462169752%_
                         _%hd169463169755%_
                         _%tl169464169757%_
                         _%e169465169760%_
                         _%hd169466169763%_
                         _%tl169467169765%_
                         _%e169468169768%_
                         _%hd169469169771%_
                         _%tl169470169773%_
                         _%e169471169776%_
                         _%hd169472169779%_
                         _%tl169473169781%_
                         _%e169474169784%_
                         _%hd169475169787%_
                         _%tl169476169789%_))
                    (_%__match171802171803%_
                     _%e169441169698%_
                     _%hd169442169701%_
                     _%tl169443169703%_
                     _%e169453169728%_
                     _%hd169454169731%_
                     _%tl169455169733%_
                     _%e169456169736%_
                     _%hd169457169739%_
                     _%tl169458169741%_
                     _%e169459169744%_
                     _%hd169460169747%_
                     _%tl169461169749%_
                     _%e169462169752%_
                     _%hd169463169755%_
                     _%tl169464169757%_
                     _%e169465169760%_
                     _%hd169466169763%_
                     _%tl169467169765%_
                     _%e169468169768%_
                     _%hd169469169771%_
                     _%tl169470169773%_
                     _%e169471169776%_
                     _%hd169472169779%_
                     _%tl169473169781%_
                     _%e169474169784%_
                     _%hd169475169787%_
                     _%tl169476169789%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171802171803%_
                                                     _%e169441169698%_
                                                     _%hd169442169701%_
                                                     _%tl169443169703%_
                                                     _%e169453169728%_
                                                     _%hd169454169731%_
                                                     _%tl169455169733%_
                                                     _%e169456169736%_
                                                     _%hd169457169739%_
                                                     _%tl169458169741%_
                                                     _%e169459169744%_
                                                     _%hd169460169747%_
                                                     _%tl169461169749%_
                                                     _%e169462169752%_
                                                     _%hd169463169755%_
                                                     _%tl169464169757%_
                                                     _%e169465169760%_
                                                     _%hd169466169763%_
                                                     _%tl169467169765%_
                                                     _%e169468169768%_
                                                     _%hd169469169771%_
                                                     _%tl169470169773%_
                                                     _%e169471169776%_
                                                     _%hd169472169779%_
                                                     _%tl169473169781%_
                                                     _%e169474169784%_
                                                     _%hd169475169787%_
                                                     _%tl169476169789%_))))
                                            (_%__match171802171803%_
                                             _%e169441169698%_
                                             _%hd169442169701%_
                                             _%tl169443169703%_
                                             _%e169453169728%_
                                             _%hd169454169731%_
                                             _%tl169455169733%_
                                             _%e169456169736%_
                                             _%hd169457169739%_
                                             _%tl169458169741%_
                                             _%e169459169744%_
                                             _%hd169460169747%_
                                             _%tl169461169749%_
                                             _%e169462169752%_
                                             _%hd169463169755%_
                                             _%tl169464169757%_
                                             _%e169465169760%_
                                             _%hd169466169763%_
                                             _%tl169467169765%_
                                             _%e169468169768%_
                                             _%hd169469169771%_
                                             _%tl169470169773%_
                                             _%e169471169776%_
                                             _%hd169472169779%_
                                             _%tl169473169781%_
                                             _%e169474169784%_
                                             _%hd169475169787%_
                                             _%tl169476169789%_))))
                                    (_%__match171802171803%_
                                     _%e169441169698%_
                                     _%hd169442169701%_
                                     _%tl169443169703%_
                                     _%e169453169728%_
                                     _%hd169454169731%_
                                     _%tl169455169733%_
                                     _%e169456169736%_
                                     _%hd169457169739%_
                                     _%tl169458169741%_
                                     _%e169459169744%_
                                     _%hd169460169747%_
                                     _%tl169461169749%_
                                     _%e169462169752%_
                                     _%hd169463169755%_
                                     _%tl169464169757%_
                                     _%e169465169760%_
                                     _%hd169466169763%_
                                     _%tl169467169765%_
                                     _%e169468169768%_
                                     _%hd169469169771%_
                                     _%tl169470169773%_
                                     _%e169471169776%_
                                     _%hd169472169779%_
                                     _%tl169473169781%_
                                     _%e169474169784%_
                                     _%hd169475169787%_
                                     _%tl169476169789%_))
                                (_%__match171802171803%_
                                 _%e169441169698%_
                                 _%hd169442169701%_
                                 _%tl169443169703%_
                                 _%e169453169728%_
                                 _%hd169454169731%_
                                 _%tl169455169733%_
                                 _%e169456169736%_
                                 _%hd169457169739%_
                                 _%tl169458169741%_
                                 _%e169459169744%_
                                 _%hd169460169747%_
                                 _%tl169461169749%_
                                 _%e169462169752%_
                                 _%hd169463169755%_
                                 _%tl169464169757%_
                                 _%e169465169760%_
                                 _%hd169466169763%_
                                 _%tl169467169765%_
                                 _%e169468169768%_
                                 _%hd169469169771%_
                                 _%tl169470169773%_
                                 _%e169471169776%_
                                 _%hd169472169779%_
                                 _%tl169473169781%_
                                 _%e169474169784%_
                                 _%hd169475169787%_
                                 _%tl169476169789%_))
                            (_%__kont171705171706%_))))
                    (_%__kont171705171706%_))
                (_%__kont171705171706%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171705171706%_))))
                                            (_%__kont171705171706%_))))
                                    (_%__kont171705171706%_))
                                (_%__kont171705171706%_))))
                        (_%__kont171705171706%_))
                    (_%__kont171705171706%_))
                (_%__kont171705171706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171705171706%_))))
                                        (_%__kont171705171706%_))
                                    (_%__kont171705171706%_))
                                (_%__kont171705171706%_))))
                        (_%__kont171705171706%_))))
                (_%__kont171705171706%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop169447169711%_
                                     _%target169444169706%_
                                     '()))))
                               (_%__match171720171721%_
                                (lambda (_%e169393169954%_
                                         _%hd169394169957%_
                                         _%tl169395169959%_
                                         _%__splice171693171694%_
                                         _%target169396169962%_
                                         _%tl169398169964%_)
                                  (letrec ((_%loop169399169967%_
                                            (lambda (_%hd169397169970%_
                                                     _%arg169403169972%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169397169970%_))
                                                  (let ((_%e169400169974%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169397169970%_))))
                                                    (let ((_%lp-tl169402169979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169400169974%_)))
                                                          (_%lp-hd169401169977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169400169974%_))))
                                                      (_%loop169399169967%_
                                                       _%lp-tl169402169979%_
                                                       (cons _%lp-hd169401169977%_
                                                             _%arg169403169972%_))))
                                                  (let ((_%arg169404169982%_
                                                         (reverse _%arg169403169972%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169395169959%_))
                                                        (let ((_%e169405169984%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169395169959%_))))
                  (let ((_%tl169407169989%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169405169984%_)))
                        (_%hd169406169987%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169405169984%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169406169987%_))
                        (let ((_%e169408169992%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169406169987%_))))
                          (let ((_%tl169410169997%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169408169992%_)))
                                (_%hd169409169995%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169408169992%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169409169995%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd169409169995%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169410169997%_))
                                        (let ((_%e169411170000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169410169997%_))))
                                          (let ((_%tl169413170005%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169411170000%_)))
                                                (_%hd169412170003%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169411170000%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd169412170003%_))
                                                (let ((_%e169414170008%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd169412170003%_))))
                                                  (let ((_%tl169416170013%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169414170008%_)))
                                                        (_%hd169415170011%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169414170008%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd169415170011%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd169415170011%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl169416170013%_))
                        (let ((_%e169417170016%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169416170013%_))))
                          (let ((_%tl169419170021%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169417170016%_)))
                                (_%hd169418170019%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169417170016%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169419170021%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl169413170005%_))
                                    (let ((_%__splice171695171696%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl169413170005%_
                                              '0))))
                                      (let ((_%tl169422170026%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171695171696%_
                                                '1)))
                                            (_%target169420170024%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171695171696%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl169422170026%_))
                                            (letrec ((_%loop169423170029%_
                                                      (lambda (_%hd169421170032%_
                                                               _%xarg169427170034%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd169421170032%_))
                                                            (let ((_%e169424170036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd169421170032%_))))
                      (let ((_%lp-tl169426170041%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169424170036%_)))
                            (_%lp-hd169425170039%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169424170036%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd169425170039%_))
                            (let ((_%e169429170044%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd169425170039%_))))
                              (let ((_%tl169431170049%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169429170044%_)))
                                    (_%hd169430170047%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169429170044%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169430170047%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd169430170047%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169431170049%_))
                                            (let ((_%e169432170052%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169431170049%_))))
                                              (let ((_%tl169434170057%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169432170052%_)))
                                                    (_%hd169433170055%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169432170052%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl169434170057%_))
                                                    (_%loop169423170029%_
                                                     _%lp-tl169426170041%_
                                                     (cons _%hd169433170055%_
                                                           _%xarg169427170034%_))
                                                    (_%__match171732171733%_
                                                     _%e169393169954%_
                                                     _%hd169394169957%_
                                                     _%tl169395169959%_
                                                     _%__splice171693171694%_
                                                     _%target169396169962%_
                                                     _%tl169398169964%_))))
                                            (_%__match171732171733%_
                                             _%e169393169954%_
                                             _%hd169394169957%_
                                             _%tl169395169959%_
                                             _%__splice171693171694%_
                                             _%target169396169962%_
                                             _%tl169398169964%_))
                                        (_%__match171732171733%_
                                         _%e169393169954%_
                                         _%hd169394169957%_
                                         _%tl169395169959%_
                                         _%__splice171693171694%_
                                         _%target169396169962%_
                                         _%tl169398169964%_))
                                    (_%__match171732171733%_
                                     _%e169393169954%_
                                     _%hd169394169957%_
                                     _%tl169395169959%_
                                     _%__splice171693171694%_
                                     _%target169396169962%_
                                     _%tl169398169964%_))))
                            (_%__match171732171733%_
                             _%e169393169954%_
                             _%hd169394169957%_
                             _%tl169395169959%_
                             _%__splice171693171694%_
                             _%target169396169962%_
                             _%tl169398169964%_))))
                    (let ((_%xarg169428170060%_
                           (reverse _%xarg169427170034%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169407169989%_))
                          (let ((_%g169390170062%_ _%xarg169428170060%_)
                                (_%g169391170063%_ _%hd169418170019%_)
                                (_%g169392170064%_ _%arg169404169982%_))
                            (if (and (let ((__tmp172986
                                            (let ((__tmp172987
                                                   (lambda (_%g170092170095%_
                                                            _%g170093170097%_)
                                                     (cons _%g170092170095%_
                                                           _%g170093170097%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp172987
                                               '()
                                               _%g169392170064%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp172986))
                                     (let ((__tmp172990
                                            (length (let ((__tmp172991
                                                           (lambda (_%g170099170102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170100170104%_)
                     (cons _%g170099170102%_ _%g170100170104%_))))
              (declare (not safe))
              (__foldr1 __tmp172991 '() _%g169392170064%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp172988
                                            (length (let ((__tmp172989
                                                           (lambda (_%g170106170109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170107170111%_)
                     (cons _%g170106170109%_ _%g170107170111%_))))
              (declare (not safe))
              (__foldr1 __tmp172989 '() _%g169390170062%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp172990 __tmp172988))
                                     (let ((__tmp172994
                                            (let ((__tmp172995
                                                   (lambda (_%g170113170116%_
                                                            _%g170114170118%_)
                                                     (cons _%g170113170116%_
                                                           _%g170114170118%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp172995
                                               '()
                                               _%g169392170064%_)))
                                           (__tmp172992
                                            (let ((__tmp172993
                                                   (lambda (_%g170120170123%_
                                                            _%g170121170125%_)
                                                     (cons _%g170120170123%_
                                                           _%g170121170125%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp172993
                                               '()
                                               _%g169390170062%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp172994
                                        __tmp172992))
                                     (not (let ((__tmp172998
                                                 (lambda (_%g170127170129%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g170127170129%_
                                                      _%g169391170063%_))))
                                                (__tmp172996
                                                 (let ((__tmp172997
                                                        (lambda (_%g170131170134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g170132170136%_)
                  (cons _%g170131170134%_ _%g170132170136%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp172997
                                                    '()
                                                    _%g169392170064%_))))
                                            (declare (not safe))
                                            (__find __tmp172998 __tmp172996))))
                                (_%__kont171691171692%_
                                 _%g169390170062%_
                                 _%g169391170063%_
                                 _%g169392170064%_)
                                (_%__match171732171733%_
                                 _%e169393169954%_
                                 _%hd169394169957%_
                                 _%tl169395169959%_
                                 _%__splice171693171694%_
                                 _%target169396169962%_
                                 _%tl169398169964%_)))
                          (_%__match171732171733%_
                           _%e169393169954%_
                           _%hd169394169957%_
                           _%tl169395169959%_
                           _%__splice171693171694%_
                           _%target169396169962%_
                           _%tl169398169964%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop169423170029%_
                                               _%target169420170024%_
                                               '()))
                                            (_%__match171732171733%_
                                             _%e169393169954%_
                                             _%hd169394169957%_
                                             _%tl169395169959%_
                                             _%__splice171693171694%_
                                             _%target169396169962%_
                                             _%tl169398169964%_))))
                                    (_%__match171732171733%_
                                     _%e169393169954%_
                                     _%hd169394169957%_
                                     _%tl169395169959%_
                                     _%__splice171693171694%_
                                     _%target169396169962%_
                                     _%tl169398169964%_))
                                (_%__match171732171733%_
                                 _%e169393169954%_
                                 _%hd169394169957%_
                                 _%tl169395169959%_
                                 _%__splice171693171694%_
                                 _%target169396169962%_
                                 _%tl169398169964%_))))
                        (_%__match171732171733%_
                         _%e169393169954%_
                         _%hd169394169957%_
                         _%tl169395169959%_
                         _%__splice171693171694%_
                         _%target169396169962%_
                         _%tl169398169964%_))
                    (_%__match171732171733%_
                     _%e169393169954%_
                     _%hd169394169957%_
                     _%tl169395169959%_
                     _%__splice171693171694%_
                     _%target169396169962%_
                     _%tl169398169964%_))
                (_%__match171732171733%_
                 _%e169393169954%_
                 _%hd169394169957%_
                 _%tl169395169959%_
                 _%__splice171693171694%_
                 _%target169396169962%_
                 _%tl169398169964%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match171732171733%_
                                                 _%e169393169954%_
                                                 _%hd169394169957%_
                                                 _%tl169395169959%_
                                                 _%__splice171693171694%_
                                                 _%target169396169962%_
                                                 _%tl169398169964%_))))
                                        (_%__match171732171733%_
                                         _%e169393169954%_
                                         _%hd169394169957%_
                                         _%tl169395169959%_
                                         _%__splice171693171694%_
                                         _%target169396169962%_
                                         _%tl169398169964%_))
                                    (_%__match171732171733%_
                                     _%e169393169954%_
                                     _%hd169394169957%_
                                     _%tl169395169959%_
                                     _%__splice171693171694%_
                                     _%target169396169962%_
                                     _%tl169398169964%_))
                                (_%__match171732171733%_
                                 _%e169393169954%_
                                 _%hd169394169957%_
                                 _%tl169395169959%_
                                 _%__splice171693171694%_
                                 _%target169396169962%_
                                 _%tl169398169964%_))))
                        (_%__match171732171733%_
                         _%e169393169954%_
                         _%hd169394169957%_
                         _%tl169395169959%_
                         _%__splice171693171694%_
                         _%target169396169962%_
                         _%tl169398169964%_))))
                (_%__match171732171733%_
                 _%e169393169954%_
                 _%hd169394169957%_
                 _%tl169395169959%_
                 _%__splice171693171694%_
                 _%target169396169962%_
                 _%tl169398169964%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop169399169967%_
                                     _%target169396169962%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx171689171690%_))
                              (let ((_%e169393169954%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx171689171690%_))))
                                (let ((_%tl169395169959%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169393169954%_)))
                                      (_%hd169394169957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169393169954%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd169394169957%_))
                                      (let ((_%__splice171693171694%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd169394169957%_
                                                '0))))
                                        (let ((_%tl169398169964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171693171694%_
                                                  '1)))
                                              (_%target169396169962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171693171694%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169398169964%_))
                                              (_%__match171720171721%_
                                               _%e169393169954%_
                                               _%hd169394169957%_
                                               _%tl169395169959%_
                                               _%__splice171693171694%_
                                               _%target169396169962%_
                                               _%tl169398169964%_)
                                              (_%__match171732171733%_
                                               _%e169393169954%_
                                               _%hd169394169957%_
                                               _%tl169395169959%_
                                               _%__splice171693171694%_
                                               _%target169396169962%_
                                               _%tl169398169964%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169395169959%_))
                                          (let ((_%e169508169565%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169395169959%_))))
                                            (let ((_%tl169510169570%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169508169565%_)))
                                                  (_%hd169509169568%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169508169565%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169509169568%_))
                                                  (let ((_%e169511169573%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169509169568%_))))
                                                    (let ((_%tl169513169578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169511169573%_)))
                                                          (_%hd169512169576%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169511169573%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd169512169576%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd169512169576%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169513169578%_))
                          (let ((_%e169514169581%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169513169578%_))))
                            (let ((_%tl169516169586%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169514169581%_)))
                                  (_%hd169515169584%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169514169581%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169515169584%_))
                                  (let ((_%e169517169589%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169515169584%_))))
                                    (let ((_%tl169519169594%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169517169589%_)))
                                          (_%hd169518169592%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169517169589%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd169518169592%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd169518169592%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl169519169594%_))
                                                  (let ((_%e169520169597%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl169519169594%_))))
                                                    (let ((_%tl169522169602%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169520169597%_)))
                                                          (_%hd169521169600%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169520169597%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169522169602%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169516169586%_))
                      (let ((_%e169523169605%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169516169586%_))))
                        (let ((_%tl169525169610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169523169605%_)))
                              (_%hd169524169608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169523169605%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169524169608%_))
                              (let ((_%e169526169613%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169524169608%_))))
                                (let ((_%tl169528169618%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169526169613%_)))
                                      (_%hd169527169616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169526169613%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd169527169616%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd169527169616%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl169528169618%_))
                                              (let ((_%e169529169621%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl169528169618%_))))
                                                (let ((_%tl169531169626%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169529169621%_)))
                                                      (_%hd169530169624%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169529169621%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169531169626%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl169525169610%_))
                                                          (let ((_%e169532169629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl169525169610%_))))
                    (let ((_%tl169534169634%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169532169629%_)))
                          (_%hd169533169632%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169532169629%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd169533169632%_))
                          (let ((_%e169535169637%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd169533169632%_))))
                            (let ((_%tl169537169642%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169535169637%_)))
                                  (_%hd169536169640%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169535169637%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd169536169640%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd169536169640%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169537169642%_))
                                          (let ((_%e169538169645%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169537169642%_))))
                                            (let ((_%tl169540169650%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169538169645%_)))
                                                  (_%hd169539169648%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169538169645%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl169540169650%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169534169634%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169510169570%_))
                                                          (_%__match171830171831%_
                                                           _%e169393169954%_
                                                           _%hd169394169957%_
                                                           _%tl169395169959%_
                                                           _%e169508169565%_
                                                           _%hd169509169568%_
                                                           _%tl169510169570%_
                                                           _%e169511169573%_
                                                           _%hd169512169576%_
                                                           _%tl169513169578%_
                                                           _%e169514169581%_
                                                           _%hd169515169584%_
                                                           _%tl169516169586%_
                                                           _%e169517169589%_
                                                           _%hd169518169592%_
                                                           _%tl169519169594%_
                                                           _%e169520169597%_
                                                           _%hd169521169600%_
                                                           _%tl169522169602%_
                                                           _%e169523169605%_
                                                           _%hd169524169608%_
                                                           _%tl169525169610%_
                                                           _%e169526169613%_
                                                           _%hd169527169616%_
                                                           _%tl169528169618%_
                                                           _%e169529169621%_
                                                           _%hd169530169624%_
                                                           _%tl169531169626%_
                                                           _%e169532169629%_
                                                           _%hd169533169632%_
                                                           _%tl169534169634%_
                                                           _%e169535169637%_
                                                           _%hd169536169640%_
                                                           _%tl169537169642%_
                                                           _%e169538169645%_
                                                           _%hd169539169648%_
                                                           _%tl169540169650%_)
                                                          (_%__kont171705171706%_))
                                                      (_%__kont171705171706%_))
                                                  (_%__kont171705171706%_))))
                                          (_%__kont171705171706%_))
                                      (_%__kont171705171706%_))
                                  (_%__kont171705171706%_))))
                          (_%__kont171705171706%_))))
                  (_%__kont171705171706%_))
              (_%__kont171705171706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171705171706%_))
                                          (_%__kont171705171706%_))
                                      (_%__kont171705171706%_))))
                              (_%__kont171705171706%_))))
                      (_%__kont171705171706%_))
                  (_%__kont171705171706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171705171706%_))
                                              (_%__kont171705171706%_))
                                          (_%__kont171705171706%_))))
                                  (_%__kont171705171706%_))))
                          (_%__kont171705171706%_))
                      (_%__kont171705171706%_))
                  (_%__kont171705171706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171705171706%_))))
                                          (_%__kont171705171706%_)))))
                              (_%__kont171705171706%_)))))))
                 (_%dispatch-case-e168703%_
                  (lambda (_%hd168850%_ _%body168851%_)
                    (let* ((_%form168853%_
                            (cons _%hd168850%_ (cons _%body168851%_ '())))
                           (_%__stx171833171834%_ _%form168853%_)
                           (_%g168857168981%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx171833171834%_)))))
                      (let ((_%__kont171835171836%_
                             (lambda (_%g168859169346%_
                                      _%g168860169347%_
                                      _%g168861169348%_)
                               (let ((__tmp172999
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168860169347%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168699%_
                                  __tmp172999))))
                            (_%__kont171841171842%_
                             (lambda (_%g168904169198%_
                                      _%g168905169199%_
                                      _%g168906169200%_
                                      _%g168907169201%_)
                               (let ((__tmp173000
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168904169198%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168699%_
                                  __tmp173000))))
                            (_%__kont171845171846%_
                             (lambda (_%g168944169066%_
                                      _%g168945169067%_
                                      _%g168946169068%_)
                               (let ((__tmp173001
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168944169066%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168699%_
                                  __tmp173001)))))
                        (let* ((_%__match171942171943%_
                                (lambda (_%e168947168986%_
                                         _%hd168948168989%_
                                         _%tl168949168991%_
                                         _%e168950168994%_
                                         _%hd168951168997%_
                                         _%tl168952168999%_
                                         _%e168953169002%_
                                         _%hd168954169005%_
                                         _%tl168955169007%_
                                         _%e168956169010%_
                                         _%hd168957169013%_
                                         _%tl168958169015%_
                                         _%e168959169018%_
                                         _%hd168960169021%_
                                         _%tl168961169023%_
                                         _%e168962169026%_
                                         _%hd168963169029%_
                                         _%tl168964169031%_
                                         _%e168965169034%_
                                         _%hd168966169037%_
                                         _%tl168967169039%_
                                         _%e168968169042%_
                                         _%hd168969169045%_
                                         _%tl168970169047%_
                                         _%e168971169050%_
                                         _%hd168972169053%_
                                         _%tl168973169055%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168967169039%_))
                                      (let ((_%e168974169058%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168967169039%_))))
                                        (let ((_%tl168976169063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168974169058%_)))
                                              (_%hd168975169061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168974169058%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl168976169063%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl168952168999%_))
                                                  (_%__kont171845171846%_
                                                   _%hd168972169053%_
                                                   _%hd168963169029%_
                                                   _%hd168948168989%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168857168981%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168857168981%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168857168981%_)))))
                               (_%__match171872171873%_
                                (lambda (_%e168908169104%_
                                         _%hd168909169107%_
                                         _%tl168910169109%_
                                         _%__splice171843171844%_
                                         _%target168911169112%_
                                         _%tl168913169114%_)
                                  (letrec ((_%loop168914169117%_
                                            (lambda (_%hd168912169120%_
                                                     _%arg168918169122%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168912169120%_))
                                                  (let ((_%e168915169124%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168912169120%_))))
                                                    (let ((_%lp-tl168917169129%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168915169124%_)))
                                                          (_%lp-hd168916169127%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168915169124%_))))
                                                      (_%loop168914169117%_
                                                       _%lp-tl168917169129%_
                                                       (cons _%lp-hd168916169127%_
                                                             _%arg168918169122%_))))
                                                  (let ((_%arg168919169132%_
                                                         (reverse _%arg168918169122%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl168910169109%_))
                                                        (let ((_%e168920169134%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl168910169109%_))))
                  (let ((_%tl168922169139%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168920169134%_)))
                        (_%hd168921169137%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168920169134%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168921169137%_))
                        (let ((_%e168923169142%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168921169137%_))))
                          (let ((_%tl168925169147%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168923169142%_)))
                                (_%hd168924169145%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168923169142%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd168924169145%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd168924169145%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168925169147%_))
                                        (let ((_%e168926169150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168925169147%_))))
                                          (let ((_%tl168928169155%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168926169150%_)))
                                                (_%hd168927169153%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168926169150%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd168927169153%_))
                                                (let ((_%e168929169158%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd168927169153%_))))
                                                  (let ((_%tl168931169163%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168929169158%_)))
                                                        (_%hd168930169161%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168929169158%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd168930169161%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd168930169161%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl168931169163%_))
                        (let ((_%e168932169166%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168931169163%_))))
                          (let ((_%tl168934169171%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168932169166%_)))
                                (_%hd168933169169%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168932169166%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl168934169171%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl168928169155%_))
                                    (let ((_%e168935169174%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl168928169155%_))))
                                      (let ((_%tl168937169179%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168935169174%_)))
                                            (_%hd168936169177%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168935169174%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd168936169177%_))
                                            (let ((_%e168938169182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd168936169177%_))))
                                              (let ((_%tl168940169187%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168938169182%_)))
                                                    (_%hd168939169185%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168938169182%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd168939169185%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd168939169185%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl168940169187%_))
                                                            (let ((_%e168941169190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl168940169187%_))))
                      (let ((_%tl168943169195%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168941169190%_)))
                            (_%hd168942169193%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168941169190%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl168943169195%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl168922169139%_))
                                (_%__kont171841171842%_
                                 _%hd168942169193%_
                                 _%hd168933169169%_
                                 _%tl168913169114%_
                                 _%arg168919169132%_)
                                (_%__match171942171943%_
                                 _%e168908169104%_
                                 _%hd168909169107%_
                                 _%tl168910169109%_
                                 _%e168920169134%_
                                 _%hd168921169137%_
                                 _%tl168922169139%_
                                 _%e168923169142%_
                                 _%hd168924169145%_
                                 _%tl168925169147%_
                                 _%e168926169150%_
                                 _%hd168927169153%_
                                 _%tl168928169155%_
                                 _%e168929169158%_
                                 _%hd168930169161%_
                                 _%tl168931169163%_
                                 _%e168932169166%_
                                 _%hd168933169169%_
                                 _%tl168934169171%_
                                 _%e168935169174%_
                                 _%hd168936169177%_
                                 _%tl168937169179%_
                                 _%e168938169182%_
                                 _%hd168939169185%_
                                 _%tl168940169187%_
                                 _%e168941169190%_
                                 _%hd168942169193%_
                                 _%tl168943169195%_))
                            (let ()
                              (declare (not safe))
                              (_%g168857168981%_)))))
                    (let () (declare (not safe)) (_%g168857168981%_)))
                (let () (declare (not safe)) (_%g168857168981%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g168857168981%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g168857168981%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168857168981%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g168857168981%_)))))
                        (let () (declare (not safe)) (_%g168857168981%_)))
                    (let () (declare (not safe)) (_%g168857168981%_)))
                (let () (declare (not safe)) (_%g168857168981%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168857168981%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g168857168981%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168857168981%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g168857168981%_)))))
                        (let () (declare (not safe)) (_%g168857168981%_)))))
                (let () (declare (not safe)) (_%g168857168981%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop168914169117%_
                                     _%target168911169112%_
                                     '()))))
                               (_%__match171860171861%_
                                (lambda (_%e168862169238%_
                                         _%hd168863169241%_
                                         _%tl168864169243%_
                                         _%__splice171837171838%_
                                         _%target168865169246%_
                                         _%tl168867169248%_)
                                  (letrec ((_%loop168868169251%_
                                            (lambda (_%hd168866169254%_
                                                     _%arg168872169256%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168866169254%_))
                                                  (let ((_%e168869169258%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168866169254%_))))
                                                    (let ((_%lp-tl168871169263%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168869169258%_)))
                                                          (_%lp-hd168870169261%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168869169258%_))))
                                                      (_%loop168868169251%_
                                                       _%lp-tl168871169263%_
                                                       (cons _%lp-hd168870169261%_
                                                             _%arg168872169256%_))))
                                                  (let ((_%arg168873169266%_
                                                         (reverse _%arg168872169256%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl168864169243%_))
                                                        (let ((_%e168874169268%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl168864169243%_))))
                  (let ((_%tl168876169273%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168874169268%_)))
                        (_%hd168875169271%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168874169268%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168875169271%_))
                        (let ((_%e168877169276%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168875169271%_))))
                          (let ((_%tl168879169281%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168877169276%_)))
                                (_%hd168878169279%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168877169276%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd168878169279%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd168878169279%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168879169281%_))
                                        (let ((_%e168880169284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168879169281%_))))
                                          (let ((_%tl168882169289%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168880169284%_)))
                                                (_%hd168881169287%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168880169284%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd168881169287%_))
                                                (let ((_%e168883169292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd168881169287%_))))
                                                  (let ((_%tl168885169297%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168883169292%_)))
                                                        (_%hd168884169295%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168883169292%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd168884169295%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd168884169295%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl168885169297%_))
                        (let ((_%e168886169300%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168885169297%_))))
                          (let ((_%tl168888169305%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168886169300%_)))
                                (_%hd168887169303%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168886169300%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl168888169305%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl168882169289%_))
                                    (let ((_%__splice171839171840%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl168882169289%_
                                              '0))))
                                      (let ((_%tl168891169310%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171839171840%_
                                                '1)))
                                            (_%target168889169308%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171839171840%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168891169310%_))
                                            (letrec ((_%loop168892169313%_
                                                      (lambda (_%hd168890169316%_
                                                               _%xarg168896169318%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd168890169316%_))
                                                            (let ((_%e168893169320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd168890169316%_))))
                      (let ((_%lp-tl168895169325%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168893169320%_)))
                            (_%lp-hd168894169323%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168893169320%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd168894169323%_))
                            (let ((_%e168898169328%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd168894169323%_))))
                              (let ((_%tl168900169333%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168898169328%_)))
                                    (_%hd168899169331%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168898169328%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd168899169331%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd168899169331%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl168900169333%_))
                                            (let ((_%e168901169336%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl168900169333%_))))
                                              (let ((_%tl168903169341%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168901169336%_)))
                                                    (_%hd168902169339%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168901169336%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl168903169341%_))
                                                    (_%loop168892169313%_
                                                     _%lp-tl168895169325%_
                                                     (cons _%hd168902169339%_
                                                           _%xarg168896169318%_))
                                                    (_%__match171872171873%_
                                                     _%e168862169238%_
                                                     _%hd168863169241%_
                                                     _%tl168864169243%_
                                                     _%__splice171837171838%_
                                                     _%target168865169246%_
                                                     _%tl168867169248%_))))
                                            (_%__match171872171873%_
                                             _%e168862169238%_
                                             _%hd168863169241%_
                                             _%tl168864169243%_
                                             _%__splice171837171838%_
                                             _%target168865169246%_
                                             _%tl168867169248%_))
                                        (_%__match171872171873%_
                                         _%e168862169238%_
                                         _%hd168863169241%_
                                         _%tl168864169243%_
                                         _%__splice171837171838%_
                                         _%target168865169246%_
                                         _%tl168867169248%_))
                                    (_%__match171872171873%_
                                     _%e168862169238%_
                                     _%hd168863169241%_
                                     _%tl168864169243%_
                                     _%__splice171837171838%_
                                     _%target168865169246%_
                                     _%tl168867169248%_))))
                            (_%__match171872171873%_
                             _%e168862169238%_
                             _%hd168863169241%_
                             _%tl168864169243%_
                             _%__splice171837171838%_
                             _%target168865169246%_
                             _%tl168867169248%_))))
                    (let ((_%xarg168897169344%_
                           (reverse _%xarg168896169318%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168876169273%_))
                          (_%__kont171835171836%_
                           _%xarg168897169344%_
                           _%hd168887169303%_
                           _%arg168873169266%_)
                          (_%__match171872171873%_
                           _%e168862169238%_
                           _%hd168863169241%_
                           _%tl168864169243%_
                           _%__splice171837171838%_
                           _%target168865169246%_
                           _%tl168867169248%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop168892169313%_
                                               _%target168889169308%_
                                               '()))
                                            (_%__match171872171873%_
                                             _%e168862169238%_
                                             _%hd168863169241%_
                                             _%tl168864169243%_
                                             _%__splice171837171838%_
                                             _%target168865169246%_
                                             _%tl168867169248%_))))
                                    (_%__match171872171873%_
                                     _%e168862169238%_
                                     _%hd168863169241%_
                                     _%tl168864169243%_
                                     _%__splice171837171838%_
                                     _%target168865169246%_
                                     _%tl168867169248%_))
                                (_%__match171872171873%_
                                 _%e168862169238%_
                                 _%hd168863169241%_
                                 _%tl168864169243%_
                                 _%__splice171837171838%_
                                 _%target168865169246%_
                                 _%tl168867169248%_))))
                        (_%__match171872171873%_
                         _%e168862169238%_
                         _%hd168863169241%_
                         _%tl168864169243%_
                         _%__splice171837171838%_
                         _%target168865169246%_
                         _%tl168867169248%_))
                    (_%__match171872171873%_
                     _%e168862169238%_
                     _%hd168863169241%_
                     _%tl168864169243%_
                     _%__splice171837171838%_
                     _%target168865169246%_
                     _%tl168867169248%_))
                (_%__match171872171873%_
                 _%e168862169238%_
                 _%hd168863169241%_
                 _%tl168864169243%_
                 _%__splice171837171838%_
                 _%target168865169246%_
                 _%tl168867169248%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match171872171873%_
                                                 _%e168862169238%_
                                                 _%hd168863169241%_
                                                 _%tl168864169243%_
                                                 _%__splice171837171838%_
                                                 _%target168865169246%_
                                                 _%tl168867169248%_))))
                                        (_%__match171872171873%_
                                         _%e168862169238%_
                                         _%hd168863169241%_
                                         _%tl168864169243%_
                                         _%__splice171837171838%_
                                         _%target168865169246%_
                                         _%tl168867169248%_))
                                    (_%__match171872171873%_
                                     _%e168862169238%_
                                     _%hd168863169241%_
                                     _%tl168864169243%_
                                     _%__splice171837171838%_
                                     _%target168865169246%_
                                     _%tl168867169248%_))
                                (_%__match171872171873%_
                                 _%e168862169238%_
                                 _%hd168863169241%_
                                 _%tl168864169243%_
                                 _%__splice171837171838%_
                                 _%target168865169246%_
                                 _%tl168867169248%_))))
                        (_%__match171872171873%_
                         _%e168862169238%_
                         _%hd168863169241%_
                         _%tl168864169243%_
                         _%__splice171837171838%_
                         _%target168865169246%_
                         _%tl168867169248%_))))
                (_%__match171872171873%_
                 _%e168862169238%_
                 _%hd168863169241%_
                 _%tl168864169243%_
                 _%__splice171837171838%_
                 _%target168865169246%_
                 _%tl168867169248%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop168868169251%_
                                     _%target168865169246%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx171833171834%_))
                              (let ((_%e168862169238%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx171833171834%_))))
                                (let ((_%tl168864169243%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168862169238%_)))
                                      (_%hd168863169241%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168862169238%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd168863169241%_))
                                      (let ((_%__splice171837171838%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd168863169241%_
                                                '0))))
                                        (let ((_%tl168867169248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171837171838%_
                                                  '1)))
                                              (_%target168865169246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171837171838%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl168867169248%_))
                                              (_%__match171860171861%_
                                               _%e168862169238%_
                                               _%hd168863169241%_
                                               _%tl168864169243%_
                                               _%__splice171837171838%_
                                               _%target168865169246%_
                                               _%tl168867169248%_)
                                              (_%__match171872171873%_
                                               _%e168862169238%_
                                               _%hd168863169241%_
                                               _%tl168864169243%_
                                               _%__splice171837171838%_
                                               _%target168865169246%_
                                               _%tl168867169248%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl168864169243%_))
                                          (let ((_%e168950168994%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl168864169243%_))))
                                            (let ((_%tl168952168999%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168950168994%_)))
                                                  (_%hd168951168997%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168950168994%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168951168997%_))
                                                  (let ((_%e168953169002%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168951168997%_))))
                                                    (let ((_%tl168955169007%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168953169002%_)))
                                                          (_%hd168954169005%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168953169002%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd168954169005%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd168954169005%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168955169007%_))
                          (let ((_%e168956169010%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168955169007%_))))
                            (let ((_%tl168958169015%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168956169010%_)))
                                  (_%hd168957169013%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168956169010%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd168957169013%_))
                                  (let ((_%e168959169018%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd168957169013%_))))
                                    (let ((_%tl168961169023%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168959169018%_)))
                                          (_%hd168960169021%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168959169018%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd168960169021%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd168960169021%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl168961169023%_))
                                                  (let ((_%e168962169026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl168961169023%_))))
                                                    (let ((_%tl168964169031%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168962169026%_)))
                                                          (_%hd168963169029%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168962169026%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl168964169031%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl168958169015%_))
                      (let ((_%e168965169034%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl168958169015%_))))
                        (let ((_%tl168967169039%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168965169034%_)))
                              (_%hd168966169037%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168965169034%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd168966169037%_))
                              (let ((_%e168968169042%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd168966169037%_))))
                                (let ((_%tl168970169047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168968169042%_)))
                                      (_%hd168969169045%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168968169042%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd168969169045%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd168969169045%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl168970169047%_))
                                              (let ((_%e168971169050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl168970169047%_))))
                                                (let ((_%tl168973169055%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168971169050%_)))
                                                      (_%hd168972169053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168971169050%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl168973169055%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl168967169039%_))
                                                          (let ((_%e168974169058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl168967169039%_))))
                    (let ((_%tl168976169063%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168974169058%_)))
                          (_%hd168975169061%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168974169058%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168976169063%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl168952168999%_))
                              (_%__kont171845171846%_
                               _%hd168972169053%_
                               _%hd168963169029%_
                               _%hd168863169241%_)
                              (let ()
                                (declare (not safe))
                                (_%g168857168981%_)))
                          (let () (declare (not safe)) (_%g168857168981%_)))))
                  (let () (declare (not safe)) (_%g168857168981%_)))
              (let () (declare (not safe)) (_%g168857168981%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g168857168981%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168857168981%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168857168981%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168857168981%_)))))
                      (let () (declare (not safe)) (_%g168857168981%_)))
                  (let () (declare (not safe)) (_%g168857168981%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168857168981%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168857168981%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168857168981%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168857168981%_)))))
                          (let () (declare (not safe)) (_%g168857168981%_)))
                      (let () (declare (not safe)) (_%g168857168981%_)))
                  (let () (declare (not safe)) (_%g168857168981%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168857168981%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168857168981%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g168857168981%_))))))))
                 (_%generate1168704%_
                  (lambda (_%args168835%_
                           _%arglen168836%_
                           _%hd168837%_
                           _%body168838%_)
                    (let* ((_%len168840%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd168837%_)))
                           (_%condition168845%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd168837%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen168836%_
                                                (cons _%len168840%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen168836%_ (cons _%len168840%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len168840%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen168836%_
                                                    (cons _%len168840%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen168836%_ (cons _%len168840%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch168847%_
                            (if (_%dispatch-case?168702%_
                                 _%hd168837%_
                                 _%body168838%_)
                                (_%dispatch-case-e168703%_
                                 _%hd168837%_
                                 _%body168838%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self168699%_
                                 _%hd168837%_
                                 _%body168838%_))))
                      (cons _%condition168845%_
                            (cons (cons 'apply
                                        (cons _%dispatch168847%_
                                              (cons _%args168835%_ '())))
                                  '()))))))
          (let* ((_%g168706168734%_
                  (lambda (_%g168707168731%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g168707168731%_))))
                 (_%g168705168832%_
                  (lambda (_%g168707168737%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g168707168737%_))
                        (let ((_%e168710168739%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g168707168737%_))))
                          (let ((_%hd168711168742%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168710168739%_)))
                                (_%tl168712168744%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168710168739%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl168712168744%_))
                                (let ((_g173002_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl168712168744%_
                                          '0))))
                                  (begin
                                    (let ((_g173003_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g173002_)
                                                 (##values-length _g173002_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g173003_ 2)))
                                          (error "Context expects 2 values"
                                                 _g173003_)))
                                    (let ((_%target168713168747%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173002_ 0)))
                                          (_%tl168715168749%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173002_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl168715168749%_))
                                          (letrec ((_%loop168716168752%_
                                                    (lambda (_%hd168714168755%_
                                                             _%body168720168757%_
                                                             _%hd168721168758%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd168714168755%_))
                                                          (let ((_%e168717168760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd168714168755%_))))
                    (let ((_%lp-hd168718168763%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168717168760%_)))
                          (_%lp-tl168719168765%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168717168760%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd168718168763%_))
                          (let ((_%e168724168768%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd168718168763%_))))
                            (let ((_%hd168725168771%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168724168768%_)))
                                  (_%tl168726168773%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168724168768%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl168726168773%_))
                                  (let ((_%e168727168776%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl168726168773%_))))
                                    (let ((_%hd168728168779%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168727168776%_)))
                                          (_%tl168729168781%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168727168776%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl168729168781%_))
                                          (_%loop168716168752%_
                                           _%lp-tl168719168765%_
                                           (cons _%hd168728168779%_
                                                 _%body168720168757%_)
                                           (cons _%hd168725168771%_
                                                 _%hd168721168758%_))
                                          (_%g168706168734%_
                                           _%g168707168737%_))))
                                  (_%g168706168734%_ _%g168707168737%_))))
                          (_%g168706168734%_ _%g168707168737%_))))
                  (let ((_%body168722168784%_ (reverse _%body168720168757%_))
                        (_%hd168723168785%_ (reverse _%hd168721168758%_)))
                    ((lambda (_%g168708168787%_ _%g168709168788%_)
                       (let ((_%args168807%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen168808%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name168809%_
                              (let ((_%$e168804%_
                                     (let ((__tmp173004
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp173004 _%stx168700%_))))
                                (if _%$e168804%_
                                    _%$e168804%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args168807%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen168808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args168807%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args168807%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp173008
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name168809%_
                                                                (cons _%args168807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp173005
                                  (map (lambda (_%g168810168813%_
                                                _%g168811168815%_)
                                         (_%generate1168704%_
                                          _%args168807%_
                                          _%arglen168808%_
                                          _%g168810168813%_
                                          _%g168811168815%_))
                                       (let ((__tmp173006
                                              (lambda (_%g168817168820%_
                                                       _%g168818168822%_)
                                                (cons _%g168817168820%_
                                                      _%g168818168822%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp173006
                                          '()
                                          _%g168709168788%_))
                                       (let ((__tmp173007
                                              (lambda (_%g168824168827%_
                                                       _%g168825168829%_)
                                                (cons _%g168824168827%_
                                                      _%g168825168829%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp173007
                                          '()
                                          _%g168708168787%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp173008 __tmp173005)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body168722168784%_
                     _%hd168723168785%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop168716168752%_
                                             _%target168713168747%_
                                             '()
                                             '()))
                                          (_%g168706168734%_
                                           _%g168707168737%_)))))
                                (_%g168706168734%_ _%g168707168737%_))))
                        (_%g168706168734%_ _%g168707168737%_)))))
            (_%g168705168832%_ _%stx168700%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self167936%_ _%stx167937%_ _%compiled-body?167938%_)
        (letrec ((_%generate-simple167940%_
                  (lambda (_%hd168684%_ _%body168685%_)
                    (_%coalesce-boolean167941%_
                     (_%simplify-let167942%_
                      (gxc#generate-runtime-simple-let
                       _%self167936%_
                       'let
                       _%hd168684%_
                       _%body168685%_
                       _%compiled-body?167938%_)))))
                 (_%coalesce-boolean167941%_
                  (lambda (_%code168545%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code168546168572%_ _%code168545%_)
                               (_%else168548168580%_
                                (lambda () _%code168545%_))
                               (_%K168550168617%_
                                (lambda (_%expr2168583%_
                                         _%expr1168584%_
                                         _%id168585%_)
                                  (let* ((_%expr2168586168594%_
                                          _%expr2168583%_)
                                         (_%else168588168602%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1168584%_
                                                        (cons _%expr2168583%_
                                                              '())))))
                                         (_%K168590168607%_
                                          (lambda (_%exprs168605%_)
                                            (cons 'or
                                                  (cons _%expr1168584%_
                                                        _%exprs168605%_)))))
                                    (if (pair? _%expr2168586168594%_)
                                        (let ((_%hd168591168610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2168586168594%_)))
                                              (_%tl168592168612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2168586168594%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd168591168610%_ 'or))
                                              (let ((_%exprs168615%_
                                                     _%tl168592168612%_))
                                                (_%K168590168607%_
                                                 _%exprs168615%_))
                                              (_%else168588168602%_)))
                                        (_%else168588168602%_))))))
                          (if (pair? _%code168546168572%_)
                              (let ((_%hd168551168620%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code168546168572%_)))
                                    (_%tl168552168622%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code168546168572%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd168551168620%_ 'let))
                                    (if (pair? _%tl168552168622%_)
                                        (let ((_%hd168553168625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl168552168622%_)))
                                              (_%tl168554168627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl168552168622%_))))
                                          (if (pair? _%hd168553168625%_)
                                              (let ((_%hd168565168630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd168553168625%_)))
                                                    (_%tl168566168632%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd168553168625%_))))
                                                (if (pair? _%hd168565168630%_)
                                                    (let ((_%hd168567168635%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd168565168630%_)))
                                                          (_%tl168568168637%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd168565168630%_))))
                                                      (let ((_%id168640%_
                                                             _%hd168567168635%_))
                                                        (if (pair? _%tl168568168637%_)
                                                            (let ((_%hd168569168642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl168568168637%_)))
                          (_%tl168570168644%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl168568168637%_))))
                      (let ((_%expr1168647%_ _%hd168569168642%_))
                        (if (null? _%tl168570168644%_)
                            (if (null? _%tl168566168632%_)
                                (if (pair? _%tl168554168627%_)
                                    (let ((_%hd168555168649%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl168554168627%_)))
                                          (_%tl168556168651%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl168554168627%_))))
                                      (if (pair? _%hd168555168649%_)
                                          (let ((_%hd168557168654%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd168555168649%_)))
                                                (_%tl168558168656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd168555168649%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd168557168654%_
                                                         'if))
                                                (if (pair? _%tl168558168656%_)
                                                    (let ((_%hd168559168659%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl168558168656%_)))
                                                          (_%tl168560168661%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl168558168656%_))))
                                                      (if ((lambda (_%g168663168665%_)
                                                             (eq? _%g168663168665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id168640%_))
                   _%hd168559168659%_)
                  (if (pair? _%tl168560168661%_)
                      (let ((_%hd168561168668%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl168560168661%_)))
                            (_%tl168562168670%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl168560168661%_))))
                        (if ((lambda (_%g168672168674%_)
                               (eq? _%g168672168674%_ _%id168640%_))
                             _%hd168561168668%_)
                            (if (pair? _%tl168562168670%_)
                                (let ((_%hd168563168677%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl168562168670%_)))
                                      (_%tl168564168679%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl168562168670%_))))
                                  (let ((_%expr2168682%_ _%hd168563168677%_))
                                    (if (null? _%tl168564168679%_)
                                        (if (null? _%tl168556168651%_)
                                            (_%K168550168617%_
                                             _%expr2168682%_
                                             _%expr1168647%_
                                             _%id168640%_)
                                            (_%else168548168580%_))
                                        (_%else168548168580%_))))
                                (_%else168548168580%_))
                            (_%else168548168580%_)))
                      (_%else168548168580%_))
                  (_%else168548168580%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else168548168580%_))
                                                (_%else168548168580%_)))
                                          (_%else168548168580%_)))
                                    (_%else168548168580%_))
                                (_%else168548168580%_))
                            (_%else168548168580%_))))
                    (_%else168548168580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else168548168580%_)))
                                              (_%else168548168580%_)))
                                        (_%else168548168580%_))
                                    (_%else168548168580%_)))
                              (_%else168548168580%_)))
                        _%code168545%_)))
                 (_%simplify-let167942%_
                  (lambda (_%code168244%_)
                    (let* ((_%code168245168317%_ _%code168244%_)
                           (_%else168250168325%_ (lambda () _%code168244%_)))
                      (let ((_%K168309168525%_
                             (lambda (_%expr168523%_) _%expr168523%_))
                            (_%K168292168471%_
                             (lambda (_%body168467%_
                                      _%expr168468%_
                                      _%id168469%_)
                               (cons 'let
                                     (cons (cons (cons _%id168469%_
                                                       (cons _%expr168468%_
                                                             '()))
                                                 '())
                                           _%body168467%_))))
                            (_%K168269168395%_
                             (lambda (_%body168389%_
                                      _%expr2168390%_
                                      _%id2168391%_
                                      _%expr1168392%_
                                      _%id1168393%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1168393%_
                                                       (cons _%expr1168392%_
                                                             '()))
                                                 (cons (cons _%id2168391%_
                                                             (cons _%expr2168390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body168389%_))))
                            (_%K168252168334%_
                             (lambda (_%body168329%_
                                      _%bind168330%_
                                      _%expr1168331%_
                                      _%id1168332%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1168332%_
                                                       (cons _%expr1168331%_
                                                             '()))
                                                 _%bind168330%_)
                                           _%body168329%_)))))
                        (if (pair? _%code168245168317%_)
                            (let ((_%tl168311168530%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code168245168317%_)))
                                  (_%hd168310168528%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code168245168317%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd168310168528%_ 'let))
                                  (if (pair? _%tl168311168530%_)
                                      (let ((_%tl168313168535%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl168311168530%_)))
                                            (_%hd168312168533%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl168311168530%_))))
                                        (if (null? _%hd168312168533%_)
                                            (if (pair? _%tl168313168535%_)
                                                (let ((_%tl168315168540%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl168313168535%_)))
                                                      (_%hd168314168538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl168313168535%_))))
                                                  (if (null? _%tl168315168540%_)
                                                      (let ((_%expr168543%_
                                                             _%hd168314168538%_))
                                                        (_%K168309168525%_
                                                         _%expr168543%_))
                                                      (_%else168250168325%_)))
                                                (_%else168250168325%_))
                                            (if (pair? _%hd168312168533%_)
                                                (let ((_%tl168304168486%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd168312168533%_)))
                                                      (_%hd168303168484%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd168312168533%_))))
                                                  (if (pair? _%hd168303168484%_)
                                                      (let ((_%tl168306168491%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd168303168484%_)))
                    (_%hd168305168489%_
                     (let () (declare (not safe)) (##car _%hd168303168484%_))))
                (if (pair? _%tl168306168491%_)
                    (let ((_%tl168308168498%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl168306168491%_)))
                          (_%hd168307168496%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl168306168491%_))))
                      (if (null? _%tl168308168498%_)
                          (if (null? _%tl168304168486%_)
                              (if (pair? _%tl168313168535%_)
                                  (let ((_%tl168298168505%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl168313168535%_)))
                                        (_%hd168297168503%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl168313168535%_))))
                                    (if (pair? _%hd168297168503%_)
                                        (let ((_%tl168300168510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd168297168503%_)))
                                              (_%hd168299168508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd168297168503%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd168299168508%_
                                                       'let))
                                              (if (pair? _%tl168300168510%_)
                                                  (let ((_%tl168302168515%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl168300168510%_)))
                                                        (_%hd168301168513%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl168300168510%_))))
                                                    (if (null? _%hd168301168513%_)
                                                        (if (null? _%tl168298168505%_)
                                                            (let ((_%id168494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd168305168489%_)
                          (_%expr168501%_ _%hd168307168496%_)
                          (_%body168518%_ _%tl168302168515%_))
                      (_%K168292168471%_
                       _%body168518%_
                       _%expr168501%_
                       _%id168494%_))
                    (_%else168250168325%_))
                (if (pair? _%hd168301168513%_)
                    (let ((_%tl168281168444%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd168301168513%_)))
                          (_%hd168280168442%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd168301168513%_))))
                      (if (pair? _%hd168280168442%_)
                          (let ((_%tl168283168449%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd168280168442%_)))
                                (_%hd168282168447%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd168280168442%_))))
                            (if (pair? _%tl168283168449%_)
                                (let ((_%tl168285168456%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl168283168449%_)))
                                      (_%hd168284168454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl168283168449%_))))
                                  (if (null? _%tl168285168456%_)
                                      (if (null? _%tl168281168444%_)
                                          (if (null? _%tl168298168505%_)
                                              (let ((_%id1168418%_
                                                     _%hd168305168489%_)
                                                    (_%expr1168425%_
                                                     _%hd168307168496%_)
                                                    (_%id2168452%_
                                                     _%hd168282168447%_)
                                                    (_%expr2168459%_
                                                     _%hd168284168454%_)
                                                    (_%body168461%_
                                                     _%tl168302168515%_))
                                                (_%K168269168395%_
                                                 _%body168461%_
                                                 _%expr2168459%_
                                                 _%id2168452%_
                                                 _%expr1168425%_
                                                 _%id1168418%_))
                                              (_%else168250168325%_))
                                          (_%else168250168325%_))
                                      (_%else168250168325%_)))
                                (_%else168250168325%_)))
                          (_%else168250168325%_)))
                    (_%else168250168325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else168250168325%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd168299168508%_
                                                           'let*))
                                                  (if (pair? _%tl168300168510%_)
                                                      (let ((_%tl168262168378%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl168300168510%_)))
                    (_%hd168261168376%_
                     (let () (declare (not safe)) (##car _%tl168300168510%_))))
                (if (null? _%tl168298168505%_)
                    (let ((_%id1168357%_ _%hd168305168489%_)
                          (_%expr1168364%_ _%hd168307168496%_)
                          (_%bind168381%_ _%hd168261168376%_)
                          (_%body168383%_ _%tl168262168378%_))
                      (_%K168252168334%_
                       _%body168383%_
                       _%bind168381%_
                       _%expr1168364%_
                       _%id1168357%_))
                    (_%else168250168325%_)))
              (_%else168250168325%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else168250168325%_))))
                                        (_%else168250168325%_)))
                                  (_%else168250168325%_))
                              (_%else168250168325%_))
                          (_%else168250168325%_)))
                    (_%else168250168325%_)))
              (_%else168250168325%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else168250168325%_))))
                                      (_%else168250168325%_))
                                  (_%else168250168325%_)))
                            (_%else168250168325%_))))))
                 (_%generate-values167943%_
                  (lambda (_%hd168057%_ _%body168058%_)
                    (let _%lp168060%_ ((_%rest168062%_ _%hd168057%_)
                                       (_%bind168063%_ '())
                                       (_%check168064%_ '())
                                       (_%post168065%_ '()))
                      (let* ((_%__stx172162172163%_ _%rest168062%_)
                             (_%g168068168079%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172162172163%_)))))
                        (let ((_%__kont172164172165%_
                               (lambda (_%g168070168106%_ _%g168071168107%_)
                                 (let* ((_%__stx172118172119%_
                                         _%g168071168107%_)
                                        (_%g168122168147%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172118172119%_)))))
                                   (let ((_%__kont172120172121%_
                                          (lambda (_%g168124168220%_
                                                   _%g168125168221%_)
                                            (let ((_%eid168235%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g168125168221%_)))
                                                  (_%expr168236%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self167936%_
                                                      _%g168124168220%_))))
                                              (_%lp168060%_
                                               _%g168070168106%_
                                               (cons (cons _%eid168235%_
                                                           (cons _%expr168236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind168063%_)
                                               _%check168064%_
                                               _%post168065%_))))
                                         (_%__kont172122172123%_
                                          (lambda (_%g168135168168%_
                                                   _%g168136168169%_)
                                            (let* ((_%vals168182%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values168184%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals168182%_
                                                     _%g168136168169%_
                                                     _%g168135168168%_))
                                                   (_%refs168186%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals168182%_
                                                     _%g168136168169%_))
                                                   (_%expr168188%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self167936%_
                                                       _%g168135168168%_))))
                                              (_%lp168060%_
                                               _%g168070168106%_
                                               (cons (cons _%vals168182%_
                                                           (cons _%expr168188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind168063%_)
                                               (cons _%check-values168184%_
                                                     _%check168064%_)
                                               (cons _%refs168186%_
                                                     _%post168065%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172118172119%_))
                                         (let ((_%e168126168196%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172118172119%_))))
                                           (let ((_%tl168128168201%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168126168196%_)))
                                                 (_%hd168127168199%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168126168196%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd168127168199%_))
                                                 (let ((_%e168129168204%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd168127168199%_))))
                                                   (let ((_%tl168131168209%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168129168204%_)))
                                                         (_%hd168130168207%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168129168204%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl168131168209%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl168128168201%_))
                     (let ((_%e168132168212%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl168128168201%_))))
                       (let ((_%tl168134168217%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168132168212%_)))
                             (_%hd168133168215%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168132168212%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl168134168217%_))
                             (_%__kont172120172121%_
                              _%hd168133168215%_
                              _%hd168130168207%_)
                             (let ()
                               (declare (not safe))
                               (_%g168122168147%_)))))
                     (let () (declare (not safe)) (_%g168122168147%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl168128168201%_))
                     (let ((_%e168140168160%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl168128168201%_))))
                       (let ((_%tl168142168165%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168140168160%_)))
                             (_%hd168141168163%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168140168160%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl168142168165%_))
                             (_%__kont172122172123%_
                              _%hd168141168163%_
                              _%hd168127168199%_)
                             (let ()
                               (declare (not safe))
                               (_%g168122168147%_)))))
                     (let () (declare (not safe)) (_%g168122168147%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl168128168201%_))
                                                     (let ((_%e168140168160%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl168128168201%_))))
                                                       (let ((_%tl168142168165%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e168140168160%_)))
                     (_%hd168141168163%_
                      (let () (declare (not safe)) (##car _%e168140168160%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl168142168165%_))
                     (_%__kont172122172123%_
                      _%hd168141168163%_
                      _%hd168127168199%_)
                     (let () (declare (not safe)) (_%g168122168147%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168122168147%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g168122168147%_)))))))
                              (_%__kont172166172167%_
                               (lambda ()
                                 (let* ((_%body168086%_
                                         (if _%compiled-body?167938%_
                                             _%body168058%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self167936%_
                                                _%body168058%_))))
                                        (_%body168088%_
                                         (_%generate-values-post167944%_
                                          _%post168065%_
                                          _%body168086%_))
                                        (_%body168090%_
                                         (_%generate-values-check167945%_
                                          _%check168064%_
                                          _%body168088%_)))
                                   (cons 'let
                                         (cons (reverse _%bind168063%_)
                                               (cons _%body168090%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx172162172163%_))
                              (let ((_%e168072168098%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx172162172163%_))))
                                (let ((_%tl168074168103%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168072168098%_)))
                                      (_%hd168073168101%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168072168098%_))))
                                  (_%__kont172164172165%_
                                   _%tl168074168103%_
                                   _%hd168073168101%_)))
                              (_%__kont172166172167%_)))))))
                 (_%generate-values-post167944%_
                  (lambda (_%post168016%_ _%body168017%_)
                    (let _%lp168019%_ ((_%rest168021%_ _%post168016%_)
                                       (_%body168022%_ _%body168017%_))
                      (let* ((_%rest168023168031%_ _%rest168021%_)
                             (_%else168025168039%_ (lambda () _%body168022%_))
                             (_%K168027168045%_
                              (lambda (_%rest168042%_ _%bind168043%_)
                                (_%lp168019%_
                                 _%rest168042%_
                                 (cons 'let
                                       (cons _%bind168043%_
                                             (cons _%body168022%_ '())))))))
                        (if (pair? _%rest168023168031%_)
                            (let ((_%hd168028168048%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest168023168031%_)))
                                  (_%tl168029168050%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest168023168031%_))))
                              (let* ((_%bind168053%_ _%hd168028168048%_)
                                     (_%rest168055%_ _%tl168029168050%_))
                                (_%K168027168045%_
                                 _%rest168055%_
                                 _%bind168053%_)))
                            (_%else168025168039%_))))))
                 (_%generate-values-check167945%_
                  (lambda (_%check168013%_ _%body168014%_)
                    (cons 'begin
                          (let ((__tmp173010 (cons _%body168014%_ '()))
                                (__tmp173009 (reverse _%check168013%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp173010 __tmp173009))))))
          (let* ((_%g167947167964%_
                  (lambda (_%g167948167961%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g167948167961%_))))
                 (_%g167946168010%_
                  (lambda (_%g167948167967%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g167948167967%_))
                        (let ((_%e167951167969%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g167948167967%_))))
                          (let ((_%hd167952167972%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167951167969%_)))
                                (_%tl167953167974%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167951167969%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167953167974%_))
                                (let ((_%e167954167977%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167953167974%_))))
                                  (let ((_%hd167955167980%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167954167977%_)))
                                        (_%tl167956167982%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167954167977%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167956167982%_))
                                        (let ((_%e167957167985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167956167982%_))))
                                          (let ((_%hd167958167988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167957167985%_)))
                                                (_%tl167959167990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167957167985%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167959167990%_))
                                                ((lambda (_%g167949167993%_
                                                          _%g167950167994%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g167950167994%_)
                                                       (_%generate-simple167940%_
                                                        _%g167950167994%_
                                                        _%g167949167993%_)
                                                       (_%generate-values167943%_
                                                        _%g167950167994%_
                                                        _%g167949167993%_)))
                                                 _%hd167958167988%_
                                                 _%hd167955167980%_)
                                                (_%g167947167964%_
                                                 _%g167948167967%_))))
                                        (_%g167947167964%_
                                         _%g167948167967%_))))
                                (_%g167947167964%_ _%g167948167967%_))))
                        (_%g167947167964%_ _%g167948167967%_)))))
            (_%g167946168010%_ _%stx167937%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self168690%_ _%stx168691%_)
        (let ((_%compiled-body?168693%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self168690%_
           _%stx168691%_
           _%compiled-body?168693%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g173011_
        (let ((_g173012_ (let () (declare (not safe)) (##length _g173011_))))
          (cond ((let () (declare (not safe)) (##fx= _g173012_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g173011_))
                ((let () (declare (not safe)) (##fx= _g173012_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g173011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g173011_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals167830%_ _%hd167831%_)
        (let _%lp167833%_ ((_%rest167835%_ _%hd167831%_)
                           (_%k167836%_ '0)
                           (_%r167837%_ '()))
          (let* ((_%__stx172176172177%_ _%rest167835%_)
                 (_%g167842167859%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx172176172177%_)))))
            (let ((_%__kont172178172179%_
                   (lambda (_%g167844167922%_)
                     (_%lp167833%_
                      _%g167844167922%_
                      (let () (declare (not safe)) (##fx+ _%k167836%_ '1))
                      _%r167837%_)))
                  (_%__kont172180172181%_
                   (lambda (_%g167849167895%_ _%g167850167896%_)
                     (_%lp167833%_
                      _%g167849167895%_
                      (let () (declare (not safe)) (##fx+ _%k167836%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g167850167896%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals167830%_
                                         _%k167836%_
                                         _%g167849167895%_)
                                        '()))
                            _%r167837%_))))
                  (_%__kont172182172183%_
                   (lambda (_%g167854167871%_)
                     (let ((__tmp173013
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g167854167871%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals167830%_
                                               _%k167836%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp173013 _%r167837%_))))
                  (_%__kont172184172185%_ (lambda () (reverse _%r167837%_))))
              (let ((_%g167840167882%_
                     (lambda ()
                       (let ((_%g167854167871%_ _%__stx172176172177%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g167854167871%_))
                             (_%__kont172182172183%_ _%g167854167871%_)
                             (_%__kont172184172185%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx172176172177%_))
                    (let ((_%e167845167911%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx172176172177%_))))
                      (let ((_%tl167847167916%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167845167911%_)))
                            (_%hd167846167914%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167845167911%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd167846167914%_))
                            (let ((_%e167848167919%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd167846167914%_))))
                              (if (equal? _%e167848167919%_ '#f)
                                  (_%__kont172178172179%_ _%tl167847167916%_)
                                  (_%__kont172180172181%_
                                   _%tl167847167916%_
                                   _%hd167846167914%_)))
                            (_%__kont172180172181%_
                             _%tl167847167916%_
                             _%hd167846167914%_))))
                    (let () (declare (not safe)) (_%g167840167882%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self167509%_ _%stx167510%_ _%compiled-body?167511%_)
        (letrec ((_%generate-simple167513%_
                  (lambda (_%hd167815%_ _%body167816%_)
                    (gxc#generate-runtime-simple-let
                     _%self167509%_
                     'letrec
                     _%hd167815%_
                     _%body167816%_
                     _%compiled-body?167511%_)))
                 (_%generate-values167514%_
                  (lambda (_%hd167594%_ _%body167595%_)
                    (let _%lp167597%_ ((_%rest167599%_ _%hd167594%_)
                                       (_%bind167600%_ '())
                                       (_%check167601%_ '())
                                       (_%post167602%_ '()))
                      (let* ((_%__stx172250172251%_ _%rest167599%_)
                             (_%g167605167616%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172250172251%_)))))
                        (let ((_%__kont172252172253%_
                               (lambda (_%g167607167643%_ _%g167608167644%_)
                                 (let* ((_%__stx172206172207%_
                                         _%g167608167644%_)
                                        (_%g167659167684%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172206172207%_)))))
                                   (let ((_%__kont172208172209%_
                                          (lambda (_%g167661167791%_
                                                   _%g167662167792%_)
                                            (let ((_%eid167806%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g167662167792%_)))
                                                  (_%expr167807%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self167509%_
                                                      _%g167661167791%_))))
                                              (_%lp167597%_
                                               _%g167607167643%_
                                               (cons (cons _%eid167806%_
                                                           (cons _%expr167807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind167600%_)
                                               _%check167601%_
                                               _%post167602%_))))
                                         (_%__kont172210172211%_
                                          (lambda (_%g167672167705%_
                                                   _%g167673167706%_)
                                            (let* ((_%vals167719%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values167721%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals167719%_
                                                     _%g167673167706%_
                                                     _%g167672167705%_))
                                                   (_%refs167723%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals167719%_
                                                     _%g167673167706%_))
                                                   (_%expr167725%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self167509%_
                                                       _%g167672167705%_))))
                                              (_%lp167597%_
                                               _%g167607167643%_
                                               (let ((__tmp173015
                                                      (cons (cons _%vals167719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr167725%_ '()))
                    _%bind167600%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp173014
                                                      (map (lambda (_%e167727167729%_)
                                                             (let* ((_%e167727167731167740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e167727167729%_)
                            (_%E167733167744%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e167727167731167740%_
                                        '([eid _])))
                               '#!void))
                            (_%K167734167749%_
                             (lambda (_%eid167747%_)
                               (cons _%eid167747%_ (cons '#!void '())))))
                       (if (pair? _%e167727167731167740%_)
                           (let ((_%hd167735167752%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e167727167731167740%_)))
                                 (_%tl167736167754%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e167727167731167740%_))))
                             (let ((_%eid167757%_ _%hd167735167752%_))
                               (if (pair? _%tl167736167754%_)
                                   (let ((_%tl167738167759%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl167736167754%_))))
                                     (if (null? _%tl167738167759%_)
                                         (_%K167734167749%_ _%eid167757%_)
                                         (_%E167733167744%_)))
                                   (_%E167733167744%_))))
                           (_%E167733167744%_))))
                   _%refs167723%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp173015
                                                  __tmp173014))
                                               (cons _%check-values167721%_
                                                     _%check167601%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs167723%_
                                                  _%post167602%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172206172207%_))
                                         (let ((_%e167663167767%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172206172207%_))))
                                           (let ((_%tl167665167772%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e167663167767%_)))
                                                 (_%hd167664167770%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e167663167767%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd167664167770%_))
                                                 (let ((_%e167666167775%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd167664167770%_))))
                                                   (let ((_%tl167668167780%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e167666167775%_)))
                                                         (_%hd167667167778%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e167666167775%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl167668167780%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl167665167772%_))
                     (let ((_%e167669167783%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167665167772%_))))
                       (let ((_%tl167671167788%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167669167783%_)))
                             (_%hd167670167786%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167669167783%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167671167788%_))
                             (_%__kont172208172209%_
                              _%hd167670167786%_
                              _%hd167667167778%_)
                             (let ()
                               (declare (not safe))
                               (_%g167659167684%_)))))
                     (let () (declare (not safe)) (_%g167659167684%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl167665167772%_))
                     (let ((_%e167677167697%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167665167772%_))))
                       (let ((_%tl167679167702%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167677167697%_)))
                             (_%hd167678167700%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167677167697%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167679167702%_))
                             (_%__kont172210172211%_
                              _%hd167678167700%_
                              _%hd167664167770%_)
                             (let ()
                               (declare (not safe))
                               (_%g167659167684%_)))))
                     (let () (declare (not safe)) (_%g167659167684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl167665167772%_))
                                                     (let ((_%e167677167697%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl167665167772%_))))
                                                       (let ((_%tl167679167702%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e167677167697%_)))
                     (_%hd167678167700%_
                      (let () (declare (not safe)) (##car _%e167677167697%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl167679167702%_))
                     (_%__kont172210172211%_
                      _%hd167678167700%_
                      _%hd167664167770%_)
                     (let () (declare (not safe)) (_%g167659167684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g167659167684%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g167659167684%_)))))))
                              (_%__kont172254172255%_
                               (lambda ()
                                 (let* ((_%body167623%_
                                         (if _%compiled-body?167511%_
                                             _%body167595%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self167509%_
                                                _%body167595%_))))
                                        (_%body167625%_
                                         (_%generate-values-post167516%_
                                          _%post167602%_
                                          _%body167623%_))
                                        (_%body167627%_
                                         (_%generate-values-check167515%_
                                          _%check167601%_
                                          _%body167625%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind167600%_)
                                               (cons _%body167627%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx172250172251%_))
                              (let ((_%e167609167635%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx172250172251%_))))
                                (let ((_%tl167611167640%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167609167635%_)))
                                      (_%hd167610167638%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167609167635%_))))
                                  (_%__kont172252172253%_
                                   _%tl167611167640%_
                                   _%hd167610167638%_)))
                              (_%__kont172254172255%_)))))))
                 (_%generate-values-check167515%_
                  (lambda (_%check167591%_ _%body167592%_)
                    (cons 'begin
                          (let ((__tmp173017 (cons _%body167592%_ '()))
                                (__tmp173016 (reverse _%check167591%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp173017 __tmp173016)))))
                 (_%generate-values-post167516%_
                  (lambda (_%post167584%_ _%body167585%_)
                    (cons 'begin
                          (let ((__tmp173021 (cons _%body167585%_ '()))
                                (__tmp173018
                                 (let ((__tmp173020
                                        (lambda (_%g167586167588%_)
                                          (cons 'set! _%g167586167588%_)))
                                       (__tmp173019 (reverse _%post167584%_)))
                                   (declare (not safe))
                                   (##map __tmp173020 __tmp173019))))
                            (declare (not safe))
                            (__foldr1 cons __tmp173021 __tmp173018))))))
          (let* ((_%g167518167535%_
                  (lambda (_%g167519167532%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g167519167532%_))))
                 (_%g167517167581%_
                  (lambda (_%g167519167538%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g167519167538%_))
                        (let ((_%e167522167540%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g167519167538%_))))
                          (let ((_%hd167523167543%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167522167540%_)))
                                (_%tl167524167545%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167522167540%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167524167545%_))
                                (let ((_%e167525167548%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167524167545%_))))
                                  (let ((_%hd167526167551%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167525167548%_)))
                                        (_%tl167527167553%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167525167548%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167527167553%_))
                                        (let ((_%e167528167556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167527167553%_))))
                                          (let ((_%hd167529167559%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167528167556%_)))
                                                (_%tl167530167561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167528167556%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167530167561%_))
                                                ((lambda (_%g167520167564%_
                                                          _%g167521167565%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g167521167565%_)
                                                       (_%generate-simple167513%_
                                                        _%g167521167565%_
                                                        _%g167520167564%_)
                                                       (_%generate-values167514%_
                                                        _%g167521167565%_
                                                        _%g167520167564%_)))
                                                 _%hd167529167559%_
                                                 _%hd167526167551%_)
                                                (_%g167518167535%_
                                                 _%g167519167538%_))))
                                        (_%g167518167535%_
                                         _%g167519167538%_))))
                                (_%g167518167535%_ _%g167519167538%_))))
                        (_%g167518167535%_ _%g167519167538%_)))))
            (_%g167517167581%_ _%stx167510%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self167821%_ _%stx167822%_)
        (let ((_%compiled-body?167824%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self167821%_
           _%stx167822%_
           _%compiled-body?167824%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g173022_
        (let ((_g173023_ (let () (declare (not safe)) (##length _g173022_))))
          (cond ((let () (declare (not safe)) (##fx= _g173023_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g173022_))
                ((let () (declare (not safe)) (##fx= _g173023_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g173022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g173022_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self167090%_ _%stx167091%_)
        (letrec ((_%generate-values167093%_
                  (lambda (_%hd167336%_ _%body167337%_)
                    (let _%lp167339%_ ((_%rest167341%_ _%hd167336%_)
                                       (_%bind167342%_ '()))
                      (let* ((_%rest167343167351%_ _%rest167341%_)
                             (_%else167345167362%_
                              (lambda ()
                                (let ((_%bind167359%_ (reverse _%bind167342%_))
                                      (_%body167360%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self167090%_
                                          _%body167337%_))))
                                  (cons 'letrec*
                                        (cons _%bind167359%_
                                              (cons _%body167360%_ '()))))))
                             (_%K167347167496%_
                              (lambda (_%rest167365%_ _%hd-bind167366%_)
                                (let* ((_%__stx172264172265%_
                                        _%hd-bind167366%_)
                                       (_%g167369167394%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx172264172265%_)))))
                                  (let ((_%__kont172266172267%_
                                         (lambda (_%g167371167475%_
                                                  _%g167372167476%_)
                                           (let ((_%eid167490%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g167372167476%_)))
                                                 (_%expr167491%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self167090%_
                                                     _%g167371167475%_))))
                                             (_%lp167339%_
                                              _%rest167365%_
                                              (cons (cons _%eid167490%_
                                                          (cons _%expr167491%_
                                                                '()))
                                                    _%bind167342%_)))))
                                        (_%__kont172268172269%_
                                         (lambda (_%g167382167415%_
                                                  _%g167383167416%_)
                                           (let* ((_%vals167435%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp167437%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values167439%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp167437%_
                                                    _%g167383167416%_
                                                    _%g167382167415%_))
                                                  (_%refs167441%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals167435%_
                                                    _%g167383167416%_))
                                                  (_%expr167443%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self167090%_
                                                      _%g167382167415%_))))
                                             (_%lp167339%_
                                              _%rest167365%_
                                              (let ((__tmp173024
                                                     (cons (cons _%vals167435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp167437%_
                                                       (cons _%expr167443%_
                                                             '()))
                                                 '())
                                           (cons _%check-values167439%_
                                                 (cons _%tmp167437%_ '()))))
                               '()))
                   _%bind167342%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp173024
                                                 _%refs167441%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx172264172265%_))
                                        (let ((_%e167373167451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx172264172265%_))))
                                          (let ((_%tl167375167456%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167373167451%_)))
                                                (_%hd167374167454%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167373167451%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd167374167454%_))
                                                (let ((_%e167376167459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd167374167454%_))))
                                                  (let ((_%tl167378167464%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167376167459%_)))
                                                        (_%hd167377167462%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167376167459%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167378167464%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl167375167456%_))
                                                            (let ((_%e167379167467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167375167456%_))))
                      (let ((_%tl167381167472%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167379167467%_)))
                            (_%hd167380167470%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167379167467%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167381167472%_))
                            (_%__kont172266172267%_
                             _%hd167380167470%_
                             _%hd167377167462%_)
                            (let ()
                              (declare (not safe))
                              (_%g167369167394%_)))))
                    (let () (declare (not safe)) (_%g167369167394%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl167375167456%_))
                    (let ((_%e167387167407%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167375167456%_))))
                      (let ((_%tl167389167412%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167387167407%_)))
                            (_%hd167388167410%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167387167407%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167389167412%_))
                            (_%__kont172268172269%_
                             _%hd167388167410%_
                             _%hd167374167454%_)
                            (let ()
                              (declare (not safe))
                              (_%g167369167394%_)))))
                    (let () (declare (not safe)) (_%g167369167394%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl167375167456%_))
                                                    (let ((_%e167387167407%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl167375167456%_))))
                                                      (let ((_%tl167389167412%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e167387167407%_)))
                    (_%hd167388167410%_
                     (let () (declare (not safe)) (##car _%e167387167407%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl167389167412%_))
                    (_%__kont172268172269%_
                     _%hd167388167410%_
                     _%hd167374167454%_)
                    (let () (declare (not safe)) (_%g167369167394%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g167369167394%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g167369167394%_))))))))
                        (if (pair? _%rest167343167351%_)
                            (let ((_%hd167348167499%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167343167351%_)))
                                  (_%tl167349167501%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167343167351%_))))
                              (let* ((_%hd-bind167504%_ _%hd167348167499%_)
                                     (_%rest167506%_ _%tl167349167501%_))
                                (_%K167347167496%_
                                 _%rest167506%_
                                 _%hd-bind167504%_)))
                            (_%else167345167362%_))))))
                 (_%generate-letrec?167094%_
                  (lambda (_%hd167226%_)
                    (let _%lp167228%_ ((_%rest167230%_ _%hd167226%_))
                      (let* ((_%rest167231167239%_ _%rest167230%_)
                             (_%else167233167247%_ (lambda () '#t))
                             (_%K167235167324%_
                              (lambda (_%rest167250%_ _%hd-bind167251%_)
                                (let* ((_%g167253167270%_
                                        (lambda (_%g167254167267%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g167254167267%_))))
                                       (_%g167252167321%_
                                        (lambda (_%g167254167273%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g167254167273%_))
                                              (let ((_%e167257167275%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g167254167273%_))))
                                                (let ((_%hd167258167278%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e167257167275%_)))
                                                      (_%tl167259167280%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e167257167275%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd167258167278%_))
                                                      (let ((_%e167260167283%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd167258167278%_))))
                (let ((_%hd167261167286%_
                       (let () (declare (not safe)) (##car _%e167260167283%_)))
                      (_%tl167262167288%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e167260167283%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl167262167288%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167259167280%_))
                          (let ((_%e167263167291%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167259167280%_))))
                            (let ((_%hd167264167294%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167263167291%_)))
                                  (_%tl167265167296%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167263167291%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167265167296%_))
                                  ((lambda (_%g167255167299%_
                                            _%g167256167300%_)
                                     (if (_%is-lambda-expr?167095%_
                                          _%g167255167299%_)
                                         (_%lp167228%_ _%rest167250%_)
                                         '#f))
                                   _%hd167264167294%_
                                   _%hd167261167286%_)
                                  (_%g167253167270%_ _%g167254167273%_))))
                          (_%g167253167270%_ _%g167254167273%_))
                      (_%g167253167270%_ _%g167254167273%_))))
              (_%g167253167270%_ _%g167254167273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g167253167270%_
                                               _%g167254167273%_)))))
                                  (_%g167252167321%_ _%hd-bind167251%_)))))
                        (if (pair? _%rest167231167239%_)
                            (let ((_%hd167236167327%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167231167239%_)))
                                  (_%tl167237167329%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167231167239%_))))
                              (let* ((_%hd-bind167332%_ _%hd167236167327%_)
                                     (_%rest167334%_ _%tl167237167329%_))
                                (_%K167235167324%_
                                 _%rest167334%_
                                 _%hd-bind167332%_)))
                            (_%else167233167247%_))))))
                 (_%is-lambda-expr?167095%_
                  (lambda (_%expr167163%_)
                    (let* ((_%__stx172308172309%_ _%expr167163%_)
                           (_%g167166167180%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx172308172309%_)))))
                      (let ((_%__kont172310172311%_
                             (lambda (_%g167168167208%_ _%g167169167209%_)
                               '#t))
                            (_%__kont172312172313%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx172308172309%_))
                            (let ((_%e167170167192%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx172308172309%_))))
                              (let ((_%tl167172167197%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167170167192%_)))
                                    (_%hd167171167195%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167170167192%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd167171167195%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd167171167195%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl167172167197%_))
                                            (let ((_%e167173167200%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl167172167197%_))))
                                              (let ((_%tl167175167205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e167173167200%_)))
                                                    (_%hd167174167203%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e167173167200%_))))
                                                (_%__kont172310172311%_
                                                 _%tl167175167205%_
                                                 _%hd167174167203%_)))
                                            (_%__kont172312172313%_))
                                        (_%__kont172312172313%_))
                                    (_%__kont172312172313%_))))
                            (_%__kont172312172313%_)))))))
          (let* ((_%g167097167114%_
                  (lambda (_%g167098167111%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g167098167111%_))))
                 (_%g167096167160%_
                  (lambda (_%g167098167117%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g167098167117%_))
                        (let ((_%e167101167119%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g167098167117%_))))
                          (let ((_%hd167102167122%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167101167119%_)))
                                (_%tl167103167124%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167101167119%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167103167124%_))
                                (let ((_%e167104167127%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167103167124%_))))
                                  (let ((_%hd167105167130%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167104167127%_)))
                                        (_%tl167106167132%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167104167127%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167106167132%_))
                                        (let ((_%e167107167135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167106167132%_))))
                                          (let ((_%hd167108167138%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167107167135%_)))
                                                (_%tl167109167140%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167107167135%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167109167140%_))
                                                ((lambda (_%g167099167143%_
                                                          _%g167100167144%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g167100167144%_)
                                                       (if (_%generate-letrec?167094%_
                                                            _%g167100167144%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self167090%_
                                                            'letrec
                                                            _%g167100167144%_
                                                            _%g167099167143%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self167090%_
                                                            'letrec*
                                                            _%g167100167144%_
                                                            _%g167099167143%_
                                                            '#f))
                                                       (_%generate-values167093%_
                                                        _%g167100167144%_
                                                        _%g167099167143%_)))
                                                 _%hd167108167138%_
                                                 _%hd167105167130%_)
                                                (_%g167097167114%_
                                                 _%g167098167117%_))))
                                        (_%g167097167114%_
                                         _%g167098167117%_))))
                                (_%g167097167114%_ _%g167098167117%_))))
                        (_%g167097167114%_ _%g167098167117%_)))))
            (_%g167096167160%_ _%stx167091%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd167027%_)
        (let _%lp167029%_ ((_%rest167031%_ _%hd167027%_))
          (let* ((_%rest167032167048%_ _%rest167031%_)
                 (_%else167035167056%_ (lambda () '#f)))
            (let ((_%K167038167069%_
                   (lambda (_%rest167067%_) (_%lp167029%_ _%rest167067%_)))
                  (_%K167037167061%_ (lambda () '#t)))
              (let ((_%try-match167034167064%_
                     (lambda ()
                       (if (null? _%rest167032167048%_)
                           (_%K167037167061%_)
                           (_%else167035167056%_)))))
                (if (pair? _%rest167032167048%_)
                    (let ((_%tl167040167074%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest167032167048%_)))
                          (_%hd167039167072%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest167032167048%_))))
                      (if (pair? _%hd167039167072%_)
                          (let ((_%tl167042167079%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd167039167072%_)))
                                (_%hd167041167077%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd167039167072%_))))
                            (if (pair? _%hd167041167077%_)
                                (let ((_%tl167046167082%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd167041167077%_))))
                                  (if (null? _%tl167046167082%_)
                                      (if (pair? _%tl167042167079%_)
                                          (let ((_%tl167044167085%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl167042167079%_))))
                                            (if (null? _%tl167044167085%_)
                                                (let ((_%rest167088%_
                                                       _%tl167040167074%_))
                                                  (_%lp167029%_
                                                   _%rest167088%_))
                                                (_%else167035167056%_)))
                                          (_%else167035167056%_))
                                      (_%else167035167056%_)))
                                (_%else167035167056%_)))
                          (_%else167035167056%_)))
                    (_%try-match167034167064%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self166939%_
               _%form166940%_
               _%hd166941%_
               _%body166942%_
               _%compiled-body?166943%_)
        (letrec ((_%generate1166945%_
                  (lambda (_%bind166984%_)
                    (let* ((_%bind166985166996%_ _%bind166984%_)
                           (_%E166987166999%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind166985166996%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K166988167005%_
                            (lambda (_%expr167002%_ _%id167003%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id167003%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self166939%_
                                             _%expr167002%_))
                                          '())))))
                      (if (pair? _%bind166985166996%_)
                          (let ((_%hd166989167008%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind166985166996%_)))
                                (_%tl166990167010%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind166985166996%_))))
                            (if (pair? _%hd166989167008%_)
                                (let ((_%hd166993167013%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd166989167008%_)))
                                      (_%tl166994167015%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd166989167008%_))))
                                  (let ((_%id167018%_ _%hd166993167013%_))
                                    (if (null? _%tl166994167015%_)
                                        (if (pair? _%tl166990167010%_)
                                            (let ((_%hd166991167020%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl166990167010%_)))
                                                  (_%tl166992167022%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl166990167010%_))))
                                              (let ((_%expr167025%_
                                                     _%hd166991167020%_))
                                                (if (null? _%tl166992167022%_)
                                                    (_%K166988167005%_
                                                     _%expr167025%_
                                                     _%id167018%_)
                                                    (_%E166987166999%_))))
                                            (_%E166987166999%_))
                                        (_%E166987166999%_))))
                                (_%E166987166999%_)))
                          (_%E166987166999%_))))))
          (let* ((_%bind166947%_ (map _%generate1166945%_ _%hd166941%_))
                 (_%body166949%_
                  (if _%compiled-body?166943%_
                      _%body166942%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166939%_ _%body166942%_))))
                 (_%body166981%_
                  (let* ((_%body166950166958%_ _%body166949%_)
                         (_%else166952166966%_
                          (lambda () (cons _%body166949%_ '())))
                         (_%K166954166971%_
                          (lambda (_%exprs166969%_) _%exprs166969%_)))
                    (if (pair? _%body166950166958%_)
                        (let ((_%hd166955166974%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body166950166958%_)))
                              (_%tl166956166976%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body166950166958%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd166955166974%_ 'begin))
                              (let ((_%exprs166979%_ _%tl166956166976%_))
                                (_%K166954166971%_ _%exprs166979%_))
                              (_%else166952166966%_)))
                        (_%else166952166966%_)))))
            (cons _%form166940%_ (cons _%bind166947%_ _%body166981%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self166839%_ _%stx166840%_)
        (letrec ((_%generate1166842%_
                  (lambda (_%datum166894%_)
                    (if (or (null? _%datum166894%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum166894%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum166894%_))
                            (eof-object? _%datum166894%_))
                        _%datum166894%_
                        (if (uninterned-symbol? _%datum166894%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum166894%_
                               '#t))
                            (if (pair? _%datum166894%_)
                                (cons (_%generate1166842%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum166894%_)))
                                      (_%generate1166842%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum166894%_))))
                                (if (box? _%datum166894%_)
                                    (box (_%generate1166842%_
                                          (unbox _%datum166894%_)))
                                    (if (vector? _%datum166894%_)
                                        (vector-map
                                         _%generate1166842%_
                                         _%datum166894%_)
                                        (if (or (s8vector? _%datum166894%_)
                                                (u8vector? _%datum166894%_)
                                                (s16vector? _%datum166894%_)
                                                (u16vector? _%datum166894%_)
                                                (s32vector? _%datum166894%_)
                                                (u32vector? _%datum166894%_)
                                                (s64vector? _%datum166894%_)
                                                (u64vector? _%datum166894%_)
                                                (f32vector? _%datum166894%_)
                                                (f64vector? _%datum166894%_))
                                            _%datum166894%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx166840%_)))))))))))
          (let* ((_%g166844166857%_
                  (lambda (_%g166845166854%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166845166854%_))))
                 (_%g166843166891%_
                  (lambda (_%g166845166860%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166845166860%_))
                        (let ((_%e166847166862%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166845166860%_))))
                          (let ((_%hd166848166865%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166847166862%_)))
                                (_%tl166849166867%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166847166862%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166849166867%_))
                                (let ((_%e166850166870%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166849166867%_))))
                                  (let ((_%hd166851166873%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166850166870%_)))
                                        (_%tl166852166875%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166850166870%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166852166875%_))
                                        ((lambda (_%g166846166878%_)
                                           (cons 'quote
                                                 (cons (_%generate1166842%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g166846166878%_)))
                                                       '())))
                                         _%hd166851166873%_)
                                        (_%g166844166857%_
                                         _%g166845166860%_))))
                                (_%g166844166857%_ _%g166845166860%_))))
                        (_%g166844166857%_ _%g166845166860%_)))))
            (_%g166843166891%_ _%stx166840%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self166286%_ _%stx166287%_)
        (letrec ((_%compile-call166289%_
                  (lambda (_%rator166576%_ _%rands166577%_)
                    (let ((_%rator166583%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self166286%_
                              _%rator166576%_)))
                          (_%rands166584%_
                           (map (lambda (_%g166578166580%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self166286%_
                                     _%g166578166580%_)))
                                _%rands166577%_)))
                      (let* ((_%__stx172355172356%_ _%rator166583%_)
                             (_%g166587166639%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172355172356%_)))))
                        (let ((_%__kont172357172358%_
                               (lambda (_%g166589166759%_
                                        _%g166590166760%_
                                        _%g166591166761%_
                                        _%g166592166762%_)
                                 (if (let ((__tmp173027
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands166584%_)))
                                           (__tmp173025
                                            (length (let ((__tmp173026
                                                           (lambda (_%g166798166801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g166799166803%_)
                     (cons _%g166798166801%_ _%g166799166803%_))))
              (declare (not safe))
              (__foldr1 __tmp173026 '() _%g166591166761%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp173027 __tmp173025))
                                     (let* ((_%id166806%_ _%g166592166762%_)
                                            (_%args166815%_
                                             (let ((__tmp173028
                                                    (lambda (_%g166807166810%_
                                                             _%g166808166812%_)
                                                      (cons _%g166807166810%_
                                                            _%g166808166812%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp173028
                                                '()
                                                _%g166591166761%_)))
                                            (_%body166824%_
                                             (let ((__tmp173029
                                                    (lambda (_%g166816166819%_
                                                             _%g166817166821%_)
                                                      (cons _%g166816166819%_
                                                            _%g166817166821%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp173029
                                                '()
                                                _%g166590166760%_)))
                                            (_%init166826%_
                                             (map list
                                                  _%args166815%_
                                                  _%rands166584%_)))
                                       (cons 'let
                                             (cons _%id166806%_
                                                   (cons _%init166826%_
                                                         _%body166824%_))))
                                     (let ((__tmp173030
                                            (let ((__tmp173031
                                                   (lambda (_%g166828166831%_
                                                            _%g166829166833%_)
                                                     (cons _%g166828166831%_
                                                           _%g166829166833%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173031
                                               '()
                                               _%g166591166761%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx166287%_
                                        __tmp173030
                                        _%rands166584%_)))))
                              (_%__kont172363172364%_
                               (lambda ()
                                 (cons _%rator166583%_ _%rands166584%_))))
                          (let ((_%__match172422172423%_
                                 (lambda (_%e166593166651%_
                                          _%hd166594166654%_
                                          _%tl166595166656%_
                                          _%e166596166659%_
                                          _%hd166597166662%_
                                          _%tl166598166664%_
                                          _%e166599166667%_
                                          _%hd166600166670%_
                                          _%tl166601166672%_
                                          _%e166602166675%_
                                          _%hd166603166678%_
                                          _%tl166604166680%_
                                          _%e166605166683%_
                                          _%hd166606166686%_
                                          _%tl166607166688%_
                                          _%e166608166691%_
                                          _%hd166609166694%_
                                          _%tl166610166696%_
                                          _%e166611166699%_
                                          _%hd166612166702%_
                                          _%tl166613166704%_
                                          _%__splice172359172360%_
                                          _%target166614166707%_
                                          _%tl166616166709%_)
                                   (letrec ((_%loop166617166712%_
                                             (lambda (_%hd166615166715%_
                                                      _%arg166621166717%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd166615166715%_))
                                                   (let ((_%e166618166719%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd166615166715%_))))
                                                     (let ((_%lp-tl166620166724%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e166618166719%_)))
                                                           (_%lp-hd166619166722%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e166618166719%_))))
                                                       (_%loop166617166712%_
                                                        _%lp-tl166620166724%_
                                                        (cons _%lp-hd166619166722%_
                                                              _%arg166621166717%_))))
                                                   (let ((_%arg166622166727%_
                                                          (reverse _%arg166621166717%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl166613166704%_))
                                                         (let ((_%__splice172361172362%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl166613166704%_
                           '0))))
                   (let ((_%tl166625166731%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice172361172362%_ '1)))
                         (_%target166623166729%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice172361172362%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl166625166731%_))
                         (letrec ((_%loop166626166734%_
                                   (lambda (_%hd166624166737%_
                                            _%body166630166739%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd166624166737%_))
                                         (let ((_%e166627166741%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd166624166737%_))))
                                           (let ((_%lp-tl166629166746%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e166627166741%_)))
                                                 (_%lp-hd166628166744%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e166627166741%_))))
                                             (_%loop166626166734%_
                                              _%lp-tl166629166746%_
                                              (cons _%lp-hd166628166744%_
                                                    _%body166630166739%_))))
                                         (let ((_%body166631166749%_
                                                (reverse _%body166630166739%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl166607166688%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl166601166672%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl166598166664%_))
                                                       (let ((_%e166632166751%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl166598166664%_))))
                 (let ((_%tl166634166756%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e166632166751%_)))
                       (_%hd166633166754%_
                        (let ()
                          (declare (not safe))
                          (##car _%e166632166751%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl166634166756%_))
                       (let ((_%g166589166759%_ _%hd166633166754%_)
                             (_%g166590166760%_ _%body166631166749%_)
                             (_%g166591166761%_ _%arg166622166727%_)
                             (_%g166592166762%_ _%hd166603166678%_))
                         (if (eq? _%g166592166762%_ _%g166589166759%_)
                             (_%__kont172357172358%_
                              _%g166589166759%_
                              _%g166590166760%_
                              _%g166591166761%_
                              _%g166592166762%_)
                             (_%__kont172363172364%_)))
                       (_%__kont172363172364%_))))
               (_%__kont172363172364%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont172363172364%_))
                                               (_%__kont172363172364%_)))))))
                           (_%loop166626166734%_ _%target166623166729%_ '()))
                         (_%__kont172363172364%_))))
                 (_%__kont172363172364%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop166617166712%_
                                      _%target166614166707%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx172355172356%_))
                                (let ((_%e166593166651%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx172355172356%_))))
                                  (let ((_%tl166595166656%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166593166651%_)))
                                        (_%hd166594166654%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166593166651%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166594166654%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd166594166654%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166595166656%_))
                                                (let ((_%e166596166659%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166595166656%_))))
                                                  (let ((_%tl166598166664%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166596166659%_)))
                                                        (_%hd166597166662%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166596166659%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd166597166662%_))
                                                        (let ((_%e166599166667%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd166597166662%_))))
                  (let ((_%tl166601166672%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e166599166667%_)))
                        (_%hd166600166670%_
                         (let ()
                           (declare (not safe))
                           (##car _%e166599166667%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd166600166670%_))
                        (let ((_%e166602166675%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd166600166670%_))))
                          (let ((_%tl166604166680%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166602166675%_)))
                                (_%hd166603166678%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166602166675%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166604166680%_))
                                (let ((_%e166605166683%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166604166680%_))))
                                  (let ((_%tl166607166688%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166605166683%_)))
                                        (_%hd166606166686%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166605166683%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166606166686%_))
                                        (let ((_%e166608166691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166606166686%_))))
                                          (let ((_%tl166610166696%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166608166691%_)))
                                                (_%hd166609166694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166608166691%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd166609166694%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd166609166694%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl166610166696%_))
                                                        (let ((_%e166611166699%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl166610166696%_))))
                  (let ((_%tl166613166704%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e166611166699%_)))
                        (_%hd166612166702%_
                         (let ()
                           (declare (not safe))
                           (##car _%e166611166699%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd166612166702%_))
                        (let ((_%__splice172359172360%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd166612166702%_
                                  '0))))
                          (let ((_%tl166616166709%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice172359172360%_ '1)))
                                (_%target166614166707%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice172359172360%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl166616166709%_))
                                (_%__match172422172423%_
                                 _%e166593166651%_
                                 _%hd166594166654%_
                                 _%tl166595166656%_
                                 _%e166596166659%_
                                 _%hd166597166662%_
                                 _%tl166598166664%_
                                 _%e166599166667%_
                                 _%hd166600166670%_
                                 _%tl166601166672%_
                                 _%e166602166675%_
                                 _%hd166603166678%_
                                 _%tl166604166680%_
                                 _%e166605166683%_
                                 _%hd166606166686%_
                                 _%tl166607166688%_
                                 _%e166608166691%_
                                 _%hd166609166694%_
                                 _%tl166610166696%_
                                 _%e166611166699%_
                                 _%hd166612166702%_
                                 _%tl166613166704%_
                                 _%__splice172359172360%_
                                 _%target166614166707%_
                                 _%tl166616166709%_)
                                (_%__kont172363172364%_))))
                        (_%__kont172363172364%_))))
                (_%__kont172363172364%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172363172364%_))
                                                (_%__kont172363172364%_))))
                                        (_%__kont172363172364%_))))
                                (_%__kont172363172364%_))))
                        (_%__kont172363172364%_))))
                (_%__kont172363172364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172363172364%_))
                                            (_%__kont172363172364%_))
                                        (_%__kont172363172364%_))))
                                (_%__kont172363172364%_)))))))))
          (let* ((_%g166291166314%_
                  (lambda (_%g166292166311%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166292166311%_))))
                 (_%g166290166573%_
                  (lambda (_%g166292166317%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166292166317%_))
                        (let ((_%e166295166319%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166292166317%_))))
                          (let ((_%hd166296166322%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166295166319%_)))
                                (_%tl166297166324%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166295166319%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166297166324%_))
                                (let ((_%e166298166327%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166297166324%_))))
                                  (let ((_%hd166299166330%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166298166327%_)))
                                        (_%tl166300166332%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166298166327%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl166300166332%_))
                                        (let ((_g173032_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl166300166332%_
                                                  '0))))
                                          (begin
                                            (let ((_g173033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g173032_)
                                                         (##values-length
                                                          _g173032_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g173033_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g173033_)))
                                            (let ((_%target166301166335%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g173032_
                                                      0)))
                                                  (_%tl166303166337%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g173032_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166303166337%_))
                                                  (letrec ((_%loop166304166340%_
                                                            (lambda (_%hd166302166343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand166308166345%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166302166343%_))
                          (let ((_%e166305166347%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166302166343%_))))
                            (let ((_%lp-hd166306166350%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166305166347%_)))
                                  (_%lp-tl166307166352%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166305166347%_))))
                              (_%loop166304166340%_
                               _%lp-tl166307166352%_
                               (cons _%lp-hd166306166350%_
                                     _%rand166308166345%_))))
                          (let ((_%rand166309166355%_
                                 (reverse _%rand166308166345%_)))
                            ((lambda (_%g166293166357%_ _%g166294166358%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call166289%_
                                    _%g166294166358%_
                                    (let ((__tmp173034
                                           (lambda (_%g166375166378%_
                                                    _%g166376166380%_)
                                             (cons _%g166375166378%_
                                                   _%g166376166380%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp173034
                                       '()
                                       _%g166293166357%_)))
                                   (let* ((_%__stx172471172472%_
                                           _%g166294166358%_)
                                          (_%g166384166396%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx172471172472%_)))))
                                     (let ((_%__kont172473172474%_
                                            (lambda ()
                                              (let ((_%f166433%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self166286%_
                                                        _%g166294166358%_))))
                                                (if (and (let ((__tmp173035
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f166433%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp173035))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f166433%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp166435%_ ((_%rest166438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp173037
                                                (lambda (_%g166555166558%_
                                                         _%g166556166560%_)
                                                  (cons _%g166555166558%_
                                                        _%g166556166560%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp173037
                                            '()
                                            _%g166293166357%_))))
                               (_%bind166440%_ '())
                               (_%args166441%_ '()))
              (let* ((_%rest166442166450%_ _%rest166438%_)
                     (_%else166444166458%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind166440%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f166433%_
                                                      _%args166441%_)
                                                '()))))))
                     (_%K166446166544%_
                      (lambda (_%rest166461%_ _%e166462%_)
                        (let* ((_%__stx172425172426%_ _%e166462%_)
                               (_%g166467166485%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx172425172426%_)))))
                          (let ((_%__kont172427172428%_
                                 (lambda ()
                                   (_%lp166435%_
                                    _%rest166461%_
                                    _%bind166440%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e166462%_))
                                          _%args166441%_))))
                                (_%__kont172429172430%_
                                 (lambda ()
                                   (_%lp166435%_
                                    _%rest166461%_
                                    _%bind166440%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e166462%_))
                                          _%args166441%_))))
                                (_%__kont172431172432%_
                                 (lambda ()
                                   (let ((_%tmp166492%_
                                          (let ((__tmp173036
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp173036))))
                                     (_%lp166435%_
                                      _%rest166461%_
                                      (cons (cons _%tmp166492%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e166462%_))
                                                        '()))
                                            _%bind166440%_)
                                      (cons _%tmp166492%_ _%args166441%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx172425172426%_))
                                (let ((_%e166469166523%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx172425172426%_))))
                                  (let ((_%tl166471166528%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166469166523%_)))
                                        (_%hd166470166526%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166469166523%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166470166526%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd166470166526%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166471166528%_))
                                                (let ((_%e166472166531%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166471166528%_))))
                                                  (let ((_%tl166474166536%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166472166531%_)))
                                                        (_%hd166473166534%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166472166531%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl166474166536%_))
                                                        (_%__kont172427172428%_)
                                                        (_%__kont172431172432%_))))
                                                (_%__kont172431172432%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd166470166526%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl166471166528%_))
                                                    (let ((_%e166478166508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl166471166528%_))))
                                                      (let ((_%tl166480166513%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166478166508%_)))
                    (_%hd166479166511%_
                     (let () (declare (not safe)) (##car _%e166478166508%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl166480166513%_))
                    (_%__kont172429172430%_)
                    (_%__kont172431172432%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172431172432%_))
                                                (_%__kont172431172432%_)))
                                        (_%__kont172431172432%_))))
                                (_%__kont172431172432%_)))))))
                (if (pair? _%rest166442166450%_)
                    (let ((_%hd166447166547%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest166442166450%_)))
                          (_%tl166448166549%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest166442166450%_))))
                      (let* ((_%e166552%_ _%hd166447166547%_)
                             (_%rest166554%_ _%tl166448166549%_))
                        (_%K166446166544%_ _%rest166554%_ _%e166552%_)))
                    (_%else166444166458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call166289%_
                                                     _%g166294166358%_
                                                     (let ((__tmp173038
                                                            (lambda (_%g166562166565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g166563166567%_)
                      (cons _%g166562166565%_ _%g166563166567%_))))
               (declare (not safe))
               (__foldr1 __tmp173038 '() _%g166293166357%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont172475172476%_
                                            (lambda ()
                                              (_%compile-call166289%_
                                               _%g166294166358%_
                                               (let ((__tmp173039
                                                      (lambda (_%g166402166405%_
                                                               _%g166403166407%_)
                                                        (cons _%g166402166405%_
                                                              _%g166403166407%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp173039
                                                  '()
                                                  _%g166293166357%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx172471172472%_))
                                           (let ((_%e166386166415%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx172471172472%_))))
                                             (let ((_%tl166388166420%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e166386166415%_)))
                                                   (_%hd166387166418%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e166386166415%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd166387166418%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd166387166418%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl166388166420%_))
                                                           (let ((_%e166389166423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl166388166420%_))))
                     (let ((_%tl166391166428%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e166389166423%_)))
                           (_%hd166390166426%_
                            (let ()
                              (declare (not safe))
                              (##car _%e166389166423%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl166391166428%_))
                           (_%__kont172473172474%_)
                           (_%__kont172475172476%_))))
                   (_%__kont172475172476%_))
               (_%__kont172475172476%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont172475172476%_))))
                                           (_%__kont172475172476%_))))))
                             _%rand166309166355%_
                             _%hd166299166330%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop166304166340%_
                                                     _%target166301166335%_
                                                     '()))
                                                  (_%g166291166314%_
                                                   _%g166292166317%_)))))
                                        (_%g166291166314%_
                                         _%g166292166317%_))))
                                (_%g166291166314%_ _%g166292166317%_))))
                        (_%g166291166314%_ _%g166292166317%_)))))
            (_%g166290166573%_ _%stx166287%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self166031%_ _%stx166032%_)
        (let* ((_%__stx172543172544%_ _%stx166032%_)
               (_%g166035166064%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172543172544%_)))))
          (let ((_%__kont172545172546%_
                 (lambda (_%g166037166130%_ _%g166038166131%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self166031%_
                        _%stx166032%_)
                       (let ((_%f166153%_
                              (let ((__tmp173040
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g166038166131%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self166031%_
                                 __tmp173040))))
                         (let _%lp166155%_ ((_%rest166158%_
                                             (reverse (let ((__tmp173042
                                                             (lambda (_%g166275166278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g166276166280%_)
                       (cons _%g166275166278%_ _%g166276166280%_))))
                (declare (not safe))
                (__foldr1 __tmp173042 '() _%g166037166130%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind166160%_ '())
                                            (_%args166161%_ '()))
                           (let* ((_%rest166162166170%_ _%rest166158%_)
                                  (_%else166164166178%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind166160%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f166153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args166161%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K166166166264%_
                                   (lambda (_%rest166181%_ _%e166182%_)
                                     (let* ((_%__stx172497172498%_ _%e166182%_)
                                            (_%g166187166205%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx172497172498%_)))))
                                       (let ((_%__kont172499172500%_
                                              (lambda ()
                                                (_%lp166155%_
                                                 _%rest166181%_
                                                 _%bind166160%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e166182%_))
                                                       _%args166161%_))))
                                             (_%__kont172501172502%_
                                              (lambda ()
                                                (_%lp166155%_
                                                 _%rest166181%_
                                                 _%bind166160%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e166182%_))
                                                       _%args166161%_))))
                                             (_%__kont172503172504%_
                                              (lambda ()
                                                (let ((_%tmp166212%_
                                                       (let ((__tmp173041
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp173041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp166155%_
                                                   _%rest166181%_
                                                   (cons (cons _%tmp166212%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e166182%_))
                             '()))
                 _%bind166160%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp166212%_
                                                         _%args166161%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx172497172498%_))
                                             (let ((_%e166189166243%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx172497172498%_))))
                                               (let ((_%tl166191166248%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e166189166243%_)))
                                                     (_%hd166190166246%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e166189166243%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd166190166246%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd166190166246%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl166191166248%_))
                     (let ((_%e166192166251%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl166191166248%_))))
                       (let ((_%tl166194166256%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e166192166251%_)))
                             (_%hd166193166254%_
                              (let ()
                                (declare (not safe))
                                (##car _%e166192166251%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl166194166256%_))
                             (_%__kont172499172500%_)
                             (_%__kont172503172504%_))))
                     (_%__kont172503172504%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd166190166246%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl166191166248%_))
                         (let ((_%e166198166228%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl166191166248%_))))
                           (let ((_%tl166200166233%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e166198166228%_)))
                                 (_%hd166199166231%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e166198166228%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl166200166233%_))
                                 (_%__kont172501172502%_)
                                 (_%__kont172503172504%_))))
                         (_%__kont172503172504%_))
                     (_%__kont172503172504%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172503172504%_))))
                                             (_%__kont172503172504%_)))))))
                             (if (pair? _%rest166162166170%_)
                                 (let ((_%hd166167166267%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest166162166170%_)))
                                       (_%tl166168166269%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest166162166170%_))))
                                   (let* ((_%e166272%_ _%hd166167166267%_)
                                          (_%rest166274%_ _%tl166168166269%_))
                                     (_%K166166166264%_
                                      _%rest166274%_
                                      _%e166272%_)))
                                 (_%else166164166178%_))))))))
                (_%__kont172549172550%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self166031%_ _%stx166032%_))))
            (let ((_%__match172588172589%_
                   (lambda (_%e166039166076%_
                            _%hd166040166079%_
                            _%tl166041166081%_
                            _%e166042166084%_
                            _%hd166043166087%_
                            _%tl166044166089%_
                            _%e166045166092%_
                            _%hd166046166095%_
                            _%tl166047166097%_
                            _%e166048166100%_
                            _%hd166049166103%_
                            _%tl166050166105%_
                            _%__splice172547172548%_
                            _%target166051166108%_
                            _%tl166053166110%_)
                     (letrec ((_%loop166054166113%_
                               (lambda (_%hd166052166116%_
                                        _%rand166058166118%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd166052166116%_))
                                     (let ((_%e166055166120%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd166052166116%_))))
                                       (let ((_%lp-tl166057166125%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e166055166120%_)))
                                             (_%lp-hd166056166123%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e166055166120%_))))
                                         (_%loop166054166113%_
                                          _%lp-tl166057166125%_
                                          (cons _%lp-hd166056166123%_
                                                _%rand166058166118%_))))
                                     (let ((_%rand166059166128%_
                                            (reverse _%rand166058166118%_)))
                                       (_%__kont172545172546%_
                                        _%rand166059166128%_
                                        _%hd166049166103%_))))))
                       (_%loop166054166113%_ _%target166051166108%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx172543172544%_))
                  (let ((_%e166039166076%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx172543172544%_))))
                    (let ((_%tl166041166081%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166039166076%_)))
                          (_%hd166040166079%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166039166076%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166041166081%_))
                          (let ((_%e166042166084%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166041166081%_))))
                            (let ((_%tl166044166089%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166042166084%_)))
                                  (_%hd166043166087%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166042166084%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd166043166087%_))
                                  (let ((_%e166045166092%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd166043166087%_))))
                                    (let ((_%tl166047166097%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e166045166092%_)))
                                          (_%hd166046166095%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e166045166092%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd166046166095%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd166046166095%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl166047166097%_))
                                                  (let ((_%e166048166100%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl166047166097%_))))
                                                    (let ((_%tl166050166105%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166048166100%_)))
                                                          (_%hd166049166103%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166048166100%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl166050166105%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl166044166089%_))
                      (let ((_%__splice172547172548%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl166044166089%_
                                '0))))
                        (let ((_%tl166053166110%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172547172548%_ '1)))
                              (_%target166051166108%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172547172548%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl166053166110%_))
                              (_%__match172588172589%_
                               _%e166039166076%_
                               _%hd166040166079%_
                               _%tl166041166081%_
                               _%e166042166084%_
                               _%hd166043166087%_
                               _%tl166044166089%_
                               _%e166045166092%_
                               _%hd166046166095%_
                               _%tl166047166097%_
                               _%e166048166100%_
                               _%hd166049166103%_
                               _%tl166050166105%_
                               _%__splice172547172548%_
                               _%target166051166108%_
                               _%tl166053166110%_)
                              (_%__kont172549172550%_))))
                      (_%__kont172549172550%_))
                  (_%__kont172549172550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172549172550%_))
                                              (_%__kont172549172550%_))
                                          (_%__kont172549172550%_))))
                                  (_%__kont172549172550%_))))
                          (_%__kont172549172550%_))))
                  (_%__kont172549172550%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self165843%_ _%stx165844%_)
        (letrec ((_%simplify165846%_
                  (lambda (_%code165931%_)
                    (let* ((_%code165932165950%_ _%code165931%_)
                           (_%else165934165958%_ (lambda () _%code165931%_))
                           (_%K165936165994%_
                            (lambda (_%expr165961%_ _%test165962%_)
                              (let* ((_%expr165963165971%_ _%expr165961%_)
                                     (_%else165965165979%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test165962%_
                                                    (cons _%expr165961%_
                                                          '())))))
                                     (_%K165967165984%_
                                      (lambda (_%exprs165982%_)
                                        (cons 'and
                                              (cons _%test165962%_
                                                    _%exprs165982%_)))))
                                (if (pair? _%expr165963165971%_)
                                    (let ((_%hd165968165987%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr165963165971%_)))
                                          (_%tl165969165989%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr165963165971%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd165968165987%_ 'and))
                                          (let ((_%exprs165992%_
                                                 _%tl165969165989%_))
                                            (_%K165967165984%_
                                             _%exprs165992%_))
                                          (_%else165965165979%_)))
                                    (_%else165965165979%_))))))
                      (if (pair? _%code165932165950%_)
                          (let ((_%hd165937165997%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code165932165950%_)))
                                (_%tl165938165999%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code165932165950%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd165937165997%_ 'if))
                                (if (pair? _%tl165938165999%_)
                                    (let ((_%hd165939166002%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl165938165999%_)))
                                          (_%tl165940166004%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl165938165999%_))))
                                      (let ((_%test166007%_
                                             _%hd165939166002%_))
                                        (if (pair? _%tl165940166004%_)
                                            (let ((_%hd165941166009%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl165940166004%_)))
                                                  (_%tl165942166011%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl165940166004%_))))
                                              (let ((_%expr166014%_
                                                     _%hd165941166009%_))
                                                (if (pair? _%tl165942166011%_)
                                                    (let ((_%hd165943166016%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl165942166011%_)))
                                                          (_%tl165944166018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl165942166011%_))))
                                                      (if (pair? _%hd165943166016%_)
                                                          (let ((_%hd165945166021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd165943166016%_)))
                        (_%tl165946166023%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd165943166016%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd165945166021%_ 'quote))
                        (if (pair? _%tl165946166023%_)
                            (let ((_%hd165947166026%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl165946166023%_)))
                                  (_%tl165948166028%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl165946166023%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd165947166026%_ '#f))
                                  (if (null? _%tl165948166028%_)
                                      (if (null? _%tl165944166018%_)
                                          (_%K165936165994%_
                                           _%expr166014%_
                                           _%test166007%_)
                                          (_%else165934165958%_))
                                      (_%else165934165958%_))
                                  (_%else165934165958%_)))
                            (_%else165934165958%_))
                        (_%else165934165958%_)))
                  (_%else165934165958%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else165934165958%_))))
                                            (_%else165934165958%_))))
                                    (_%else165934165958%_))
                                (_%else165934165958%_)))
                          (_%else165934165958%_))))))
          (let* ((_%g165848165869%_
                  (lambda (_%g165849165866%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g165849165866%_))))
                 (_%g165847165928%_
                  (lambda (_%g165849165872%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g165849165872%_))
                        (let ((_%e165853165874%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g165849165872%_))))
                          (let ((_%hd165854165877%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165853165874%_)))
                                (_%tl165855165879%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165853165874%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165855165879%_))
                                (let ((_%e165856165882%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165855165879%_))))
                                  (let ((_%hd165857165885%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165856165882%_)))
                                        (_%tl165858165887%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165856165882%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl165858165887%_))
                                        (let ((_%e165859165890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl165858165887%_))))
                                          (let ((_%hd165860165893%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165859165890%_)))
                                                (_%tl165861165895%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165859165890%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165861165895%_))
                                                (let ((_%e165862165898%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165861165895%_))))
                                                  (let ((_%hd165863165901%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165862165898%_)))
                                                        (_%tl165864165903%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165862165898%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165864165903%_))
                                                        ((lambda (_%g165850165906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g165851165907%_
                          _%g165852165908%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify165846%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self165843%_
                                       _%g165852165908%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self165843%_
                                             _%g165851165907%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self165843%_
                                                   _%g165850165906%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp173043
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self165843%_
                                               _%g165852165908%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp173043
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165843%_
                                            _%g165851165907%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self165843%_
                                                  _%g165850165906%_))
                                               '()))))))
                 _%hd165863165901%_
                 _%hd165860165893%_
                 _%hd165857165885%_)
                (_%g165848165869%_ _%g165849165872%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g165848165869%_
                                                 _%g165849165872%_))))
                                        (_%g165848165869%_
                                         _%g165849165872%_))))
                                (_%g165848165869%_ _%g165849165872%_))))
                        (_%g165848165869%_ _%g165849165872%_)))))
            (_%g165847165928%_ _%stx165844%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self165791%_ _%stx165792%_)
        (let* ((_%g165794165807%_
                (lambda (_%g165795165804%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165795165804%_))))
               (_%g165793165840%_
                (lambda (_%g165795165810%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165795165810%_))
                      (let ((_%e165797165812%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165795165810%_))))
                        (let ((_%hd165798165815%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165797165812%_)))
                              (_%tl165799165817%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165797165812%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165799165817%_))
                              (let ((_%e165800165820%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165799165817%_))))
                                (let ((_%hd165801165823%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165800165820%_)))
                                      (_%tl165802165825%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165800165820%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165802165825%_))
                                      ((lambda (_%g165796165828%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g165796165828%_)))
                                       _%hd165801165823%_)
                                      (_%g165794165807%_ _%g165795165810%_))))
                              (_%g165794165807%_ _%g165795165810%_))))
                      (_%g165794165807%_ _%g165795165810%_)))))
          (_%g165793165840%_ _%stx165792%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self165723%_ _%stx165724%_)
        (let* ((_%g165726165743%_
                (lambda (_%g165727165740%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165727165740%_))))
               (_%g165725165788%_
                (lambda (_%g165727165746%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165727165746%_))
                      (let ((_%e165730165748%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165727165746%_))))
                        (let ((_%hd165731165751%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165730165748%_)))
                              (_%tl165732165753%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165730165748%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165732165753%_))
                              (let ((_%e165733165756%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165732165753%_))))
                                (let ((_%hd165734165759%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165733165756%_)))
                                      (_%tl165735165761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165733165756%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165735165761%_))
                                      (let ((_%e165736165764%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165735165761%_))))
                                        (let ((_%hd165737165767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165736165764%_)))
                                              (_%tl165738165769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165736165764%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165738165769%_))
                                              ((lambda (_%g165728165772%_
                                                        _%g165729165773%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g165729165773%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self165723%_
                              _%g165728165772%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165737165767%_
                                               _%hd165734165759%_)
                                              (_%g165726165743%_
                                               _%g165727165746%_))))
                                      (_%g165726165743%_ _%g165727165746%_))))
                              (_%g165726165743%_ _%g165727165746%_))))
                      (_%g165726165743%_ _%g165727165746%_)))))
          (_%g165725165788%_ _%stx165724%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self165534%_ _%stx165535%_)
        (let* ((_%g165537165554%_
                (lambda (_%g165538165551%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165538165551%_))))
               (_%g165536165720%_
                (lambda (_%g165538165557%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165538165557%_))
                      (let ((_%e165541165559%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165538165557%_))))
                        (let ((_%hd165542165562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165541165559%_)))
                              (_%tl165543165564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165541165559%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165543165564%_))
                              (let ((_%e165544165567%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165543165564%_))))
                                (let ((_%hd165545165570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165544165567%_)))
                                      (_%tl165546165572%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165544165567%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165546165572%_))
                                      (let ((_%e165547165575%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165546165572%_))))
                                        (let ((_%hd165548165578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165547165575%_)))
                                              (_%tl165549165580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165547165575%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165549165580%_))
                                              ((lambda (_%g165539165583%_
                                                        _%g165540165584%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self165534%_ _%g165539165583%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self165534%_
                                  _%g165540165584%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp165599%_ ((_%rest165602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g165540165584%_
                                       (cons _%g165539165583%_ '())))
                                (_%bind165604%_ '())
                                (_%args165605%_ '()))
               (let* ((_%rest165606165614%_ _%rest165602%_)
                      (_%else165608165622%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind165604%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args165605%_)
                                                 '()))))))
                      (_%K165610165708%_
                       (lambda (_%rest165625%_ _%e165626%_)
                         (let* ((_%__stx172591172592%_ _%e165626%_)
                                (_%g165631165649%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx172591172592%_)))))
                           (let ((_%__kont172593172594%_
                                  (lambda ()
                                    (_%lp165599%_
                                     _%rest165625%_
                                     _%bind165604%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165626%_))
                                           _%args165605%_))))
                                 (_%__kont172595172596%_
                                  (lambda ()
                                    (_%lp165599%_
                                     _%rest165625%_
                                     _%bind165604%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165626%_))
                                           _%args165605%_))))
                                 (_%__kont172597172598%_
                                  (lambda ()
                                    (let ((_%tmp165656%_
                                           (let ((__tmp173044
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp173044))))
                                      (_%lp165599%_
                                       _%rest165625%_
                                       (cons (cons _%tmp165656%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e165626%_))
                                                         '()))
                                             _%bind165604%_)
                                       (cons _%tmp165656%_ _%args165605%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx172591172592%_))
                                 (let ((_%e165633165687%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx172591172592%_))))
                                   (let ((_%tl165635165692%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e165633165687%_)))
                                         (_%hd165634165690%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e165633165687%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd165634165690%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd165634165690%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl165635165692%_))
                                                 (let ((_%e165636165695%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl165635165692%_))))
                                                   (let ((_%tl165638165700%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e165636165695%_)))
                                                         (_%hd165637165698%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e165636165695%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl165638165700%_))
                                                         (_%__kont172593172594%_)
                                                         (_%__kont172597172598%_))))
                                                 (_%__kont172597172598%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd165634165690%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl165635165692%_))
                                                     (let ((_%e165642165672%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl165635165692%_))))
                                                       (let ((_%tl165644165677%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e165642165672%_)))
                     (_%hd165643165675%_
                      (let () (declare (not safe)) (##car _%e165642165672%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl165644165677%_))
                     (_%__kont172595172596%_)
                     (_%__kont172597172598%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172597172598%_))
                                                 (_%__kont172597172598%_)))
                                         (_%__kont172597172598%_))))
                                 (_%__kont172597172598%_)))))))
                 (if (pair? _%rest165606165614%_)
                     (let ((_%hd165611165711%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest165606165614%_)))
                           (_%tl165612165713%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest165606165614%_))))
                       (let* ((_%e165716%_ _%hd165611165711%_)
                              (_%rest165718%_ _%tl165612165713%_))
                         (_%K165610165708%_ _%rest165718%_ _%e165716%_)))
                     (_%else165608165622%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165548165578%_
                                               _%hd165545165570%_)
                                              (_%g165537165554%_
                                               _%g165538165557%_))))
                                      (_%g165537165554%_ _%g165538165557%_))))
                              (_%g165537165554%_ _%g165538165557%_))))
                      (_%g165537165554%_ _%g165538165557%_)))))
          (_%g165536165720%_ _%stx165535%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self165345%_ _%stx165346%_)
        (let* ((_%g165348165365%_
                (lambda (_%g165349165362%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165349165362%_))))
               (_%g165347165531%_
                (lambda (_%g165349165368%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165349165368%_))
                      (let ((_%e165352165370%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165349165368%_))))
                        (let ((_%hd165353165373%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165352165370%_)))
                              (_%tl165354165375%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165352165370%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165354165375%_))
                              (let ((_%e165355165378%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165354165375%_))))
                                (let ((_%hd165356165381%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165355165378%_)))
                                      (_%tl165357165383%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165355165378%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165357165383%_))
                                      (let ((_%e165358165386%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165357165383%_))))
                                        (let ((_%hd165359165389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165358165386%_)))
                                              (_%tl165360165391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165358165386%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165360165391%_))
                                              ((lambda (_%g165350165394%_
                                                        _%g165351165395%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self165345%_ _%g165350165394%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self165345%_
                                  _%g165351165395%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp165410%_ ((_%rest165413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g165351165395%_
                                       (cons _%g165350165394%_ '())))
                                (_%bind165415%_ '())
                                (_%args165416%_ '()))
               (let* ((_%rest165417165425%_ _%rest165413%_)
                      (_%else165419165433%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind165415%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args165416%_)
                                                 '()))))))
                      (_%K165421165519%_
                       (lambda (_%rest165436%_ _%e165437%_)
                         (let* ((_%__stx172637172638%_ _%e165437%_)
                                (_%g165442165460%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx172637172638%_)))))
                           (let ((_%__kont172639172640%_
                                  (lambda ()
                                    (_%lp165410%_
                                     _%rest165436%_
                                     _%bind165415%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165437%_))
                                           _%args165416%_))))
                                 (_%__kont172641172642%_
                                  (lambda ()
                                    (_%lp165410%_
                                     _%rest165436%_
                                     _%bind165415%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165437%_))
                                           _%args165416%_))))
                                 (_%__kont172643172644%_
                                  (lambda ()
                                    (let ((_%tmp165467%_
                                           (let ((__tmp173045
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp173045))))
                                      (_%lp165410%_
                                       _%rest165436%_
                                       (cons (cons _%tmp165467%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e165437%_))
                                                         '()))
                                             _%bind165415%_)
                                       (cons _%tmp165467%_ _%args165416%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx172637172638%_))
                                 (let ((_%e165444165498%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx172637172638%_))))
                                   (let ((_%tl165446165503%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e165444165498%_)))
                                         (_%hd165445165501%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e165444165498%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd165445165501%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd165445165501%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl165446165503%_))
                                                 (let ((_%e165447165506%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl165446165503%_))))
                                                   (let ((_%tl165449165511%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e165447165506%_)))
                                                         (_%hd165448165509%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e165447165506%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl165449165511%_))
                                                         (_%__kont172639172640%_)
                                                         (_%__kont172643172644%_))))
                                                 (_%__kont172643172644%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd165445165501%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl165446165503%_))
                                                     (let ((_%e165453165483%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl165446165503%_))))
                                                       (let ((_%tl165455165488%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e165453165483%_)))
                     (_%hd165454165486%_
                      (let () (declare (not safe)) (##car _%e165453165483%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl165455165488%_))
                     (_%__kont172641172642%_)
                     (_%__kont172643172644%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172643172644%_))
                                                 (_%__kont172643172644%_)))
                                         (_%__kont172643172644%_))))
                                 (_%__kont172643172644%_)))))))
                 (if (pair? _%rest165417165425%_)
                     (let ((_%hd165422165522%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest165417165425%_)))
                           (_%tl165423165524%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest165417165425%_))))
                       (let* ((_%e165527%_ _%hd165422165522%_)
                              (_%rest165529%_ _%tl165423165524%_))
                         (_%K165421165519%_ _%rest165529%_ _%e165527%_)))
                     (_%else165419165433%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165359165389%_
                                               _%hd165356165381%_)
                                              (_%g165348165365%_
                                               _%g165349165368%_))))
                                      (_%g165348165365%_ _%g165349165368%_))))
                              (_%g165348165365%_ _%g165349165368%_))))
                      (_%g165348165365%_ _%g165349165368%_)))))
          (_%g165347165531%_ _%stx165346%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self165261%_ _%stx165262%_)
        (let* ((_%g165264165285%_
                (lambda (_%g165265165282%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165265165282%_))))
               (_%g165263165342%_
                (lambda (_%g165265165288%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165265165288%_))
                      (let ((_%e165269165290%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165265165288%_))))
                        (let ((_%hd165270165293%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165269165290%_)))
                              (_%tl165271165295%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165269165290%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165271165295%_))
                              (let ((_%e165272165298%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165271165295%_))))
                                (let ((_%hd165273165301%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165272165298%_)))
                                      (_%tl165274165303%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165272165298%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165274165303%_))
                                      (let ((_%e165275165306%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165274165303%_))))
                                        (let ((_%hd165276165309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165275165306%_)))
                                              (_%tl165277165311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165275165306%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165277165311%_))
                                              (let ((_%e165278165314%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165277165311%_))))
                                                (let ((_%hd165279165317%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165278165314%_)))
                                                      (_%tl165280165319%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165278165314%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl165280165319%_))
                                                      ((lambda (_%g165266165322%_
                                                                _%g165267165323%_
                                                                _%g165268165324%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self165261%_
                                _%g165266165322%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165261%_
                                      _%g165267165323%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165261%_
                                            _%g165268165324%_))
                                         (cons ''#f '()))))))
               _%hd165279165317%_
               _%hd165276165309%_
               _%hd165273165301%_)
              (_%g165264165285%_ _%g165265165288%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165264165285%_
                                               _%g165265165288%_))))
                                      (_%g165264165285%_ _%g165265165288%_))))
                              (_%g165264165285%_ _%g165265165288%_))))
                      (_%g165264165285%_ _%g165265165288%_)))))
          (_%g165263165342%_ _%stx165262%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self165161%_ _%stx165162%_)
        (let* ((_%g165164165189%_
                (lambda (_%g165165165186%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165165165186%_))))
               (_%g165163165258%_
                (lambda (_%g165165165192%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165165165192%_))
                      (let ((_%e165170165194%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165165165192%_))))
                        (let ((_%hd165171165197%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165170165194%_)))
                              (_%tl165172165199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165170165194%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165172165199%_))
                              (let ((_%e165173165202%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165172165199%_))))
                                (let ((_%hd165174165205%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165173165202%_)))
                                      (_%tl165175165207%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165173165202%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165175165207%_))
                                      (let ((_%e165176165210%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165175165207%_))))
                                        (let ((_%hd165177165213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165176165210%_)))
                                              (_%tl165178165215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165176165210%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165178165215%_))
                                              (let ((_%e165179165218%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165178165215%_))))
                                                (let ((_%hd165180165221%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165179165218%_)))
                                                      (_%tl165181165223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165179165218%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl165181165223%_))
                                                      (let ((_%e165182165226%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl165181165223%_))))
                (let ((_%hd165183165229%_
                       (let () (declare (not safe)) (##car _%e165182165226%_)))
                      (_%tl165184165231%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e165182165226%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl165184165231%_))
                      ((lambda (_%g165166165234%_
                                _%g165167165235%_
                                _%g165168165236%_
                                _%g165169165237%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self165161%_
                                        _%g165167165235%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self165161%_
                                              _%g165166165234%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self165161%_
                                                    _%g165168165236%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self165161%_
                                                          _%g165169165237%_))
                                                       (cons ''#f '())))))))
                       _%hd165183165229%_
                       _%hd165180165221%_
                       _%hd165177165213%_
                       _%hd165174165205%_)
                      (_%g165164165189%_ _%g165165165192%_))))
              (_%g165164165189%_ _%g165165165192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165164165189%_
                                               _%g165165165192%_))))
                                      (_%g165164165189%_ _%g165165165192%_))))
                              (_%g165164165189%_ _%g165165165192%_))))
                      (_%g165164165189%_ _%g165165165192%_)))))
          (_%g165163165258%_ _%stx165162%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self165077%_ _%stx165078%_)
        (let* ((_%g165080165101%_
                (lambda (_%g165081165098%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165081165098%_))))
               (_%g165079165158%_
                (lambda (_%g165081165104%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165081165104%_))
                      (let ((_%e165085165106%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165081165104%_))))
                        (let ((_%hd165086165109%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165085165106%_)))
                              (_%tl165087165111%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165085165106%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165087165111%_))
                              (let ((_%e165088165114%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165087165111%_))))
                                (let ((_%hd165089165117%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165088165114%_)))
                                      (_%tl165090165119%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165088165114%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165090165119%_))
                                      (let ((_%e165091165122%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165090165119%_))))
                                        (let ((_%hd165092165125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165091165122%_)))
                                              (_%tl165093165127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165091165122%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165093165127%_))
                                              (let ((_%e165094165130%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165093165127%_))))
                                                (let ((_%hd165095165133%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165094165130%_)))
                                                      (_%tl165096165135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165094165130%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl165096165135%_))
                                                      ((lambda (_%g165082165138%_
                                                                _%g165083165139%_
                                                                _%g165084165140%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self165077%_
                                _%g165082165138%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165077%_
                                      _%g165083165139%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165077%_
                                            _%g165084165140%_))
                                         (cons ''#f '()))))))
               _%hd165095165133%_
               _%hd165092165125%_
               _%hd165089165117%_)
              (_%g165080165101%_ _%g165081165104%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165080165101%_
                                               _%g165081165104%_))))
                                      (_%g165080165101%_ _%g165081165104%_))))
                              (_%g165080165101%_ _%g165081165104%_))))
                      (_%g165080165101%_ _%g165081165104%_)))))
          (_%g165079165158%_ _%stx165078%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self164977%_ _%stx164978%_)
        (let* ((_%g164980165005%_
                (lambda (_%g164981165002%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164981165002%_))))
               (_%g164979165074%_
                (lambda (_%g164981165008%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164981165008%_))
                      (let ((_%e164986165010%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164981165008%_))))
                        (let ((_%hd164987165013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164986165010%_)))
                              (_%tl164988165015%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164986165010%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164988165015%_))
                              (let ((_%e164989165018%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164988165015%_))))
                                (let ((_%hd164990165021%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164989165018%_)))
                                      (_%tl164991165023%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164989165018%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164991165023%_))
                                      (let ((_%e164992165026%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164991165023%_))))
                                        (let ((_%hd164993165029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164992165026%_)))
                                              (_%tl164994165031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164992165026%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164994165031%_))
                                              (let ((_%e164995165034%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164994165031%_))))
                                                (let ((_%hd164996165037%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164995165034%_)))
                                                      (_%tl164997165039%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164995165034%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl164997165039%_))
                                                      (let ((_%e164998165042%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl164997165039%_))))
                (let ((_%hd164999165045%_
                       (let () (declare (not safe)) (##car _%e164998165042%_)))
                      (_%tl165000165047%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e164998165042%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl165000165047%_))
                      ((lambda (_%g164982165050%_
                                _%g164983165051%_
                                _%g164984165052%_
                                _%g164985165053%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self164977%_
                                        _%g164983165051%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self164977%_
                                              _%g164982165050%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self164977%_
                                                    _%g164984165052%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self164977%_
                                                          _%g164985165053%_))
                                                       (cons ''#f '())))))))
                       _%hd164999165045%_
                       _%hd164996165037%_
                       _%hd164993165029%_
                       _%hd164990165021%_)
                      (_%g164980165005%_ _%g164981165008%_))))
              (_%g164980165005%_ _%g164981165008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164980165005%_
                                               _%g164981165008%_))))
                                      (_%g164980165005%_ _%g164981165008%_))))
                              (_%g164980165005%_ _%g164981165008%_))))
                      (_%g164980165005%_ _%g164981165008%_)))))
          (_%g164979165074%_ _%stx164978%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self164772%_ _%stx164773%_)
        (let* ((_%g164775164796%_
                (lambda (_%g164776164793%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164776164793%_))))
               (_%g164774164974%_
                (lambda (_%g164776164799%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164776164799%_))
                      (let ((_%e164780164801%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164776164799%_))))
                        (let ((_%hd164781164804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164780164801%_)))
                              (_%tl164782164806%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164780164801%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164782164806%_))
                              (let ((_%e164783164809%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164782164806%_))))
                                (let ((_%hd164784164812%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164783164809%_)))
                                      (_%tl164785164814%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164783164809%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164785164814%_))
                                      (let ((_%e164786164817%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164785164814%_))))
                                        (let ((_%hd164787164820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164786164817%_)))
                                              (_%tl164788164822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164786164817%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164788164822%_))
                                              (let ((_%e164789164825%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164788164822%_))))
                                                (let ((_%hd164790164828%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164789164825%_)))
                                                      (_%tl164791164830%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164789164825%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl164791164830%_))
                                                      ((lambda (_%g164777164833%_
                                                                _%g164778164834%_
                                                                _%g164779164835%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self164772%_
                                    _%g164777164833%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self164772%_
                                          _%g164778164834%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp164853%_ ((_%rest164856%_
                                         (cons _%g164778164834%_
                                               (cons _%g164777164833%_ '())))
                                        (_%bind164858%_ '())
                                        (_%args164859%_ '()))
                       (let* ((_%rest164860164868%_ _%rest164856%_)
                              (_%else164862164876%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind164858%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp173046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp173046 _%args164859%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K164864164962%_
                               (lambda (_%rest164879%_ _%e164880%_)
                                 (let* ((_%__stx172683172684%_ _%e164880%_)
                                        (_%g164885164903%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172683172684%_)))))
                                   (let ((_%__kont172685172686%_
                                          (lambda ()
                                            (_%lp164853%_
                                             _%rest164879%_
                                             _%bind164858%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e164880%_))
                                                   _%args164859%_))))
                                         (_%__kont172687172688%_
                                          (lambda ()
                                            (_%lp164853%_
                                             _%rest164879%_
                                             _%bind164858%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e164880%_))
                                                   _%args164859%_))))
                                         (_%__kont172689172690%_
                                          (lambda ()
                                            (let ((_%tmp164910%_
                                                   (let ((__tmp173047
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp173047))))
                                              (_%lp164853%_
                                               _%rest164879%_
                                               (cons (cons _%tmp164910%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e164880%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind164858%_)
                                               (cons _%tmp164910%_
                                                     _%args164859%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172683172684%_))
                                         (let ((_%e164887164941%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172683172684%_))))
                                           (let ((_%tl164889164946%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e164887164941%_)))
                                                 (_%hd164888164944%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e164887164941%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd164888164944%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd164888164944%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl164889164946%_))
                                                         (let ((_%e164890164949%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl164889164946%_))))
                   (let ((_%tl164892164954%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e164890164949%_)))
                         (_%hd164891164952%_
                          (let ()
                            (declare (not safe))
                            (##car _%e164890164949%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl164892164954%_))
                         (_%__kont172685172686%_)
                         (_%__kont172689172690%_))))
                 (_%__kont172689172690%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd164888164944%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl164889164946%_))
                     (let ((_%e164896164926%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl164889164946%_))))
                       (let ((_%tl164898164931%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e164896164926%_)))
                             (_%hd164897164929%_
                              (let ()
                                (declare (not safe))
                                (##car _%e164896164926%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl164898164931%_))
                             (_%__kont172687172688%_)
                             (_%__kont172689172690%_))))
                     (_%__kont172689172690%_))
                 (_%__kont172689172690%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont172689172690%_))))
                                         (_%__kont172689172690%_)))))))
                         (if (pair? _%rest164860164868%_)
                             (let ((_%hd164865164965%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest164860164868%_)))
                                   (_%tl164866164967%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest164860164868%_))))
                               (let* ((_%e164970%_ _%hd164865164965%_)
                                      (_%rest164972%_ _%tl164866164967%_))
                                 (_%K164864164962%_
                                  _%rest164972%_
                                  _%e164970%_)))
                             (_%else164862164876%_))))))
               _%hd164790164828%_
               _%hd164787164820%_
               _%hd164784164812%_)
              (_%g164775164796%_ _%g164776164799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164775164796%_
                                               _%g164776164799%_))))
                                      (_%g164775164796%_ _%g164776164799%_))))
                              (_%g164775164796%_ _%g164776164799%_))))
                      (_%g164775164796%_ _%g164776164799%_)))))
          (_%g164774164974%_ _%stx164773%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self164551%_ _%stx164552%_)
        (let* ((_%g164554164579%_
                (lambda (_%g164555164576%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164555164576%_))))
               (_%g164553164769%_
                (lambda (_%g164555164582%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164555164582%_))
                      (let ((_%e164560164584%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164555164582%_))))
                        (let ((_%hd164561164587%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164560164584%_)))
                              (_%tl164562164589%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164560164584%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164562164589%_))
                              (let ((_%e164563164592%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164562164589%_))))
                                (let ((_%hd164564164595%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164563164592%_)))
                                      (_%tl164565164597%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164563164592%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164565164597%_))
                                      (let ((_%e164566164600%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164565164597%_))))
                                        (let ((_%hd164567164603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164566164600%_)))
                                              (_%tl164568164605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164566164600%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164568164605%_))
                                              (let ((_%e164569164608%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164568164605%_))))
                                                (let ((_%hd164570164611%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164569164608%_)))
                                                      (_%tl164571164613%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164569164608%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl164571164613%_))
                                                      (let ((_%e164572164616%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl164571164613%_))))
                (let ((_%hd164573164619%_
                       (let () (declare (not safe)) (##car _%e164572164616%_)))
                      (_%tl164574164621%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e164572164616%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl164574164621%_))
                      ((lambda (_%g164556164624%_
                                _%g164557164625%_
                                _%g164558164626%_
                                _%g164559164627%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self164551%_
                                            _%g164557164625%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self164551%_
                                                  _%g164556164624%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self164551%_
                                                        _%g164558164626%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp164648%_ ((_%rest164651%_
                                                 (cons _%g164558164626%_
                                                       (cons _%g164556164624%_
                                                             (cons _%g164557164625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind164653%_ '())
                                                (_%args164654%_ '()))
                               (let* ((_%rest164655164663%_ _%rest164651%_)
                                      (_%else164657164671%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind164653%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp173048 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp173048 _%args164654%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K164659164757%_
                                       (lambda (_%rest164674%_ _%e164675%_)
                                         (let* ((_%__stx172729172730%_
                                                 _%e164675%_)
                                                (_%g164680164698%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx172729172730%_)))))
                                           (let ((_%__kont172731172732%_
                                                  (lambda ()
                                                    (_%lp164648%_
                                                     _%rest164674%_
                                                     _%bind164653%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e164675%_))
                                                           _%args164654%_))))
                                                 (_%__kont172733172734%_
                                                  (lambda ()
                                                    (_%lp164648%_
                                                     _%rest164674%_
                                                     _%bind164653%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e164675%_))
                                                           _%args164654%_))))
                                                 (_%__kont172735172736%_
                                                  (lambda ()
                                                    (let ((_%tmp164705%_
                                                           (let ((__tmp173049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp173049))))
              (_%lp164648%_
               _%rest164674%_
               (cons (cons _%tmp164705%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e164675%_))
                                 '()))
                     _%bind164653%_)
               (cons _%tmp164705%_ _%args164654%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx172729172730%_))
                                                 (let ((_%e164682164736%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx172729172730%_))))
                                                   (let ((_%tl164684164741%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e164682164736%_)))
                                                         (_%hd164683164739%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e164682164736%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd164683164739%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd164683164739%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl164684164741%_))
                         (let ((_%e164685164744%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl164684164741%_))))
                           (let ((_%tl164687164749%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e164685164744%_)))
                                 (_%hd164686164747%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e164685164744%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl164687164749%_))
                                 (_%__kont172731172732%_)
                                 (_%__kont172735172736%_))))
                         (_%__kont172735172736%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd164683164739%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl164684164741%_))
                             (let ((_%e164691164721%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl164684164741%_))))
                               (let ((_%tl164693164726%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e164691164721%_)))
                                     (_%hd164692164724%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e164691164721%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl164693164726%_))
                                     (_%__kont172733172734%_)
                                     (_%__kont172735172736%_))))
                             (_%__kont172735172736%_))
                         (_%__kont172735172736%_)))
                 (_%__kont172735172736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont172735172736%_)))))))
                                 (if (pair? _%rest164655164663%_)
                                     (let ((_%hd164660164760%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest164655164663%_)))
                                           (_%tl164661164762%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest164655164663%_))))
                                       (let* ((_%e164765%_ _%hd164660164760%_)
                                              (_%rest164767%_
                                               _%tl164661164762%_))
                                         (_%K164659164757%_
                                          _%rest164767%_
                                          _%e164765%_)))
                                     (_%else164657164671%_))))))
                       _%hd164573164619%_
                       _%hd164570164611%_
                       _%hd164567164603%_
                       _%hd164564164595%_)
                      (_%g164554164579%_ _%g164555164582%_))))
              (_%g164554164579%_ _%g164555164582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164554164579%_
                                               _%g164555164582%_))))
                                      (_%g164554164579%_ _%g164555164582%_))))
                              (_%g164554164579%_ _%g164555164582%_))))
                      (_%g164554164579%_ _%g164555164582%_)))))
          (_%g164553164769%_ _%stx164552%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self164390%_ _%stx164391%_)
        (letrec ((_%import-set-template164393%_
                  (lambda (_%in164496%_ _%phi164497%_)
                    (let ((_%iphi164499%_
                           (fx+ _%phi164497%_
                                (##direct-structure-ref
                                 _%in164496%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports164500%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in164496%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp164502%_ ((_%rest164504%_ _%imports164500%_)
                                         (_%r164505%_ '()))
                        (let* ((_%rest164506164514%_ _%rest164504%_)
                               (_%else164508164522%_ (lambda () _%r164505%_))
                               (_%K164510164539%_
                                (lambda (_%rest164525%_ _%in164526%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in164526%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi164499%_))
                                          (_%lp164502%_
                                           _%rest164525%_
                                           (cons _%in164526%_ _%r164505%_))
                                          (_%lp164502%_
                                           _%rest164525%_
                                           _%r164505%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in164526%_
                                             'gx#module-import::t))
                                          (let ((_%iphi164530%_
                                                 (fx+ _%phi164497%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in164526%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi164530%_))
                                                (_%lp164502%_
                                                 _%rest164525%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in164526%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r164505%_))
                                                (_%lp164502%_
                                                 _%rest164525%_
                                                 _%r164505%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in164526%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi164533%_
                                                     (fx+ _%iphi164499%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in164526%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi164533%_))
                                                    (_%lp164502%_
                                                     _%rest164525%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in164526%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r164505%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi164533%_))
                                                        (_%lp164502%_
                                                         _%rest164525%_
                                                         (let ((__tmp173050
                                                                (_%import-set-template164393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in164526%_
                         _%iphi164499%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r164505%_ __tmp173050)))
                (_%lp164502%_ _%rest164525%_ _%r164505%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp164502%_
                                               _%rest164525%_
                                               _%r164505%_)))))))
                          (if (pair? _%rest164506164514%_)
                              (let ((_%hd164511164542%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest164506164514%_)))
                                    (_%tl164512164544%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest164506164514%_))))
                                (let* ((_%in164547%_ _%hd164511164542%_)
                                       (_%rest164549%_ _%tl164512164544%_))
                                  (_%K164510164539%_
                                   _%rest164549%_
                                   _%in164547%_)))
                              (_%else164508164522%_))))))))
          (let* ((_%g164395164405%_
                  (lambda (_%g164396164402%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g164396164402%_))))
                 (_%g164394164493%_
                  (lambda (_%g164396164408%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g164396164408%_))
                        (let ((_%e164398164410%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g164396164408%_))))
                          (let ((_%hd164399164413%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164398164410%_)))
                                (_%tl164400164415%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164398164410%_))))
                            ((lambda (_%g164397164418%_)
                               (let ((_%ht164429%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp164431%_ ((_%rest164433%_
                                                     _%g164397164418%_)
                                                    (_%loads164434%_ '()))
                                   (letrec ((_%K164436%_
                                             (lambda (_%ctx164486%_
                                                      _%rest164487%_)
                                               (let ((_%id164489%_
                                                      (##structure-ref
                                                       _%ctx164486%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht164429%_
                                                        _%id164489%_))
                                                     (_%lp164431%_
                                                      _%rest164487%_
                                                      _%loads164434%_)
                                                     (let ((_%rt164491%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id164489%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht164429%_
                                                          _%id164489%_
                                                          _%rt164491%_))
                                                       (_%lp164431%_
                                                        _%rest164487%_
                                                        (cons _%rt164491%_
                                                              _%loads164434%_))))))))
                                     (let* ((_%rest164437164445%_
                                             _%rest164433%_)
                                            (_%else164439164457%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp173052
                                                            (lambda (_%g164452164454%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g164452164454%_)))
                   (__tmp173051 (reverse _%loads164434%_)))
               (declare (not safe))
               (##map __tmp173052 __tmp173051)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K164441164474%_
                                             (lambda (_%rest164460%_
                                                      _%in164461%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in164461%_
                                                      'gx#module-context::t))
                                                   (_%K164436%_
                                                    _%in164461%_
                                                    _%rest164460%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in164461%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in164461%_
                               '3
                               '#f
                               '#f)))
                   (_%K164436%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in164461%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest164460%_)
                   (_%lp164431%_ _%rest164460%_ _%loads164434%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in164461%_
                      'gx#import-set::t))
                   (let ((_%phi164466%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in164461%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi164466%_)
                         (_%K164436%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in164461%_
                             '1
                             '#f
                             '#f))
                          _%rest164460%_)
                         (if (fxpositive? _%phi164466%_)
                             (let ((_%deps164470%_
                                    (_%import-set-template164393%_
                                     _%in164461%_
                                     '0)))
                               (_%lp164431%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest164460%_
                                   _%deps164470%_))
                                _%loads164434%_))
                             (_%lp164431%_ _%rest164460%_ _%loads164434%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx164391%_
                      _%in164461%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest164437164445%_)
                                           (let ((_%hd164442164477%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest164437164445%_)))
                                                 (_%tl164443164479%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest164437164445%_))))
                                             (let* ((_%in164482%_
                                                     _%hd164442164477%_)
                                                    (_%rest164484%_
                                                     _%tl164443164479%_))
                                               (_%K164441164474%_
                                                _%rest164484%_
                                                _%in164482%_)))
                                           (_%else164439164457%_)))))))
                             _%tl164400164415%_)))
                        (_%g164395164405%_ _%g164396164408%_)))))
            (_%g164394164493%_ _%stx164391%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self164204%_ _%stx164205%_)
        (letrec ((_%add-lift!164207%_
                  (lambda (_%expr164388%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr164388%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote164208%_
                  (lambda (_%id164385%_ _%marks164386%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id164385%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks164386%_
                                                        '()))))))))
                 (_%generate-simple164209%_
                  (lambda (_%stxq164380%_)
                    (let ((_%gid164382%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid164383%_
                           (gxc#generate-runtime-identifier _%stxq164380%_)))
                      (_%add-lift!164207%_
                       (cons 'define
                             (cons _%gid164382%_
                                   (cons (_%generate-syntax-quote164208%_
                                          _%qid164383%_
                                          ''())
                                         '()))))
                      (let ((__tmp173053
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp173053 _%stxq164380%_ _%gid164382%_))
                      _%gid164382%_)))
                 (_%generate-serialized164210%_
                  (lambda (_%stxq164370%_ _%marks164371%_)
                    (let* ((_%mark-refs164373%_
                            (map _%generate-mark164211%_ _%marks164371%_))
                           (_%gid164375%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid164377%_
                            (gxc#generate-runtime-identifier _%stxq164370%_)))
                      (_%add-lift!164207%_
                       (cons 'define
                             (cons _%gid164375%_
                                   (cons (_%generate-syntax-quote164208%_
                                          _%qid164377%_
                                          (cons 'list _%mark-refs164373%_))
                                         '()))))
                      (let ((__tmp173054
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp173054 _%stxq164370%_ _%gid164375%_))
                      _%gid164375%_)))
                 (_%generate-mark164211%_
                  (lambda (_%mark164355%_)
                    (let ((_%$e164357%_
                           (let ((__tmp173055
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp173055 _%mark164355%_))))
                      (if _%$e164357%_
                          _%$e164357%_
                          (let* ((_%gid164361%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr164363%_
                                  (_%serialize-mark164212%_ _%mark164355%_))
                                 (_%ctx164365%_
                                  (let ((__tmp173056
                                         (##structure-ref
                                          _%mark164355%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp173056)))
                                 (_%ctx-ref164367%_
                                  (if (eq? _%ctx164365%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref164213%_
                                                               _%ctx164365%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp173057
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp173057
                               _%mark164355%_
                               _%gid164361%_))
                            (_%add-lift!164207%_
                             (cons 'define
                                   (cons _%gid164361%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr164363%_ '()))
                   (cons _%ctx-ref164367%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid164361%_)))))
                 (_%serialize-mark164212%_
                  (lambda (_%mark164303%_)
                    (letrec ((_%quote-e164305%_
                              (lambda (_%sym164353%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym164353%_))
                                    _%sym164353%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym164353%_))))))
                      (let* ((_%mark164306164315%_ _%mark164303%_)
                             (_%E164308164318%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark164306164315%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K164309164330%_
                              (lambda (_%trace164321%_
                                       _%phi164322%_
                                       _%ctx164323%_
                                       _%subst164324%_)
                                (let ((_%subs164326%_
                                       (if _%subst164324%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst164324%_))
                                           '())))
                                  (cons _%phi164322%_
                                        (let ((__tmp173058
                                               (lambda (_%pair164328%_)
                                                 (cons (_%quote-e164305%_
                                                        (car _%pair164328%_))
                                                       (_%quote-e164305%_
                                                        (cdr _%pair164328%_))))))
                                          (declare (not safe))
                                          (##map __tmp173058
                                                 _%subs164326%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark164306164315%_
                               'gx#expander-mark::t))
                            (let* ((_%e164310164333%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164306164315%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst164336%_ _%e164310164333%_)
                                   (_%e164311164338%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164306164315%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx164341%_ _%e164311164338%_)
                                   (_%e164312164343%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164306164315%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi164346%_ _%e164312164343%_)
                                   (_%e164313164348%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164306164315%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace164351%_ _%e164313164348%_))
                              (_%K164309164330%_
                               _%trace164351%_
                               _%phi164346%_
                               _%ctx164341%_
                               _%subst164336%_))
                            (_%E164308164318%_))))))
                 (_%context-ref164213%_
                  (lambda (_%ctx164290%_)
                    (if (let ((__tmp173059
                               (##structure-ref
                                _%ctx164290%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp173059
                           'gx#module-context::t))
                        (let ((_%ctx-ref164292%_
                               (_%context-ref-nested164215%_ _%ctx164290%_))
                              (_%ctx-origin164293%_
                               (_%context-ref-origin164214%_ _%ctx164290%_))
                              (_%origin164294%_
                               (_%context-ref-origin164214%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin164294%_ _%ctx-origin164293%_)
                              (let ((_%ref164296%_
                                     (_%context-ref-nested164215%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp164298%_ ((_%ref164300%_
                                                    (cdr _%ref164296%_))
                                                   (_%ctx-ref164301%_
                                                    (cdr _%ctx-ref164292%_)))
                                  (if (and (pair? _%ref164300%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref164300%_))
                                                (car _%ctx-ref164301%_)))
                                      (_%lp164298%_
                                       (cdr _%ref164300%_)
                                       (cdr _%ctx-ref164301%_))
                                      (cons '#f _%ctx-ref164301%_))))
                              _%ctx-ref164292%_))
                        (let ((__tmp173060
                               (##structure-ref
                                _%ctx164290%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp173060)))))
                 (_%context-ref-origin164214%_
                  (lambda (_%ctx164282%_)
                    (let _%lp164284%_ ((_%ctx164286%_ _%ctx164282%_))
                      (let ((_%super164288%_
                             (##structure-ref
                              _%ctx164286%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super164288%_
                               'gx#module-context::t))
                            (_%lp164284%_ _%super164288%_)
                            _%ctx164286%_)))))
                 (_%context-ref-nested164215%_
                  (lambda (_%ctx164273%_)
                    (let _%lp164275%_ ((_%ctx164277%_ _%ctx164273%_)
                                       (_%r164278%_ '()))
                      (let ((_%super164280%_
                             (##structure-ref
                              _%ctx164277%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super164280%_
                               'gx#module-context::t))
                            (_%lp164275%_
                             _%super164280%_
                             (cons (car (##structure-ref
                                         _%ctx164277%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r164278%_))
                            (cons (let ((__tmp173061
                                         (##structure-ref
                                          _%ctx164277%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp173061))
                                  _%r164278%_)))))))
          (let* ((_%g164217164230%_
                  (lambda (_%g164218164227%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g164218164227%_))))
                 (_%g164216164270%_
                  (lambda (_%g164218164233%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g164218164233%_))
                        (let ((_%e164220164235%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g164218164233%_))))
                          (let ((_%hd164221164238%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164220164235%_)))
                                (_%tl164222164240%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164220164235%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl164222164240%_))
                                (let ((_%e164223164243%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl164222164240%_))))
                                  (let ((_%hd164224164246%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e164223164243%_)))
                                        (_%tl164225164248%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e164223164243%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl164225164248%_))
                                        ((lambda (_%g164219164251%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g164219164251%_))
                                               (let ((_%$e164264%_
                                                      (let ((__tmp173062
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp173062 _%g164219164251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e164264%_
                                                     _%$e164264%_
                                                     (let ((_%marks164268%_
                                                            (##direct-structure-ref
                                                             _%g164219164251%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks164268%_)
                                                           (_%generate-simple164209%_
                                                            _%g164219164251%_)
                                                           (_%generate-serialized164210%_
                                                            _%g164219164251%_
                                                            _%marks164268%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g164219164251%_))))
                                         _%hd164224164246%_)
                                        (_%g164217164230%_
                                         _%g164218164233%_))))
                                (_%g164217164230%_ _%g164218164233%_))))
                        (_%g164217164230%_ _%g164218164233%_)))))
            (_%g164216164270%_ _%stx164205%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self164136%_ _%stx164137%_)
        (let* ((_%g164139164156%_
                (lambda (_%g164140164153%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164140164153%_))))
               (_%g164138164201%_
                (lambda (_%g164140164159%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164140164159%_))
                      (let ((_%e164143164161%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164140164159%_))))
                        (let ((_%hd164144164164%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164143164161%_)))
                              (_%tl164145164166%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164143164161%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164145164166%_))
                              (let ((_%e164146164169%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164145164166%_))))
                                (let ((_%hd164147164172%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164146164169%_)))
                                      (_%tl164148164174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164146164169%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164148164174%_))
                                      (let ((_%e164149164177%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164148164174%_))))
                                        (let ((_%hd164150164180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164149164177%_)))
                                              (_%tl164151164182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164149164177%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl164151164182%_))
                                              ((lambda (_%g164141164185%_
                                                        _%g164142164186%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g164142164186%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self164136%_
                              _%g164141164185%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd164150164180%_
                                               _%hd164147164172%_)
                                              (_%g164139164156%_
                                               _%g164140164159%_))))
                                      (_%g164139164156%_ _%g164140164159%_))))
                              (_%g164139164156%_ _%g164140164159%_))))
                      (_%g164139164156%_ _%g164140164159%_)))))
          (_%g164138164201%_ _%stx164137%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self164085%_ _%stx164086%_)
        (let* ((_%g164088164098%_
                (lambda (_%g164089164095%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164089164095%_))))
               (_%g164087164133%_
                (lambda (_%g164089164101%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164089164101%_))
                      (let ((_%e164091164103%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164089164101%_))))
                        (let ((_%hd164092164106%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164091164103%_)))
                              (_%tl164093164108%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164091164103%_))))
                          ((lambda (_%g164090164111%_)
                             (let* ((_%c-body164125%_
                                     (map (lambda (_%g164120164122%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self164085%_
                                               _%g164120164122%_)))
                                          _%g164090164111%_))
                                    (_%c-body164130%_
                                     (let ((__tmp173063
                                            (lambda (_%$obj164127%_)
                                              (not (eq? _%$obj164127%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp173063
                                        _%c-body164125%_))))
                               (cons '%#begin _%c-body164130%_)))
                           _%tl164093164108%_)))
                      (_%g164088164098%_ _%g164089164101%_)))))
          (_%g164087164133%_ _%stx164086%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self163990%_ _%stx163991%_)
        (let* ((_%g163993164003%_
                (lambda (_%g163994164000%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163994164000%_))))
               (_%g163992164082%_
                (lambda (_%g163994164006%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163994164006%_))
                      (let ((_%e163996164008%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163994164006%_))))
                        (let ((_%hd163997164011%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163996164008%_)))
                              (_%tl163998164013%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163996164008%_))))
                          ((lambda (_%g163995164016%_)
                             (let* ((_%phi164026%_
                                     (let ((__tmp173064
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp173064 '1)))
                                    (_%block164028%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self163990%_ 'state))
                                      _%phi164026%_))
                                    (_%compiled164031%_
                                     (let ((__tmp173065
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self163990%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g163995164016%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp173065
                                        gx#current-expander-phi
                                        _%phi164026%_)))
                                    (_%g164034164044%_
                                     (lambda (_%g164035164041%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g164035164041%_))))
                                    (_%g164033164079%_
                                     (lambda (_%g164035164047%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g164035164047%_))
                                           (let ((_%e164037164049%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g164035164047%_))))
                                             (let ((_%hd164038164052%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e164037164049%_)))
                                                   (_%tl164039164054%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e164037164049%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd164038164052%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd164038164052%_))
                                                       ((lambda (_%g164036164057%_)
                                                          (let ((_%c-body164074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj164071%_)
                                   (not (eq? _%$obj164071%_ '#!void)))
                                 _%g164036164057%_)))
                    (if _%block164028%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block164028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body164074%_))
                        (if (null? _%c-body164074%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body164074%_)))))
                _%tl164039164054%_)
               (_%g164034164044%_ _%g164035164047%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g164034164044%_
                                                    _%g164035164047%_))))
                                           (_%g164034164044%_
                                            _%g164035164047%_)))))
                               (_%g164033164079%_ _%compiled164031%_)))
                           _%tl163998164013%_)))
                      (_%g163993164003%_ _%g163994164006%_)))))
          (_%g163992164082%_ _%stx163991%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self163921%_ _%stx163922%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self163921%_ 'state)))
        (let* ((_%g163924163938%_
                (lambda (_%g163925163935%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163925163935%_))))
               (_%g163923163987%_
                (lambda (_%g163925163941%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163925163941%_))
                      (let ((_%e163928163943%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163925163941%_))))
                        (let ((_%hd163929163946%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163928163943%_)))
                              (_%tl163930163948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163928163943%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163930163948%_))
                              (let ((_%e163931163951%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163930163948%_))))
                                (let ((_%hd163932163954%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163931163951%_)))
                                      (_%tl163933163956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163931163951%_))))
                                  ((lambda (_%g163926163959%_
                                            _%g163927163960%_)
                                     (let ((_%key163973%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g163927163960%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key163973%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx163922%_
                                              _%g163927163960%_
                                              _%key163973%_)))
                                       (let* ((_%ctx163975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g163927163960%_)))
                                              (_%code163978%_
                                               (let ((__tmp173066
                                                      (lambda ()
                                                        (let ((__tmp173067
                                                               (##structure-ref
                                                                _%ctx163975%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self163921%_
                                                           __tmp173067)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp173066
                                                  gx#current-expander-context
                                                  _%ctx163975%_)))
                                              (_%rt163980%_
                                               (let ((__tmp173068
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp173068
                                                  _%ctx163975%_)))
                                              (_%loader163982%_
                                               (if _%rt163980%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt163980%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid163984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g163927163960%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self163921%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid163984%_
                                                     (cons _%code163978%_
                                                           _%loader163982%_))))))
                                   _%tl163933163956%_
                                   _%hd163932163954%_)))
                              (_%g163924163938%_ _%g163925163941%_))))
                      (_%g163924163938%_ _%g163925163941%_)))))
          (_%g163923163987%_ _%stx163922%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx163908%_ _%context-chain163909%_)
        (let _%lp163911%_ ((_%ctx163913%_ _%ctx163908%_) (_%path163914%_ '()))
          (let ((_%super163916%_
                 (##structure-ref _%ctx163913%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super163916%_ _%context-chain163909%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx163913%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path163914%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super163916%_
                       'gx#module-context::t))
                    (_%lp163911%_
                     _%super163916%_
                     (cons (car (##structure-ref
                                 _%ctx163913%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path163914%_))
                    (cons (let ((__tmp173069
                                 (##structure-ref
                                  _%ctx163913%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp173069))
                          _%path163914%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp163901%_ ((_%ctx163903%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r163904%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx163903%_ 'gx#module-context::t))
              (_%lp163901%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx163903%_ '3 '#f '#f))
               (cons _%ctx163903%_ _%r163904%_))
              _%r163904%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self163666%_ _%stx163667%_)
        (letrec* ((_%context-chain163669%_ (gxc#current-context-chain))
                  (_%make-import-spec163670%_
                   (lambda (_%in163838%_)
                     (let* ((_%in163839163851%_ _%in163838%_)
                            (_%E163841163854%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in163839163851%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K163842163864%_
                             (lambda (_%phi163857%_
                                      _%name163858%_
                                      _%src-name163859%_
                                      _%src-phi163860%_
                                      _%src-key163861%_
                                      _%src-ctx163862%_)
                               (cons _%phi163857%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name163858%_)
                                           (cons _%src-phi163860%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name163859%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in163839163851%_
                              'gx#module-import::t))
                           (let ((_%e163843163867%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in163839163851%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e163843163867%_
                                    'gx#module-export::t))
                                 (let* ((_%e163846163870%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163843163867%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx163873%_ _%e163846163870%_)
                                        (_%e163847163875%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163843163867%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key163878%_ _%e163847163875%_)
                                        (_%e163848163880%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163843163867%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi163883%_ _%e163848163880%_)
                                        (_%e163849163885%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163843163867%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name163888%_ _%e163849163885%_)
                                        (_%e163844163890%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in163839163851%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name163893%_ _%e163844163890%_)
                                        (_%e163845163895%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in163839163851%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi163898%_ _%e163845163895%_))
                                   (_%K163842163864%_
                                    _%phi163898%_
                                    _%name163893%_
                                    _%src-name163888%_
                                    _%src-phi163883%_
                                    _%src-key163878%_
                                    _%src-ctx163873%_))
                                 (_%E163841163854%_)))
                           (_%E163841163854%_)))))
                  (_%make-import-path163671%_
                   (lambda (_%ctx163836%_)
                     (gxc#generate-meta-import-path
                      _%ctx163836%_
                      _%context-chain163669%_)))
                  (_%make-import-spec-in163672%_
                   (lambda (_%ctx163833%_ _%in163834%_)
                     (cons 'spec:
                           (cons (_%make-import-path163671%_ _%ctx163833%_)
                                 (reverse _%in163834%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self163666%_ 'state)))
          (let* ((_%g163674163684%_
                  (lambda (_%g163675163681%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163675163681%_))))
                 (_%g163673163830%_
                  (lambda (_%g163675163687%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163675163687%_))
                        (let ((_%e163677163689%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163675163687%_))))
                          (let ((_%hd163678163692%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163677163689%_)))
                                (_%tl163679163694%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163677163689%_))))
                            ((lambda (_%g163676163697%_)
                               (let _%lp163708%_ ((_%rest163710%_
                                                   _%g163676163697%_)
                                                  (_%current-src163711%_ '#f)
                                                  (_%current-in163712%_ '())
                                                  (_%r163713%_ '()))
                                 (let* ((_%rest163714163722%_ _%rest163710%_)
                                        (_%else163716163732%_
                                         (lambda ()
                                           (let ((_%r163730%_
                                                  (if _%current-src163711%_
                                                      (cons (_%make-import-spec-in163672%_
                                                             _%current-src163711%_
                                                             _%current-in163712%_)
                                                            _%r163713%_)
                                                      _%r163713%_)))
                                             (cons '%#import
                                                   (reverse _%r163730%_)))))
                                        (_%K163718163818%_
                                         (lambda (_%rest163735%_ _%in163736%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in163736%_
                                                  'gx#module-import::t))
                                               (let* ((_%in163738163745%_
                                                       _%in163736%_)
                                                      (_%E163740163748%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in163738163745%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K163741163756%_
               (lambda (_%src-ctx163751%_)
                 (if (eq? _%current-src163711%_ _%src-ctx163751%_)
                     (_%lp163708%_
                      _%rest163735%_
                      _%current-src163711%_
                      (cons (_%make-import-spec163670%_ _%in163736%_)
                            _%current-in163712%_)
                      _%r163713%_)
                     (if _%current-src163711%_
                         (_%lp163708%_
                          _%rest163735%_
                          _%src-ctx163751%_
                          (cons (_%make-import-spec163670%_ _%in163736%_) '())
                          (cons (_%make-import-spec-in163672%_
                                 _%current-src163711%_
                                 _%current-in163712%_)
                                _%r163713%_))
                         (_%lp163708%_
                          _%rest163735%_
                          _%src-ctx163751%_
                          (cons (_%make-import-spec163670%_ _%in163736%_) '())
                          _%r163713%_)))))
              (_%e163742163759%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in163738163745%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e163742163759%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e163743163762%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e163742163759%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx163765%_ _%e163743163762%_))
               (_%K163741163756%_ _%src-ctx163765%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E163740163748%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in163736%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi163768%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in163736%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src163770%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in163736%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in163810%_
                                                           (let* ((_%g163771163780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path163671%_ _%src163770%_))
                          (_%E163774163784%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g163771163780%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K163776163800%_
                            (lambda (_%path163798%_) _%path163798%_))
                           (_%K163775163790%_
                            (lambda (_%path163788%_)
                              (cons 'in: _%path163788%_))))
                       (if (pair? _%g163771163780%_)
                           (let ((_%tl163778163805%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g163771163780%_)))
                                 (_%hd163777163803%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g163771163780%_))))
                             (if (null? _%tl163778163805%_)
                                 (let ((_%path163808%_ _%hd163777163803%_))
                                   (_%K163776163800%_ _%path163808%_))
                                 (let ((_%path163793%_ _%g163771163780%_))
                                   (_%K163775163790%_ _%path163793%_))))
                           (let ((_%path163793%_ _%g163771163780%_))
                             (_%K163775163790%_ _%path163793%_))))))
                  (_%r163812%_
                   (if _%current-src163711%_
                       (cons (_%make-import-spec-in163672%_
                              _%current-src163711%_
                              _%current-in163712%_)
                             _%r163713%_)
                       _%r163713%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp163708%_
                                                      _%rest163735%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi163768%_)
                                                                _%src-in163810%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi163768%_
                                    (cons _%src-in163810%_ '()))))
                    _%r163812%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in163736%_
                                                          'gx#module-context::t))
                                                       (let ((_%r163816%_
                                                              (if _%current-src163711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in163672%_
                                 _%current-src163711%_
                                 _%current-in163712%_)
                                _%r163713%_)
                          _%r163713%_)))
                 (_%lp163708%_
                  _%rest163735%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path163671%_ _%in163736%_))
                        _%r163816%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest163714163722%_)
                                       (let ((_%hd163719163821%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest163714163722%_)))
                                             (_%tl163720163823%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest163714163722%_))))
                                         (let* ((_%in163826%_
                                                 _%hd163719163821%_)
                                                (_%rest163828%_
                                                 _%tl163720163823%_))
                                           (_%K163718163818%_
                                            _%rest163828%_
                                            _%in163826%_)))
                                       (_%else163716163732%_)))))
                             _%tl163679163694%_)))
                        (_%g163674163684%_ _%g163675163687%_)))))
            (_%g163673163830%_ _%stx163667%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self163476%_ _%stx163477%_)
        (letrec* ((_%context-chain163479%_ (gxc#current-context-chain))
                  (_%make-import-path163480%_
                   (lambda (_%ctx163664%_)
                     (gxc#generate-meta-import-path
                      _%ctx163664%_
                      _%context-chain163479%_))))
          (let* ((_%g163482163492%_
                  (lambda (_%g163483163489%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163483163489%_))))
                 (_%g163481163661%_
                  (lambda (_%g163483163495%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163483163495%_))
                        (let ((_%e163485163497%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163483163495%_))))
                          (let ((_%hd163486163500%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163485163497%_)))
                                (_%tl163487163502%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163485163497%_))))
                            ((lambda (_%g163484163505%_)
                               (let _%lp163516%_ ((_%rest163518%_
                                                   _%g163484163505%_)
                                                  (_%r163519%_ '()))
                                 (let* ((_%rest163520163528%_ _%rest163518%_)
                                        (_%else163522163536%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r163519%_))))
                                        (_%K163524163649%_
                                         (lambda (_%rest163539%_ _%out163540%_)
                                           (let* ((_%out163541163554%_
                                                   _%out163540%_)
                                                  (_%E163544163558%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out163541163554%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K163548163628%_
                                                    (lambda (_%name163624%_
                                                             _%phi163625%_
                                                             _%key163626%_)
                                                      (_%lp163516%_
                                                       _%rest163539%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi163625%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key163626%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name163624%_)
                                             '()))))
                     _%r163519%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K163545163608%_
                                                    (lambda (_%phi163562%_
                                                             _%src163563%_)
                                                      (let* ((_%out163603%_
                                                              (if _%src163563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g163564163573%_
                                              (_%make-import-path163480%_
                                               _%src163563%_))
                                             (_%E163567163577%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g163564163573%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K163569163593%_
                                               (lambda (_%path163591%_)
                                                 _%path163591%_))
                                              (_%K163568163583%_
                                               (lambda (_%path163581%_)
                                                 (cons 'in: _%path163581%_))))
                                          (if (pair? _%g163564163573%_)
                                              (let ((_%tl163571163598%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g163564163573%_)))
                                                    (_%hd163570163596%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g163564163573%_))))
                                                (if (null? _%tl163571163598%_)
                                                    (let ((_%path163601%_
                                                           _%hd163570163596%_))
                                                      (_%K163569163593%_
                                                       _%path163601%_))
                                                    (let ((_%path163586%_
                                                           _%g163564163573%_))
                                                      (_%K163568163583%_
                                                       _%path163586%_))))
                                              (let ((_%path163586%_
                                                     _%g163564163573%_))
                                                (_%K163568163583%_
                                                 _%path163586%_)))))
                                      '()))
                          '#t))
                     (_%out163605%_
                      (if (fxzero? _%phi163562%_)
                          _%out163603%_
                          (cons 'phi:
                                (cons _%phi163562%_
                                      (cons _%out163603%_ '()))))))
                (_%lp163516%_
                 _%rest163539%_
                 (cons _%out163605%_ _%r163519%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match163543163621%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out163541163554%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e163546163611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out163541163554%_
                               '1
                               '#f
                               '#f)))
                           (_%e163547163616%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out163541163554%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src163614%_ _%e163546163611%_)
                            (_%phi163619%_ _%e163547163616%_))
                        (_%K163545163608%_ _%phi163619%_ _%src163614%_)))
                    (_%E163544163558%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out163541163554%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e163549163631%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out163541163554%_
                        '1
                        '#f
                        '#f)))
                    (_%e163550163634%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163541163554%_
                        '2
                        '#f
                        '#f)))
                    (_%e163551163639%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163541163554%_
                        '3
                        '#f
                        '#f)))
                    (_%e163552163644%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163541163554%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key163637%_ _%e163550163634%_)
                     (_%phi163642%_ _%e163551163639%_)
                     (_%name163647%_ _%e163552163644%_))
                 (_%K163548163628%_
                  _%name163647%_
                  _%phi163642%_
                  _%key163637%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match163543163621%_))))))))
                                   (if (pair? _%rest163520163528%_)
                                       (let ((_%hd163525163652%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest163520163528%_)))
                                             (_%tl163526163654%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest163520163528%_))))
                                         (let* ((_%out163657%_
                                                 _%hd163525163652%_)
                                                (_%rest163659%_
                                                 _%tl163526163654%_))
                                           (_%K163524163649%_
                                            _%rest163659%_
                                            _%out163657%_)))
                                       (_%else163522163536%_)))))
                             _%tl163487163502%_)))
                        (_%g163482163492%_ _%g163483163495%_)))))
            (_%g163481163661%_ _%stx163477%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self163437%_ _%stx163438%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self163437%_ 'state)))
        (let* ((_%g163440163450%_
                (lambda (_%g163441163447%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163441163447%_))))
               (_%g163439163473%_
                (lambda (_%g163441163453%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163441163453%_))
                      (let ((_%e163443163455%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163441163453%_))))
                        (let ((_%hd163444163458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163443163455%_)))
                              (_%tl163445163460%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163443163455%_))))
                          ((lambda (_%g163442163463%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g163442163463%_)))
                           _%tl163445163460%_)))
                      (_%g163440163450%_ _%g163441163453%_)))))
          (_%g163439163473%_ _%stx163438%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self163312%_ _%stx163313%_)
        (letrec ((_%generate1163315%_
                  (lambda (_%id163432%_ _%eid163433%_)
                    (let ((_%eid163435%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid163433%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid163435%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx163313%_
                             _%eid163435%_)))
                      (cons (gxc#generate-runtime-identifier _%id163432%_)
                            (cons _%eid163435%_ '()))))))
          (let* ((_%g163317163345%_
                  (lambda (_%g163318163342%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163318163342%_))))
                 (_%g163316163429%_
                  (lambda (_%g163318163348%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163318163348%_))
                        (let ((_%e163321163350%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163318163348%_))))
                          (let ((_%hd163322163353%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163321163350%_)))
                                (_%tl163323163355%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163321163350%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl163323163355%_))
                                (let ((_g173070_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl163323163355%_
                                          '0))))
                                  (begin
                                    (let ((_g173071_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g173070_)
                                                 (##values-length _g173070_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g173071_ 2)))
                                          (error "Context expects 2 values"
                                                 _g173071_)))
                                    (let ((_%target163324163358%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173070_ 0)))
                                          (_%tl163326163360%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173070_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl163326163360%_))
                                          (letrec ((_%loop163327163363%_
                                                    (lambda (_%hd163325163366%_
                                                             _%eid163331163368%_
                                                             _%id163332163369%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd163325163366%_))
                                                          (let ((_%e163328163371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd163325163366%_))))
                    (let ((_%lp-hd163329163374%_
                           (let ()
                             (declare (not safe))
                             (##car _%e163328163371%_)))
                          (_%lp-tl163330163376%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e163328163371%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd163329163374%_))
                          (let ((_%e163335163379%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd163329163374%_))))
                            (let ((_%hd163336163382%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e163335163379%_)))
                                  (_%tl163337163384%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e163335163379%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl163337163384%_))
                                  (let ((_%e163338163387%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl163337163384%_))))
                                    (let ((_%hd163339163390%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e163338163387%_)))
                                          (_%tl163340163392%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e163338163387%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl163340163392%_))
                                          (_%loop163327163363%_
                                           _%lp-tl163330163376%_
                                           (cons _%hd163339163390%_
                                                 _%eid163331163368%_)
                                           (cons _%hd163336163382%_
                                                 _%id163332163369%_))
                                          (_%g163317163345%_
                                           _%g163318163348%_))))
                                  (_%g163317163345%_ _%g163318163348%_))))
                          (_%g163317163345%_ _%g163318163348%_))))
                  (let ((_%eid163333163395%_ (reverse _%eid163331163368%_))
                        (_%id163334163396%_ (reverse _%id163332163369%_)))
                    ((lambda (_%g163319163398%_ _%g163320163399%_)
                       (cons '%#extern
                             (map _%generate1163315%_
                                  (let ((__tmp173072
                                         (lambda (_%g163414163417%_
                                                  _%g163415163419%_)
                                           (cons _%g163414163417%_
                                                 _%g163415163419%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp173072
                                     '()
                                     _%g163320163399%_))
                                  (let ((__tmp173073
                                         (lambda (_%g163421163424%_
                                                  _%g163422163426%_)
                                           (cons _%g163421163424%_
                                                 _%g163422163426%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp173073
                                     '()
                                     _%g163319163398%_)))))
                     _%eid163333163395%_
                     _%id163334163396%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop163327163363%_
                                             _%target163324163358%_
                                             '()
                                             '()))
                                          (_%g163317163345%_
                                           _%g163318163348%_)))))
                                (_%g163317163345%_ _%g163318163348%_))))
                        (_%g163317163345%_ _%g163318163348%_)))))
            (_%g163316163429%_ _%stx163313%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self163101%_ _%stx163102%_)
        (letrec ((_%generate1163104%_
                  (lambda (_%id163306%_)
                    (let ((_%eid163308%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id163306%_)))
                          (_%ident163309%_
                           (gxc#generate-runtime-identifier _%id163306%_))
                          (_%props163310%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id163306%_))))
                      (cons '%#define-runtime
                            (cons _%ident163309%_
                                  (cons _%eid163308%_ _%props163310%_))))))
                 (_%generate*163105%_
                  (lambda (_%all163274%_)
                    (let* ((_%all163275163283%_ _%all163274%_)
                           (_%else163277163291%_
                            (lambda () (cons '%#begin _%all163274%_)))
                           (_%K163279163296%_
                            (lambda (_%one163294%_) _%one163294%_)))
                      (if (pair? _%all163275163283%_)
                          (let ((_%hd163280163299%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all163275163283%_)))
                                (_%tl163281163301%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all163275163283%_))))
                            (let ((_%one163304%_ _%hd163280163299%_))
                              (if (null? _%tl163281163301%_)
                                  (_%K163279163296%_ _%one163304%_)
                                  (_%else163277163291%_))))
                          (_%else163277163291%_))))))
          (let* ((_%g163107163124%_
                  (lambda (_%g163108163121%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163108163121%_))))
                 (_%g163106163271%_
                  (lambda (_%g163108163127%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163108163127%_))
                        (let ((_%e163111163129%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163108163127%_))))
                          (let ((_%hd163112163132%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163111163129%_)))
                                (_%tl163113163134%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163111163129%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl163113163134%_))
                                (let ((_%e163114163137%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl163113163134%_))))
                                  (let ((_%hd163115163140%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e163114163137%_)))
                                        (_%tl163116163142%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e163114163137%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl163116163142%_))
                                        (let ((_%e163117163145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl163116163142%_))))
                                          (let ((_%hd163118163148%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e163117163145%_)))
                                                (_%tl163119163150%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e163117163145%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl163119163150%_))
                                                ((lambda (_%g163109163153%_
                                                          _%g163110163154%_)
                                                   (let _%lp163170%_ ((_%rest163172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g163110163154%_)
                              (_%r163173%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx172808172809%_
                                                             _%rest163172%_)
                                                            (_%g163178163195%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx172808172809%_)))))
               (let ((_%__kont172810172811%_
                      (lambda (_%g163180163258%_)
                        (_%lp163170%_ _%g163180163258%_ _%r163173%_)))
                     (_%__kont172812172813%_
                      (lambda (_%g163185163231%_ _%g163186163232%_)
                        (_%lp163170%_
                         _%g163185163231%_
                         (cons (_%generate1163104%_ _%g163186163232%_)
                               _%r163173%_))))
                     (_%__kont172814172815%_
                      (lambda (_%g163190163207%_)
                        (_%generate*163105%_
                         (let ((__tmp173074
                                (cons (_%generate1163104%_ _%g163190163207%_)
                                      '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp173074 _%r163173%_)))))
                     (_%__kont172816172817%_
                      (lambda () (_%generate*163105%_ (reverse _%r163173%_)))))
                 (let ((_%g163176163218%_
                        (lambda ()
                          (let ((_%g163190163207%_ _%__stx172808172809%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g163190163207%_))
                                (_%__kont172814172815%_ _%g163190163207%_)
                                (_%__kont172816172817%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx172808172809%_))
                       (let ((_%e163181163247%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx172808172809%_))))
                         (let ((_%tl163183163252%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e163181163247%_)))
                               (_%hd163182163250%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e163181163247%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd163182163250%_))
                               (let ((_%e163184163255%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd163182163250%_))))
                                 (if (equal? _%e163184163255%_ '#f)
                                     (_%__kont172810172811%_
                                      _%tl163183163252%_)
                                     (_%__kont172812172813%_
                                      _%tl163183163252%_
                                      _%hd163182163250%_)))
                               (_%__kont172812172813%_
                                _%tl163183163252%_
                                _%hd163182163250%_))))
                       (let () (declare (not safe)) (_%g163176163218%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd163118163148%_
                                                 _%hd163115163140%_)
                                                (_%g163107163124%_
                                                 _%g163108163127%_))))
                                        (_%g163107163124%_
                                         _%g163108163127%_))))
                                (_%g163107163124%_ _%g163108163127%_))))
                        (_%g163107163124%_ _%g163108163127%_)))))
            (_%g163106163271%_ _%stx163102%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self162998%_ _%stx162999%_)
        (let* ((_%g163001163018%_
                (lambda (_%g163002163015%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163002163015%_))))
               (_%g163000163098%_
                (lambda (_%g163002163021%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163002163021%_))
                      (let ((_%e163005163023%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163002163021%_))))
                        (let ((_%hd163006163026%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163005163023%_)))
                              (_%tl163007163028%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163005163023%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163007163028%_))
                              (let ((_%e163008163031%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163007163028%_))))
                                (let ((_%hd163009163034%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163008163031%_)))
                                      (_%tl163010163036%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163008163031%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl163010163036%_))
                                      (let ((_%e163011163039%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl163010163036%_))))
                                        (let ((_%hd163012163042%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e163011163039%_)))
                                              (_%tl163013163044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e163011163039%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl163013163044%_))
                                              ((lambda (_%g163003163047%_
                                                        _%g163004163048%_)
                                                 (let* ((_%eid163063%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g163004163048%_)))
                                                        (_%phi163065%_
                                                         (let ((__tmp173075
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp173075 '1)))
                (_%block163067%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self162998%_ 'state))
                  _%phi163065%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g163070163077%_
                                                           (lambda (_%g163071163074%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g163071163074%_))))
                  (_%g163069163095%_
                   (lambda (_%g163071163080%_)
                     ((lambda (_%g163072163082%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self162998%_ 'state))
                         _%phi163065%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g163072163082%_
                                     (cons _%g163003163047%_ '())))))
                      _%g163071163080%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g163069163095%_
                                                      _%eid163063%_))
                                                   (if _%block163067%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block163067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%g163004163048%_)
                                             (cons _%eid163063%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%g163004163048%_)
                           (cons _%eid163063%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd163012163042%_
                                               _%hd163009163034%_)
                                              (_%g163001163018%_
                                               _%g163002163021%_))))
                                      (_%g163001163018%_ _%g163002163021%_))))
                              (_%g163001163018%_ _%g163002163021%_))))
                      (_%g163001163018%_ _%g163002163021%_)))))
          (_%g163000163098%_ _%stx162999%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self162930%_ _%stx162931%_)
        (let* ((_%g162933162950%_
                (lambda (_%g162934162947%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162934162947%_))))
               (_%g162932162995%_
                (lambda (_%g162934162953%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162934162953%_))
                      (let ((_%e162937162955%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162934162953%_))))
                        (let ((_%hd162938162958%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162937162955%_)))
                              (_%tl162939162960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162937162955%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162939162960%_))
                              (let ((_%e162940162963%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162939162960%_))))
                                (let ((_%hd162941162966%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162940162963%_)))
                                      (_%tl162942162968%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162940162963%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162942162968%_))
                                      (let ((_%e162943162971%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162942162968%_))))
                                        (let ((_%hd162944162974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162943162971%_)))
                                              (_%tl162945162976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162943162971%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162945162976%_))
                                              ((lambda (_%g162935162979%_
                                                        _%g162936162980%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%g162936162980%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g162935162979%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd162944162974%_
                                               _%hd162941162966%_)
                                              (_%g162933162950%_
                                               _%g162934162953%_))))
                                      (_%g162933162950%_ _%g162934162953%_))))
                              (_%g162933162950%_ _%g162934162953%_))))
                      (_%g162933162950%_ _%g162934162953%_)))))
          (_%g162932162995%_ _%stx162931%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self162927%_ _%stx162928%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self162927%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx162928%_)
        (gxc#generate-meta-define-values% _%self162927%_ _%stx162928%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self162924%_ _%stx162925%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self162924%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx162925%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp173077 (list)) (__tmp173076 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp173077
         '(src n open blocks)
         __tmp173076
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args162921%_
        (apply make-instance gxc#meta-state::t _%$args162921%_)))
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
      (lambda (_%self162907%_ _%ctx162908%_)
        (let ((_%self162911%_ _%self162907%_))
          (if (let ((__tmp173078
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self162911%_))))
                (declare (not safe))
                (##fx< '4 __tmp173078))
              (begin
                (let ((__tmp173079
                       (let ((__tmp173080
                              (##structure-ref
                               _%ctx162908%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp173080))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self162911%_
                   __tmp173079
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self162911%_ '1 '2 '#f '#f))
                (let ((__tmp173081
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self162911%_
                   __tmp173081
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self162911%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp173082
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self162911%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self162911%_
                       '4
                       __tmp173082))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp173084 (list)) (__tmp173083 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp173084
         '(ctx phi n code)
         __tmp173083
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args162782%_
        (apply make-instance gxc#meta-state-block::t _%$args162782%_)))
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
      (lambda (_%state162742%_ _%phi162743%_)
        (let* ((_%state162744162752%_ _%state162742%_)
               (_%E162746162755%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state162744162752%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K162747162764%_
                (lambda (_%open162758%_ _%n162759%_ _%src162760%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open162758%_ _%phi162743%_))
                      '#f
                      (let ((_%block-ref162762%_
                             (let ((__tmp173085 (number->string _%n162759%_)))
                               (declare (not safe))
                               (##string-append
                                _%src162760%_
                                '"~"
                                __tmp173085))))
                        (##structure-set!
                         _%state162742%_
                         (let () (declare (not safe)) (##fx+ _%n162759%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp173086
                               (let ((__tmp173087
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp173087
                                  _%phi162743%_
                                  _%n162759%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open162758%_ _%phi162743%_ __tmp173086))
                        _%block-ref162762%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state162744162752%_
                 'gxc#meta-state::t))
              (let* ((_%e162748162767%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162744162752%_
                         '1
                         '#f
                         '#f)))
                     (_%src162770%_ _%e162748162767%_)
                     (_%e162749162772%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162744162752%_
                         '2
                         '#f
                         '#f)))
                     (_%n162775%_ _%e162749162772%_)
                     (_%e162750162777%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162744162752%_
                         '3
                         '#f
                         '#f)))
                     (_%open162780%_ _%e162750162777%_))
                (_%K162747162764%_ _%open162780%_ _%n162775%_ _%src162770%_))
              (_%E162746162755%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state162736%_ _%phi162737%_ _%stx162738%_)
        (let ((_%block162740%_
               (let ((__tmp173088
                      (##structure-ref
                       _%state162736%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp173088 _%phi162737%_))))
          (##structure-set!
           _%block162740%_
           (cons _%stx162738%_
                 (##structure-ref
                  _%block162740%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state162730%_)
        (##structure-set!
         _%state162730%_
         (let ((__tmp173091
                (lambda (_%_162732%_ _%block162733%_ _%r162734%_)
                  (cons _%block162733%_ _%r162734%_)))
               (__tmp173090
                (##structure-ref _%state162730%_ '4 gxc#meta-state::t '#f))
               (__tmp173089
                (##structure-ref _%state162730%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp173091 __tmp173090 __tmp173089))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state162730%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state162683%_)
        (gxc#meta-state-end-phi! _%state162683%_)
        (let ((__tmp173093
               (lambda (_%block162685%_ _%r162686%_)
                 (let* ((_%block162687162696%_ _%block162685%_)
                        (_%E162689162699%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block162687162696%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K162690162707%_
                         (lambda (_%code162702%_
                                  _%n162703%_
                                  _%phi162704%_
                                  _%ctx162705%_)
                           (if (null? _%code162702%_)
                               _%r162686%_
                               (cons (cons _%ctx162705%_
                                           (cons _%phi162704%_
                                                 (cons _%n162703%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code162702%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r162686%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block162687162696%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e162691162710%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162687162696%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx162713%_ _%e162691162710%_)
                              (_%e162692162715%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162687162696%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi162718%_ _%e162692162715%_)
                              (_%e162693162720%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162687162696%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n162723%_ _%e162693162720%_)
                              (_%e162694162725%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162687162696%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code162728%_ _%e162694162725%_))
                         (_%K162690162707%_
                          _%code162728%_
                          _%n162723%_
                          _%phi162718%_
                          _%ctx162713%_))
                       (_%E162689162699%_)))))
              (__tmp173092
               (##structure-ref _%state162683%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp173093 '() __tmp173092))))
    (define gxc#collect-expression-refs
      (lambda (_%stx162679%_)
        (let ((_%ht162681%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht162681%_ _%stx162679%_)
          _%ht162681%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self162622%_ _%stx162623%_)
        (let* ((_%g162625162638%_
                (lambda (_%g162626162635%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162626162635%_))))
               (_%g162624162676%_
                (lambda (_%g162626162641%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162626162641%_))
                      (let ((_%e162628162643%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162626162641%_))))
                        (let ((_%hd162629162646%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162628162643%_)))
                              (_%tl162630162648%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162628162643%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162630162648%_))
                              (let ((_%e162631162651%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162630162648%_))))
                                (let ((_%hd162632162654%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162631162651%_)))
                                      (_%tl162633162656%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162631162651%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl162633162656%_))
                                      ((lambda (_%g162627162659%_)
                                         (let* ((_%bind162671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g162627162659%_)))
                                                (_%eid162673%_
                                                 (if _%bind162671%_
                                                     (##structure-ref
                                                      _%bind162671%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g162627162659%_))))
                                                (__tmp173094
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self162622%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp173094
                                            _%eid162673%_
                                            _%eid162673%_)))
                                       _%hd162632162654%_)
                                      (_%g162625162638%_ _%g162626162641%_))))
                              (_%g162625162638%_ _%g162626162641%_))))
                      (_%g162625162638%_ _%g162626162641%_)))))
          (_%g162624162676%_ _%stx162623%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self162549%_ _%stx162550%_)
        (let* ((_%g162552162569%_
                (lambda (_%g162553162566%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162553162566%_))))
               (_%g162551162619%_
                (lambda (_%g162553162572%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162553162572%_))
                      (let ((_%e162556162574%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162553162572%_))))
                        (let ((_%hd162557162577%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162556162574%_)))
                              (_%tl162558162579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162556162574%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162558162579%_))
                              (let ((_%e162559162582%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162558162579%_))))
                                (let ((_%hd162560162585%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162559162582%_)))
                                      (_%tl162561162587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162559162582%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162561162587%_))
                                      (let ((_%e162562162590%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162561162587%_))))
                                        (let ((_%hd162563162593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162562162590%_)))
                                              (_%tl162564162595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162562162590%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162564162595%_))
                                              ((lambda (_%g162554162598%_
                                                        _%g162555162599%_)
                                                 (let* ((_%bind162614%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g162555162599%_)))
                                                        (_%eid162616%_
                                                         (if _%bind162614%_
                                                             (##structure-ref
                                                              _%bind162614%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g162555162599%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp173095
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self162549%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp173095
                                                      _%eid162616%_
                                                      _%eid162616%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self162549%_
                                                      _%g162554162598%_))))
                                               _%hd162563162593%_
                                               _%hd162560162585%_)
                                              (_%g162552162569%_
                                               _%g162553162572%_))))
                                      (_%g162552162569%_ _%g162553162572%_))))
                              (_%g162552162569%_ _%g162553162572%_))))
                      (_%g162552162569%_ _%g162553162572%_)))))
          (_%g162551162619%_ _%stx162550%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self162506%_ _%stx162507%_)
        (let* ((_%g162509162519%_
                (lambda (_%g162510162516%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162510162516%_))))
               (_%g162508162546%_
                (lambda (_%g162510162522%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162510162522%_))
                      (let ((_%e162512162524%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162510162522%_))))
                        (let ((_%hd162513162527%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162512162524%_)))
                              (_%tl162514162529%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162512162524%_))))
                          ((lambda (_%g162511162532%_)
                             (let ((__tmp173096
                                    (lambda (_%g162541162543%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self162506%_
                                         _%g162541162543%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp173096 _%g162511162532%_)))
                           _%tl162514162529%_)))
                      (_%g162509162519%_ _%g162510162522%_)))))
          (_%g162508162546%_ _%stx162507%_))))
    (define gxc#count-values-single%
      (lambda (_%self162503%_ _%stx162504%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self162371%_ _%stx162372%_)
        (let* ((_%__stx172838172839%_ _%stx162372%_)
               (_%g162375162404%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172838172839%_)))))
          (let ((_%__kont172840172841%_
                 (lambda (_%g162377162470%_ _%g162378162471%_)
                   (length (let ((__tmp173097
                                  (lambda (_%g162492162495%_ _%g162493162497%_)
                                    (cons _%g162492162495%_
                                          _%g162493162497%_))))
                             (declare (not safe))
                             (__foldr1 __tmp173097 '() _%g162377162470%_)))))
                (_%__kont172844172845%_ (lambda () '#f)))
            (let ((_%__match172883172884%_
                   (lambda (_%e162379162416%_
                            _%hd162380162419%_
                            _%tl162381162421%_
                            _%e162382162424%_
                            _%hd162383162427%_
                            _%tl162384162429%_
                            _%e162385162432%_
                            _%hd162386162435%_
                            _%tl162387162437%_
                            _%e162388162440%_
                            _%hd162389162443%_
                            _%tl162390162445%_
                            _%__splice172842172843%_
                            _%target162391162448%_
                            _%tl162393162450%_)
                     (letrec ((_%loop162394162453%_
                               (lambda (_%hd162392162456%_
                                        _%rand162398162458%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd162392162456%_))
                                     (let ((_%e162395162460%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd162392162456%_))))
                                       (let ((_%lp-tl162397162465%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e162395162460%_)))
                                             (_%lp-hd162396162463%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e162395162460%_))))
                                         (_%loop162394162453%_
                                          _%lp-tl162397162465%_
                                          (cons _%lp-hd162396162463%_
                                                _%rand162398162458%_))))
                                     (let ((_%rand162399162468%_
                                            (reverse _%rand162398162458%_)))
                                       (let ((_%g162377162470%_
                                              _%rand162399162468%_)
                                             (_%g162378162471%_
                                              _%hd162389162443%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g162378162471%_
                                                'values))
                                             (_%__kont172840172841%_
                                              _%g162377162470%_
                                              _%g162378162471%_)
                                             (_%__kont172844172845%_))))))))
                       (_%loop162394162453%_ _%target162391162448%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx172838172839%_))
                  (let ((_%e162379162416%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx172838172839%_))))
                    (let ((_%tl162381162421%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e162379162416%_)))
                          (_%hd162380162419%_
                           (let ()
                             (declare (not safe))
                             (##car _%e162379162416%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl162381162421%_))
                          (let ((_%e162382162424%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl162381162421%_))))
                            (let ((_%tl162384162429%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e162382162424%_)))
                                  (_%hd162383162427%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e162382162424%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd162383162427%_))
                                  (let ((_%e162385162432%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd162383162427%_))))
                                    (let ((_%tl162387162437%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e162385162432%_)))
                                          (_%hd162386162435%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e162385162432%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd162386162435%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd162386162435%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl162387162437%_))
                                                  (let ((_%e162388162440%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl162387162437%_))))
                                                    (let ((_%tl162390162445%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e162388162440%_)))
                                                          (_%hd162389162443%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e162388162440%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl162390162445%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl162384162429%_))
                      (let ((_%__splice172842172843%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl162384162429%_
                                '0))))
                        (let ((_%tl162393162450%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172842172843%_ '1)))
                              (_%target162391162448%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172842172843%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl162393162450%_))
                              (_%__match172883172884%_
                               _%e162379162416%_
                               _%hd162380162419%_
                               _%tl162381162421%_
                               _%e162382162424%_
                               _%hd162383162427%_
                               _%tl162384162429%_
                               _%e162385162432%_
                               _%hd162386162435%_
                               _%tl162387162437%_
                               _%e162388162440%_
                               _%hd162389162443%_
                               _%tl162390162445%_
                               _%__splice172842172843%_
                               _%target162391162448%_
                               _%tl162393162450%_)
                              (_%__kont172844172845%_))))
                      (_%__kont172844172845%_))
                  (_%__kont172844172845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172844172845%_))
                                              (_%__kont172844172845%_))
                                          (_%__kont172844172845%_))))
                                  (_%__kont172844172845%_))))
                          (_%__kont172844172845%_))))
                  (_%__kont172844172845%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self162276%_ _%stx162277%_)
        (let* ((_%g162279162300%_
                (lambda (_%g162280162297%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162280162297%_))))
               (_%g162278162368%_
                (lambda (_%g162280162303%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162280162303%_))
                      (let ((_%e162284162305%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162280162303%_))))
                        (let ((_%hd162285162308%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162284162305%_)))
                              (_%tl162286162310%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162284162305%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162286162310%_))
                              (let ((_%e162287162313%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162286162310%_))))
                                (let ((_%hd162288162316%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162287162313%_)))
                                      (_%tl162289162318%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162287162313%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162289162318%_))
                                      (let ((_%e162290162321%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162289162318%_))))
                                        (let ((_%hd162291162324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162290162321%_)))
                                              (_%tl162292162326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162290162321%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl162292162326%_))
                                              (let ((_%e162293162329%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl162292162326%_))))
                                                (let ((_%hd162294162332%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e162293162329%_)))
                                                      (_%tl162295162334%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e162293162329%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl162295162334%_))
                                                      ((lambda (_%g162281162337%_
                                                                _%g162282162338%_
                                                                _%g162283162339%_)
                                                         (let ((_%c1162356162358%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self162276%_
                           _%g162282162338%_))))
                   (if _%c1162356162358%_
                       (let* ((_%c1162360%_ _%c1162356162358%_)
                              (_%c2162361162363%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self162276%_
                                  _%g162281162337%_))))
                         (if _%c2162361162363%_
                             (let ((_%c2162365%_ _%c2162361162363%_))
                               (if (fx= _%c1162360%_ _%c2162365%_)
                                   _%c1162360%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd162294162332%_
               _%hd162291162324%_
               _%hd162288162316%_)
              (_%g162279162300%_ _%g162280162303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g162279162300%_
                                               _%g162280162303%_))))
                                      (_%g162279162300%_ _%g162280162303%_))))
                              (_%g162279162300%_ _%g162280162303%_))))
                      (_%g162279162300%_ _%g162280162303%_)))))
          (_%g162278162368%_ _%stx162277%_))))))
